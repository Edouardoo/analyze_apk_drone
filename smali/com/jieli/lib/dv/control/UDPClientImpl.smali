.class public Lcom/jieli/lib/dv/control/UDPClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/dv/control/IClient;
.implements Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final MSG_RECEIVED_DATA:I = 0x65

.field private static j:Ljava/lang/String;

.field private static k:Lcom/jieli/lib/dv/control/IClient;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Ljava/net/DatagramSocket;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

.field private g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->k:Lcom/jieli/lib/dv/control/IClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:I

    .line 7
    iput v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:I

    .line 15
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->a:Landroid/os/HandlerThread;

    .line 16
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Landroid/os/Handler;

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;)I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:I

    return v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;I)I
    .locals 0

    .prologue
    .line 3
    iput p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:I

    return p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;)Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .prologue
    .line 4
    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->b()V

    .line 50
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 52
    iput-object v3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 56
    iput-object v3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_4

    .line 61
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 64
    :goto_0
    iput-object v3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->a:Landroid/os/HandlerThread;

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    :cond_3
    iput-object v3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Landroid/os/Handler;

    return-void

    .line 63
    :cond_4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 72
    iput p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:I

    .line 73
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    .line 74
    sget-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/lang/String;

    const-string v1, "OnConnectStateListener is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    .line 79
    new-instance v2, Lcom/jieli/lib/dv/control/UDPClientImpl$d;

    invoke-direct {v2, p0, v0, p1}, Lcom/jieli/lib/dv/control/UDPClientImpl$d;-><init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;I)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .locals 6

    .prologue
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra.cmd.info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    if-eqz v0, :cond_6

    .line 9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    .line 10
    invoke-static {v0}, Lcom/jieli/lib/dv/control/ClientImpl;->getPackage(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 15
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 16
    invoke-direct {p0, v1, v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v2, 0x0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 23
    :goto_0
    if-eqz v0, :cond_3

    .line 26
    :try_start_2
    iget v2, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:I

    if-lez v2, :cond_3

    .line 27
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v3

    invoke-direct {v4, v3, v5, v0, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, v1, v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 20
    :catch_0
    move-exception v0

    const/4 v4, -0x1

    .line 22
    :try_start_4
    invoke-direct {p0, v1, v4}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 23
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, -0x1

    .line 34
    :try_start_5
    invoke-direct {p0, v1, v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v2, -0x1

    .line 37
    :try_start_6
    invoke-direct {p0, v1, v2}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 38
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 38
    :cond_3
    if-eqz v0, :cond_4

    .line 43
    :try_start_7
    iget v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No device\'s port is specified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No device IP is specified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cmdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/jieli/lib/dv/control/UDPClientImpl$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/UDPClientImpl$b;-><init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 71
    new-instance v2, Lcom/jieli/lib/dv/control/UDPClientImpl$c;

    invoke-direct {v2, p0, v0, p1}, Lcom/jieli/lib/dv/control/UDPClientImpl$c;-><init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/UDPClientImpl;)Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 5
    iput-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->c:Ljava/net/DatagramSocket;

    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(I)V

    .line 9
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->stopRunning()V

    .line 11
    iput-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/UDPClientImpl;I)V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/UDPClientImpl;)Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    return-object v0
.end method

.method static synthetic d(Lcom/jieli/lib/dv/control/UDPClientImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jieli/lib/dv/control/IClient;
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->k:Lcom/jieli/lib/dv/control/IClient;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/jieli/lib/dv/control/UDPClientImpl;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->k:Lcom/jieli/lib/dv/control/IClient;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-direct {v0, p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;-><init>(Landroid/content/Context;)V

    .line 5
    const-class v2, Lcom/jieli/lib/dv/control/IClient;

    invoke-static {v0, v2, v0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/IClient;

    sput-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->k:Lcom/jieli/lib/dv/control/IClient;

    .line 7
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->k:Lcom/jieli/lib/dv/control/IClient;

    return-object v0

    .line 7
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/UDPClientImpl;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->stopRunning()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/lib/dv/control/UDPClientImpl$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/jieli/lib/dv/control/UDPClientImpl$a;-><init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->i:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 15
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 12
    :pswitch_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a()V

    goto :goto_0

    .line 13
    :pswitch_1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->b()V

    goto :goto_0

    .line 14
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 1
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/16 v1, 0x67

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.cmd.info"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x64

    .line 7
    iput v0, v1, Landroid/os/Message;->what:I

    .line 8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
