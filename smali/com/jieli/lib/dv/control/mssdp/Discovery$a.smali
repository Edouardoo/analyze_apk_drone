.class Lcom/jieli/lib/dv/control/mssdp/Discovery$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/mssdp/Discovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/net/DatagramSocket;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field final synthetic e:Lcom/jieli/lib/dv/control/mssdp/Discovery;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/net/DatagramSocket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b:Ljava/net/DatagramSocket;

    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 2
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)Z
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    invoke-static {}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReceiverThread start..."

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x5000

    .line 5
    :try_start_0
    new-array v0, v0, [B

    .line 6
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 7
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 11
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 12
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v3}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const/4 v4, 0x2

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 19
    array-length v3, v0

    if-le v3, v6, :cond_6

    const/4 v3, 0x1

    .line 20
    aget-object v0, v0, v3

    .line 22
    :goto_1
    iget-object v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v3}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b(Lcom/jieli/lib/dv/control/mssdp/Discovery;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 23
    iget-object v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 24
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->d:Ljava/lang/String;

    .line 25
    iget-object v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v3, v2, v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 40
    iput-boolean v5, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Z

    .line 41
    iget-object v2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;ILjava/lang/String;)V

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 46
    iput-boolean v5, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Z

    .line 47
    invoke-static {}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReceiverThread stop..."

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    return-void

    .line 26
    :cond_3
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 27
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->d:Ljava/lang/String;

    .line 28
    iget-object v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v3, v2, v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30
    :cond_4
    invoke-static {}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Maybe data is repeat"

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_5
    iget-object v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v3, v2, v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Z

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->c:Ljava/util/Set;

    .line 3
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
