.class Lcom/jieli/lib/stream/tools/Discovery$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/tools/Discovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/net/MulticastSocket;

.field private c:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;


# direct methods
.method constructor <init>(Ljava/net/MulticastSocket;)V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->a:Z

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->b:Ljava/net/MulticastSocket;

    .line 226
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->b:Ljava/net/MulticastSocket;

    .line 227
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->a:Z

    .line 235
    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/Discovery$a;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/Discovery$a;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->c:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    .line 231
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 240
    iput-boolean v6, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->a:Z

    .line 241
    invoke-static {}, Lcom/jieli/lib/stream/tools/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiverThread Running..."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->a:Z

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->b:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_4

    .line 244
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 245
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->b:Ljava/net/MulticastSocket;

    if-nez v0, :cond_2

    .line 259
    iput-boolean v5, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->a:Z

    .line 288
    :cond_1
    :goto_1
    invoke-static {}, Lcom/jieli/lib/stream/tools/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiverThread stop..."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 251
    iput-boolean v5, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->a:Z

    .line 252
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->c:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->c:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;->onFailure(Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 264
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 265
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {}, Lcom/jieli/lib/stream/tools/Discovery;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rcv Broadcast data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MSSDP_NOTIFY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 269
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v2, " "

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    invoke-static {}, Lcom/jieli/lib/stream/tools/Discovery;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discover: remoteIP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \ndeviceContent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->c:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->c:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    invoke-interface {v2, v1, v0}, Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_3
    invoke-static {}, Lcom/jieli/lib/stream/tools/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mRcvDatagramPacket.getAddress() is null!"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :cond_4
    invoke-static {}, Lcom/jieli/lib/stream/tools/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Receiver thread: socket is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iput-boolean v5, p0, Lcom/jieli/lib/stream/tools/Discovery$a;->a:Z

    goto/16 :goto_1
.end method
