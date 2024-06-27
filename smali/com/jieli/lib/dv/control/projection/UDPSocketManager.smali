.class public Lcom/jieli/lib/dv/control/projection/UDPSocketManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;,
        Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static i:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;


# instance fields
.field private a:Ljava/net/DatagramSocket;

.field private b:Ljava/net/InetAddress;

.field private c:Ljava/lang/String;

.field private d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->e:I

    .line 3
    iput v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:I

    .line 10
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->createUDPSocket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->g:I

    return p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;[B)I
    .locals 1

    .prologue
    .line 2
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 3
    array-length v1, p1

    if-lez v1, :cond_3

    .line 5
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b:Ljava/net/InetAddress;

    const/16 v4, 0x8b6

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 6
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 25
    :goto_0
    return v0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->createUDPSocket(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_3

    .line 12
    iget-object v2, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 18
    iget v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->g:I

    .line 19
    iget v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->g:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 20
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->h:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;

    if-eqz v1, :cond_1

    .line 21
    invoke-interface {v1, v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;->onError(I)V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 25
    :cond_2
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a([B)I

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->e:I

    return p1
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:I

    return p1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/jieli/lib/dv/control/projection/UDPSocketManager;
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->i:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->i:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-direct {v0, p0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->i:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    .line 6
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->i:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

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
.method public createUDPSocket(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c:Ljava/lang/String;

    .line 8
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    :cond_0
    :goto_1
    return-void

    .line 3
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 10
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1
.end method

.method public initSendThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-direct {v0, p0, v2}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;-><init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;Z)Z

    .line 4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->start()V

    .line 12
    :cond_0
    :goto_0
    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-direct {v0, p0, v2}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;-><init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    .line 8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;Z)Z

    .line 9
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->start()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;Z)Z

    goto :goto_0
.end method

.method public isSendThreadRunning()Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    sput-object v1, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->i:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    .line 2
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->stopSendDataThread()V

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 5
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a:Ljava/net/DatagramSocket;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 8
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b:Ljava/net/InetAddress;

    :cond_1
    return-void
.end method

.method public setOnSocketErrorListener(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->h:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$OnSocketErrorListener;

    return-void
.end method

.method public stopSendDataThread()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    :cond_1
    return-void
.end method

.method public writeData(I[B)V
    .locals 11

    .prologue
    const/16 v10, 0x5ab

    const/4 v2, 0x0

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    array-length v0, p2

    if-lez v0, :cond_4

    .line 4
    array-length v5, p2

    .line 5
    rem-int/lit16 v0, v5, 0x5ab

    if-nez v0, :cond_1

    .line 6
    div-int/lit16 v0, v5, 0x5ab

    move v4, v0

    .line 8
    :goto_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 17
    :cond_0
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:I

    .line 18
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->f:I

    move v3, v0

    :goto_1
    if-lez v3, :cond_4

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_4

    mul-int/lit16 v6, v1, 0x5ab

    sub-int v7, v5, v6

    if-lt v7, v10, :cond_3

    .line 26
    new-array v0, v10, [B

    .line 27
    invoke-static {p2, v6, v0, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    :goto_3
    new-instance v7, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    invoke-direct {v7}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;-><init>()V

    .line 34
    invoke-virtual {v7, p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setType(I)V

    .line 35
    invoke-virtual {v7, v2}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSave(I)V

    .line 36
    invoke-virtual {v7, v3}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSeq(I)V

    .line 37
    invoke-virtual {v7, v5}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setFrameSize(I)V

    .line 38
    invoke-virtual {v7, v6}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setOffset(I)V

    .line 39
    invoke-virtual {v7, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayload([B)V

    .line 40
    array-length v0, v0

    invoke-virtual {v7, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayloadLen(I)V

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-virtual {v7, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setDateFlag(I)V

    .line 42
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->d:Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;

    invoke-static {v0, v7}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$b;Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 8
    :cond_1
    div-int/lit16 v0, v5, 0x5ab

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 15
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->e:I

    .line 16
    iget v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->e:I

    move v3, v0

    goto :goto_1

    .line 30
    :cond_3
    new-array v0, v7, [B

    .line 31
    invoke-static {p2, v6, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 42
    :cond_4
    return-void

    :cond_5
    move v3, v2

    goto :goto_1
.end method
