.class public Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "UdpSocketReceiver"

    .line 2
    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a([B)Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    .line 26
    array-length v2, p1

    const/16 v1, 0xa

    if-ge v1, v2, :cond_0

    .line 29
    new-array v1, v6, [B

    .line 30
    invoke-static {p1, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "CTP:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-array v1, v4, [B

    .line 34
    invoke-static {p1, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x6

    .line 36
    invoke-static {v1}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v1

    if-ltz v1, :cond_0

    add-int v4, v1, v3

    if-gt v4, v2, :cond_0

    .line 38
    new-array v5, v1, [B

    .line 39
    invoke-static {p1, v3, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;-><init>()V

    .line 45
    invoke-virtual {v1, v3}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    add-int/lit8 v3, v4, 0x4

    if-gt v3, v2, :cond_3

    .line 47
    new-array v5, v6, [B

    .line 48
    invoke-static {p1, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-static {v5}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v4

    if-ltz v4, :cond_3

    add-int v5, v3, v4

    if-gt v5, v2, :cond_3

    .line 53
    new-array v6, v4, [B

    .line 54
    invoke-static {p1, v3, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    if-ne v5, v2, :cond_3

    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errno"

    .line 64
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setErrorType(I)V

    const-string v2, "op"

    .line 65
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v2, "param"

    .line 67
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "param"

    .line 68
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 70
    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 71
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {v4, v0, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 85
    :cond_0
    :goto_1
    return-object v0

    .line 76
    :cond_1
    :try_start_1
    invoke-virtual {v1, v4}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 84
    invoke-virtual {v1, v7}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setErrorType(I)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    const/16 v1, 0x800

    .line 3
    new-array v1, v1, [B

    .line 4
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 6
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive udp message length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    array-length v2, v1

    if-lez v2, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 11
    new-array v2, v0, [B

    .line 12
    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-direct {p0, v2}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a([B)Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->dispatchNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    .line 25
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    const-string v1, "receive message is null or error."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    const-string v1, "udpSocket is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->dispatchDeviceConnectState(I)V

    .line 25
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->stopReceiver()V

    goto :goto_0
.end method


# virtual methods
.method public isReceiver()Z
    .locals 1

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive udp message start, isReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive udp error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive udp close, isReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    .line 2
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

.method public declared-synchronized stopReceiver()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    const-string v1, "stop receive udp message"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z
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
