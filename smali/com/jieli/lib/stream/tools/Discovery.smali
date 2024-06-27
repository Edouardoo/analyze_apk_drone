.class public Lcom/jieli/lib/stream/tools/Discovery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/stream/tools/Discovery$a;,
        Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/net/MulticastSocket;

.field private c:Ljava/net/InetAddress;

.field private d:Lcom/jieli/lib/stream/tools/Discovery$a;

.field private e:Landroid/os/HandlerThread;

.field private f:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

.field private g:Landroid/os/Handler;

.field private h:Ljava/net/ServerSocket;

.field private volatile i:I

.field private volatile j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/jieli/lib/stream/tools/Discovery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/stream/tools/Discovery;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "224.0.0.1"

    const/16 v1, 0xd05

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/stream/tools/Discovery;-><init>(Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 53
    const-string v0, "224.0.0.1"

    invoke-direct {p0, v0, p1}, Lcom/jieli/lib/stream/tools/Discovery;-><init>(Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    .line 34
    iput-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->d:Lcom/jieli/lib/stream/tools/Discovery$a;

    .line 45
    const/16 v0, 0xd05

    iput v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->i:I

    .line 46
    const-string v0, "224.0.0.1"

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->j:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/Discovery;->j:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/jieli/lib/stream/tools/Discovery;->i:I

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandlerThread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->e:Landroid/os/HandlerThread;

    .line 70
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/jieli/lib/stream/tools/Discovery$1;

    invoke-direct {v2, p0}, Lcom/jieli/lib/stream/tools/Discovery$1;-><init>(Lcom/jieli/lib/stream/tools/Discovery;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->g:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/Discovery;Lcom/jieli/lib/stream/tools/Discovery$a;)Lcom/jieli/lib/stream/tools/Discovery$a;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/Discovery;->d:Lcom/jieli/lib/stream/tools/Discovery$a;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/jieli/lib/stream/tools/Discovery;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/Discovery;)Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/Discovery;Ljava/net/MulticastSocket;)Ljava/net/MulticastSocket;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    return-object p1
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/Discovery;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/Discovery;->h:Ljava/net/ServerSocket;

    return-object p1
.end method

.method private declared-synchronized a([B)V
    .locals 4

    .prologue
    .line 186
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_2

    .line 187
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/Discovery;->a:Ljava/lang/String;

    const-string v1, "data is null."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->f:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->f:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    const-string v1, "data is null"

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_2
    :try_start_1
    sget-object v0, Lcom/jieli/lib/stream/tools/Discovery;->a:Ljava/lang/String;

    const-string v1, "start to send MSSDP..."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    iget-object v2, p0, Lcom/jieli/lib/stream/tools/Discovery;->c:Ljava/net/InetAddress;

    iget v3, p0, Lcom/jieli/lib/stream/tools/Discovery;->i:I

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 197
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    :try_start_2
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->f:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->f:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;->onFailure(Ljava/lang/String;)V

    .line 209
    :cond_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/Discovery;->b()V

    .line 201
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/jieli/lib/stream/tools/Discovery;)Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->h:Ljava/net/ServerSocket;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 139
    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    iget v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->i:I

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    .line 140
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 141
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 142
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->c:Ljava/net/InetAddress;

    .line 143
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->c:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/jieli/lib/stream/tools/Discovery;)Lcom/jieli/lib/stream/tools/Discovery$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->d:Lcom/jieli/lib/stream/tools/Discovery$a;

    return-object v0
.end method

.method static synthetic d(Lcom/jieli/lib/stream/tools/Discovery;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/jieli/lib/stream/tools/Discovery;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->e:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized discover()V
    .locals 4

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/jieli/lib/stream/tools/Discovery;->a:Ljava/lang/String;

    const-string v1, "mSocket is null..."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/Discovery;->b()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->d:Lcom/jieli/lib/stream/tools/Discovery$a;

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Lcom/jieli/lib/stream/tools/Discovery$a;

    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->b:Ljava/net/MulticastSocket;

    invoke-direct {v0, v1}, Lcom/jieli/lib/stream/tools/Discovery$a;-><init>(Ljava/net/MulticastSocket;)V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->d:Lcom/jieli/lib/stream/tools/Discovery$a;

    .line 172
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->d:Lcom/jieli/lib/stream/tools/Discovery$a;

    iget-object v1, p0, Lcom/jieli/lib/stream/tools/Discovery;->f:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/tools/Discovery$a;->a(Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;)V

    .line 173
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->d:Lcom/jieli/lib/stream/tools/Discovery$a;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/Discovery$a;->start()V

    .line 177
    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 179
    const-string v1, "MSSDP_SEARCH  MSG"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jieli/lib/stream/tools/Discovery;->a([B)V

    .line 180
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_2
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 214
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    :cond_0
    return-void
.end method

.method public setBroadcastIp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/Discovery;->j:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setOnDiscoverListener(Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/Discovery;->f:Lcom/jieli/lib/stream/tools/Discovery$OnDiscoverListener;

    .line 112
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/jieli/lib/stream/tools/Discovery;->i:I

    .line 58
    return-void
.end method
