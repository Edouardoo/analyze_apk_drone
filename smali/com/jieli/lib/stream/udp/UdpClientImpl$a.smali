.class Lcom/jieli/lib/stream/udp/UdpClientImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/udp/UdpClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/stream/udp/UdpClientImpl;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/udp/UdpClientImpl;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->a:Lcom/jieli/lib/stream/udp/UdpClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->b:Ljava/lang/String;

    .line 225
    iput p3, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->c:I

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->d:I

    .line 227
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 231
    const/4 v0, 0x0

    .line 234
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    iget v2, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->c:I

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    invoke-static {v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 235
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a()Ljava/net/DatagramSocket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_1
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a()Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->c:I

    invoke-static {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b(I)I

    .line 252
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->a:Lcom/jieli/lib/stream/udp/UdpClientImpl;

    invoke-static {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Lcom/jieli/lib/stream/udp/UdpClientImpl;)V

    .line 255
    iget-object v0, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->a:Lcom/jieli/lib/stream/udp/UdpClientImpl;

    invoke-static {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b(Lcom/jieli/lib/stream/udp/UdpClientImpl;)V

    .line 257
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->c()V

    .line 258
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Create udp socket success--------------"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v1

    .line 237
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 240
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 241
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 242
    invoke-static {v4}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(I)V

    .line 243
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UDP ERROR_CONNECTION_EXCEPTION------------"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUdpSocketClient is null. connectingTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 264
    iget v1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->d:I

    add-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->d:I

    .line 265
    iget v1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$a;->d:I

    const v2, 0xea60

    if-lt v1, v2, :cond_0

    .line 266
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(I)V

    goto :goto_0
.end method
