.class public final Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;
.super Lcom/jieli/lib/dv/control/projection/protocol/BaseStreaming;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/Socket;

.field private volatile c:Ljava/io/OutputStream;

.field private d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

.field private e:I

.field private f:I

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/projection/protocol/BaseStreaming;-><init>()V

    .line 2
    const-class v0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    .line 7
    iput v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->e:I

    .line 8
    iput v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->f:I

    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    .line 15
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 19
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 25
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    :cond_0
    :goto_1
    return-void

    .line 21
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 27
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    const-string v2, "Create socket failure"

    .line 31
    invoke-interface {v0, v1, v2}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private a([B)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "Successful"

    .line 13
    invoke-interface {v0, v1, v2}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    .line 18
    :cond_0
    :goto_1
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a:Ljava/lang/String;

    const-string v1, "fail to send data"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    if-eqz v0, :cond_0

    const-string v1, "Socket maybe has been closed"

    .line 18
    invoke-interface {v0, v3, v1}, Lcom/jieli/lib/dv/control/projection/OnSendStateListener;->onState(ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :try_start_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    .line 17
    :try_start_4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 22
    :try_start_5
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    move-object v0, p0

    :goto_2
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    .line 48
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 50
    :goto_3
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    .line 56
    monitor-exit p0

    return-void

    .line 7
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 19
    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 24
    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 26
    :try_start_8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_5

    .line 28
    :try_start_9
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 30
    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 33
    :try_start_a
    iput-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    move-object v0, p0

    goto :goto_2

    .line 30
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 23
    :catchall_1
    move-exception v0

    .line 34
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_6

    .line 36
    :try_start_b
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 38
    :cond_6
    :goto_5
    const/4 v1, 0x0

    .line 41
    :try_start_c
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->c:Ljava/io/OutputStream;

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->b:Ljava/net/Socket;

    .line 43
    throw v0

    .line 38
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3
.end method

.method public create(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/16 v0, 0x8b6

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->create(Ljava/lang/String;I)V

    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming$a;-><init>(Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 30
    :goto_0
    return v2

    .line 4
    :cond_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    const/4 v1, 0x2

    if-eq v3, v1, :cond_1

    const/4 v1, 0x3

    if-ne v3, v1, :cond_2

    .line 12
    :cond_1
    iget v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->f:I

    .line 13
    iget v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->f:I

    .line 18
    :goto_1
    new-instance v4, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    invoke-direct {v4}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;-><init>()V

    .line 19
    invoke-virtual {v4, v3}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setType(I)V

    .line 20
    invoke-virtual {v4, v2}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSave(I)V

    .line 21
    invoke-virtual {v4, v1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setSeq(I)V

    .line 22
    array-length v1, v0

    invoke-virtual {v4, v1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setFrameSize(I)V

    .line 23
    invoke-virtual {v4, v2}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setOffset(I)V

    .line 24
    invoke-virtual {v4, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayload([B)V

    .line 25
    array-length v0, v0

    invoke-virtual {v4, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setPayloadLen(I)V

    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->setDateFlag(I)V

    .line 27
    invoke-static {v4}, Lcom/jieli/lib/dv/control/projection/tools/Utils;->mergeDataPacket(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)[B

    move-result-object v0

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->a([B)V

    .line 30
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5
    :cond_2
    const/4 v1, 0x1

    if-ne v3, v1, :cond_3

    .line 10
    iget v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->e:I

    .line 11
    iget v1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->e:I

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public send(I[B)Z
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 6
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iput v2, v1, Landroid/os/Message;->what:I

    .line 8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setOnSendStateListener(Lcom/jieli/lib/dv/control/projection/OnSendStateListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/protocol/TcpStreaming;->d:Lcom/jieli/lib/dv/control/projection/OnSendStateListener;

    return-void
.end method
