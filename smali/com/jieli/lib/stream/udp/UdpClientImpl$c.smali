.class Lcom/jieli/lib/stream/udp/UdpClientImpl$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/udp/UdpClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 274
    iput-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->a:Z

    .line 275
    iput v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/lib/stream/udp/UdpClientImpl$1;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->a:Z

    .line 279
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->a:Z

    .line 284
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->a:Z

    if-eqz v0, :cond_2

    .line 285
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a()Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 287
    :try_start_0
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v0

    new-array v0, v0, [B

    .line 288
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 289
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 290
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 291
    if-lez v1, :cond_1

    .line 292
    new-array v2, v1, [B

    .line 293
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-static {v2}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a([B)V

    .line 296
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 300
    iget v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->b:I

    .line 301
    iget v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$c;->b:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 302
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(I)V

    .line 310
    :cond_2
    return-void

    .line 307
    :cond_3
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
