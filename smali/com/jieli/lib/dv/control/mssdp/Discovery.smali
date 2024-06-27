.class public Lcom/jieli/lib/dv/control/mssdp/Discovery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/mssdp/Discovery$a;,
        Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;
    }
.end annotation


# static fields
.field public static final BROADCAST_IP:Ljava/lang/String; = "255.255.255.255"

.field public static final BROADCAST_REPLY:Ljava/lang/String; = "MSSDP_NOTIFY"

.field public static final DISCOVERY_MSG:Ljava/lang/String; = "MSSDP_SEARCH "

.field public static final DISCOVERY_PORT:I = 0xf31

.field private static final l:Ljava/lang/String; = "Discovery"

.field private static m:Lcom/jieli/lib/dv/control/mssdp/Discovery;


# instance fields
.field private a:Ljava/net/DatagramSocket;

.field private b:Ljava/net/InetAddress;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf31

    .line 2
    iput v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:I

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->g:I

    const-string v0, "MSSDP_SEARCH "

    .line 7
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->j:Ljava/lang/String;

    const-string v0, "MSSDP_NOTIFY"

    .line 8
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->k:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)Lcom/jieli/lib/dv/control/mssdp/Discovery$a;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 6
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;->onDiscovery(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized a([B)V
    .locals 4

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 14
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    iget-object v2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b:Ljava/net/InetAddress;

    iget v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:I

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 15
    iget-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 19
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 2
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:I

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/net/DatagramSocket;

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/mssdp/Discovery;)Z
    .locals 1

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->h:Z

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 21
    :goto_0
    return-object v0

    .line 8
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v2, Lcom/jieli/lib/dv/control/mssdp/Discovery;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private d()Ljava/net/InetAddress;
    .locals 6

    .prologue
    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 4
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 7
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wlan0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "eth0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ap0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    :cond_2
    sget-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current IP Address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lcom/jieli/lib/dv/control/mssdp/Discovery;
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->m:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/jieli/lib/dv/control/mssdp/Discovery;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->m:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;-><init>()V

    sput-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->m:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    .line 6
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->m:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized doDiscovery()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->i:Ljava/lang/String;

    const/16 v1, 0xf31

    const-string v2, "MSSDP_SEARCH "

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->doDiscovery(ILjava/lang/String;Ljava/lang/String;)V
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

.method public declared-synchronized doDiscovery(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    monitor-enter p0

    if-ltz p1, :cond_0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:I

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iput-object p2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->i:Ljava/lang/String;

    .line 8
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->j:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iput-object p3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->j:Ljava/lang/String;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/net/DatagramSocket;

    if-nez v0, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b()V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    :cond_4
    new-instance v0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/net/DatagramSocket;

    invoke-direct {v0, p0, v1}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;-><init>(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/net/DatagramSocket;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    .line 17
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->start()V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 21
    :goto_0
    iget v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->g:I

    if-ge v0, v1, :cond_6

    .line 22
    iget-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a([B)V

    .line 23
    iget v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    monitor-exit p0

    return-void

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:I

    return v0
.end method

.method public getRepeatNumber()I
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->g:I

    return v0
.end method

.method public isFilter()Z
    .locals 1

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->h:Z

    return v0
.end method

.method public registerOnDiscoveryListener(Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;)Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/util/Set;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    sput-object v1, Lcom/jieli/lib/dv/control/mssdp/Discovery;->m:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 5
    iput-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/net/DatagramSocket;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b(Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)V

    .line 9
    iput-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    .line 11
    :cond_1
    iput-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b:Ljava/net/InetAddress;

    .line 12
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 14
    iput-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/util/Set;

    :cond_2
    return-void
.end method

.method public setBroadCastFlag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setFilter(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->h:Z

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .prologue
    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:I

    :cond_0
    return-void
.end method

.method public setRepeatNumber(I)V
    .locals 0

    .prologue
    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->g:I

    :cond_0
    return-void
.end method

.method public unregisterOnDiscoveryListener(Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;)Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
