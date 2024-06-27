.class public Lcom/jieli/lib/dv/control/intercom/IntercomManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;
    }
.end annotation


# static fields
.field private static k:Lcom/jieli/lib/dv/control/intercom/IntercomManager;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/DatagramSocket;

.field private c:Ljava/net/InetAddress;

.field private d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

.field private e:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

.field private f:I

.field private g:I

.field private h:J

.field private i:I

.field private j:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IntercomManager"

    .line 2
    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->createClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->g:I

    return p1
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;[B)I
    .locals 1

    .prologue
    .line 2
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 5
    array-length v1, p1

    if-lez v1, :cond_2

    .line 7
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c:Ljava/net/InetAddress;

    const/16 v4, 0x8b7

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 8
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return v0

    .line 13
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    iget v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->g:I

    .line 15
    iget v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->g:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 16
    iget-object v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v1, :cond_0

    const-string v2, "Sending failed after try times"

    .line 17
    invoke-interface {v1, v0, v2}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a([B)I

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J
    .locals 2

    .prologue
    .line 3
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->j:J

    return-wide v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J
    .locals 1

    .prologue
    .line 4
    iput-wide p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->j:J

    return-wide p1
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->f:I

    return p1
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J
    .locals 1

    .prologue
    .line 3
    iput-wide p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->h:J

    return-wide p1
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)I
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->i:I

    return v0
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I
    .locals 0

    .prologue
    .line 2
    iput p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->i:I

    return p1
.end method

.method static synthetic d(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)I
    .locals 2

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->i:I

    return v0
.end method

.method static synthetic e(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->h:J

    return-wide v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->k:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->k:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-direct {v0, p0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->k:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    .line 6
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->k:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

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
.method public closeClient()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    sput-object v1, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->k:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    .line 2
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->stopSendDataThread()V

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 5
    iput-object v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Ljava/net/DatagramSocket;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 8
    iput-object v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c:Ljava/net/InetAddress;

    :cond_1
    return-void
.end method

.method public createClient(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :cond_0
    :goto_1
    return-void

    .line 3
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 9
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
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-direct {v0, p0, v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;-><init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;Z)Z

    .line 4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->start()V

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
    new-instance v0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-direct {v0, p0, v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;-><init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    .line 8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;Z)Z

    .line 9
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->start()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;Z)Z

    goto :goto_0
.end method

.method public isSendThreadRunning()Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send([B)V
    .locals 11

    .prologue
    const/16 v10, 0x5a8

    const/4 v3, 0x0

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 4
    array-length v4, p1

    .line 5
    rem-int/lit16 v0, v4, 0x5a8

    if-nez v0, :cond_0

    .line 6
    div-int/lit16 v0, v4, 0x5a8

    .line 10
    :goto_0
    iget v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->f:I

    .line 11
    iget v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->f:I

    if-lez v1, :cond_2

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_2

    mul-int/lit16 v5, v2, 0x5a8

    sub-int v6, v4, v5

    if-lt v6, v10, :cond_1

    .line 14
    new-array v1, v10, [B

    .line 15
    invoke-static {p1, v5, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    :goto_2
    new-instance v6, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    invoke-direct {v6}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;-><init>()V

    const/4 v7, 0x1

    .line 22
    invoke-virtual {v6, v7}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setType(I)V

    .line 23
    invoke-virtual {v6, v3}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSave(I)V

    .line 24
    iget v7, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->f:I

    invoke-virtual {v6, v7}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSeq(I)V

    .line 25
    invoke-virtual {v6, v4}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setFrameSize(I)V

    .line 26
    invoke-virtual {v6, v5}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setOffset(I)V

    .line 27
    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayload([B)V

    .line 28
    array-length v1, v1

    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayloadLen(I)V

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    long-to-int v1, v8

    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setDateFlag(I)V

    .line 30
    iget-object v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-static {v1, v6}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 8
    :cond_0
    div-int/lit16 v0, v4, 0x5a8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    new-array v1, v6, [B

    .line 19
    invoke-static {p1, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 30
    :cond_2
    return-void
.end method

.method public setOnSendStateListener(Lcom/jieli/lib/dv/control/projection/OnSendStateListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    return-void
.end method

.method public stopSendDataThread()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;->a()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d:Lcom/jieli/lib/dv/control/intercom/IntercomManager$b;

    :cond_1
    return-void
.end method
