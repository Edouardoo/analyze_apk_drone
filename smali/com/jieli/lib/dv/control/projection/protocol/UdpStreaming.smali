.class public final Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;
.super Lcom/jieli/lib/dv/control/projection/protocol/BaseStreaming;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/net/DatagramSocket;

.field private e:Ljava/net/InetAddress;

.field private f:I

.field private g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/projection/protocol/BaseStreaming;-><init>()V

    .line 2
    const-class v0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->a:Ljava/lang/String;

    .line 4
    iput v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->b:I

    .line 5
    iput v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->c:I

    return-void
.end method

.method private a([B)V
    .locals 4

    .prologue
    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-lez v0, :cond_2

    .line 2
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->e:Ljava/net/InetAddress;

    iget v3, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->f:I

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 5
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_1
    return-void

    .line 8
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    const/4 v1, -0x1

    const-string v2, "Socket was destroy"

    invoke-interface {v0, v1, v2}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->a:Ljava/lang/String;

    const-string v1, "data maybe is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(I[B)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/16 v9, 0x5ab

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 21
    array-length v0, p2

    if-lez v0, :cond_6

    .line 24
    array-length v6, p2

    .line 25
    rem-int/lit16 v0, v6, 0x5ab

    if-nez v0, :cond_2

    .line 26
    div-int/lit16 v0, v6, 0x5ab

    move v5, v0

    .line 28
    :goto_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 37
    :cond_0
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->c:I

    .line 38
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->c:I

    move v4, v0

    :goto_1
    if-lez v4, :cond_6

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_5

    mul-int/lit16 v7, v3, 0x5ab

    sub-int v8, v6, v7

    if-lt v8, v9, :cond_4

    .line 46
    new-array v0, v9, [B

    .line 47
    invoke-static {p2, v7, v0, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    :goto_3
    new-instance v8, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    invoke-direct {v8}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;-><init>()V

    .line 54
    invoke-virtual {v8, p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setType(I)V

    .line 55
    invoke-virtual {v8, v2}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSave(I)V

    .line 56
    invoke-virtual {v8, v4}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSeq(I)V

    .line 57
    invoke-virtual {v8, v6}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setFrameSize(I)V

    .line 58
    invoke-virtual {v8, v7}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setOffset(I)V

    .line 59
    invoke-virtual {v8, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayload([B)V

    .line 60
    array-length v0, v0

    invoke-virtual {v8, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayloadLen(I)V

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    long-to-int v0, v10

    invoke-virtual {v8, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setDateFlag(I)V

    .line 62
    invoke-static {v8}, Lcom/jieli/lib/dv/control/projection/tools/Utils;->mergeDataPacket(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->a([B)V

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 28
    :cond_2
    div-int/lit16 v0, v6, 0x5ab

    add-int/lit8 v0, v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_7

    .line 35
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->b:I

    .line 36
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->b:I

    move v4, v0

    goto :goto_1

    .line 50
    :cond_4
    new-array v0, v8, [B

    .line 51
    invoke-static {p2, v7, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_5
    move v0, v1

    .line 64
    :goto_4
    return v0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v4, v2

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->e:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->e:Ljava/net/InetAddress;

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public create(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/16 v0, 0x8b6

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->create(Ljava/lang/String;I)V

    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2
    iput p2, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->f:I

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->d:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_0
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->e:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    :goto_1
    return-void

    .line 10
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 16
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination IP is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(I[B)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->a(I[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v1, :cond_0

    const-string v2, "Successful"

    .line 3
    invoke-interface {v1, v0, v2}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    .line 8
    :cond_0
    :goto_0
    return v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    const-string v2, "Failed: data incorrect"

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSendStateListener(Lcom/jieli/lib/dv/control/projection/OnSendStateListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/UdpStreaming;->g:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    return-void
.end method
