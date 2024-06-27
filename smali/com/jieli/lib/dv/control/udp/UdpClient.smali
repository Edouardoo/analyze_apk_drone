.class public Lcom/jieli/lib/dv/control/udp/UdpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final UDP_CLIENT_PORT:I = 0x8b4

.field private static h:Ljava/lang/String; = "UdpClient"

.field private static i:Lcom/jieli/lib/dv/control/udp/UdpClient;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Ljava/net/DatagramSocket;

.field private d:Ljava/net/InetAddress;

.field private e:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/jieli/lib/dv/control/udp/UdpClient$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/udp/UdpClient$a;-><init>(Lcom/jieli/lib/dv/control/udp/UdpClient;Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 5

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/jieli/lib/dv/control/ClientImpl;->getPackage(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, p2, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :goto_0
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Ljava/net/DatagramSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 8
    :try_start_2
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    iget-object v3, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->d:Ljava/net/InetAddress;

    iget v4, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->g:I

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 10
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p2, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0, p2, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 17
    :cond_2
    const/4 v0, -0x1

    .line 19
    :try_start_4
    invoke-direct {p0, p2, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/jieli/lib/dv/control/udp/UdpClient;
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->i:Lcom/jieli/lib/dv/control/udp/UdpClient;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/jieli/lib/dv/control/udp/UdpClient;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->i:Lcom/jieli/lib/dv/control/udp/UdpClient;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/udp/UdpClient;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;-><init>()V

    sput-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->i:Lcom/jieli/lib/dv/control/udp/UdpClient;

    .line 6
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->i:Lcom/jieli/lib/dv/control/udp/UdpClient;

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
.method public closeClient(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sput-object v3, Lcom/jieli/lib/dv/control/udp/UdpClient;->i:Lcom/jieli/lib/dv/control/udp/UdpClient;

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->isReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->stopReceiver()V

    .line 6
    :cond_0
    iput-object v3, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 10
    iput-object v3, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Ljava/net/DatagramSocket;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_6

    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 17
    :goto_0
    iput-object v3, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Landroid/os/HandlerThread;

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 21
    :cond_4
    iput-object v3, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Landroid/os/Handler;

    if-eqz p1, :cond_5

    .line 23
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->release()V

    :cond_5
    return-void

    .line 16
    :cond_6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0
.end method

.method public createClient(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->h:Ljava/lang/String;

    const-string v1, "address is null."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->h:Ljava/lang/String;

    const-string v1, "create udp channel."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput p2, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->g:I

    .line 7
    iput-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->f:Ljava/lang/String;

    .line 10
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->d:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :goto_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->d:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->h:Ljava/lang/String;

    const-string v1, "init udp channel ok."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->isReceiver()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23
    :cond_2
    new-instance v0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->c:Ljava/net/DatagramSocket;

    invoke-direct {v0, v1}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;-><init>(Ljava/net/DatagramSocket;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    .line 24
    sget-object v0, Lcom/jieli/lib/dv/control/udp/UdpClient;->h:Ljava/lang/String;

    const-string v1, "start Receiver thread ok."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->e:Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->start()V

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/jieli/lib/dv/control/udp/UdpClient;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Landroid/os/HandlerThread;

    .line 30
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Landroid/os/Handler;

    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1

    .line 17
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_2
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->g:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x204

    if-eq v0, v1, :cond_1

    .line 9
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "extra.cmd.info"

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    goto :goto_0
.end method

.method public registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->addConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)Z

    return-void
.end method

.method public registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->addNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)Z

    return-void
.end method

.method public send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    const/16 v2, 0x204

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 13
    :goto_0
    return-void

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.cmd.info"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 11
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iput v2, v1, Landroid/os/Message;->what:I

    .line 13
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->removeConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)Z

    return-void
.end method

.method public unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->removeNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)Z

    return-void
.end method
