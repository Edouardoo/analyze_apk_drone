.class public Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final CTP:Ljava/lang/String; = "CTP:"

.field static tag:Ljava/lang/String;


# instance fields
.field private isReceiverTaskRunning:Z

.field private mHandlerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReceiveErrorTime:I

.field private mSocketWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->isReceiverTaskRunning:Z

    .line 3
    iput v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mSocketWeakReference:Ljava/lang/ref/WeakReference;

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private declared-synchronized onDataReceiver([B)V
    .locals 8

    .prologue
    const/4 v2, 0x6

    const/4 v7, 0x4

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    array-length v1, p1

    if-ge v1, v2, :cond_1

    .line 95
    :cond_0
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v1, "onDataReceiver:buffer == null || buffer.length <6"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    .line 1
    :cond_1
    const/4 v1, 0x0

    .line 8
    :try_start_1
    aget-byte v1, p1, v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_3

    .line 94
    :cond_2
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v1, "\'CTP:\' signature not match"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 16
    :cond_3
    :try_start_2
    new-instance v2, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {v2}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;-><init>()V

    const/4 v1, 0x4

    const/4 v3, 0x2

    .line 17
    invoke-static {p1, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 23
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 28
    new-array v4, v3, [B

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 29
    invoke-static {p1, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x6

    .line 37
    array-length v4, p1

    if-lt v4, v7, :cond_4

    const/4 v0, 0x4

    .line 38
    invoke-static {p1, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    :cond_4
    add-int/lit8 v3, v3, 0x4

    if-lez v0, :cond_7

    .line 45
    new-array v4, v0, [B

    const/4 v5, 0x0

    .line 46
    invoke-static {p1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "errno"

    .line 52
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setErrorType(I)V

    const-string v3, "op"

    .line 53
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v3, "param"

    .line 55
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "param"

    .line 56
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 59
    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 60
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {v5, v0, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 78
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 79
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v0, 0x105

    .line 80
    iput v0, v3, Landroid/os/Message;->what:I

    .line 81
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :try_start_5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 67
    :cond_6
    :try_start_7
    invoke-virtual {v2, v5}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 70
    :cond_7
    const/4 v0, 0x0

    .line 73
    :try_start_8
    invoke-virtual {v2, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {v2, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setErrorType(I)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {v2, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    goto :goto_2

    .line 86
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 89
    :cond_8
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v2, "HandlerWeakReference is null"

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v1, "Receiver thread is running..."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->isReceiverTaskRunning:Z

    .line 6
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->isReceiverTaskRunning:Z

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mSocketWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x4

    .line 13
    new-array v1, v1, [B

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-ne v2, v6, :cond_e

    const-string v2, "CTP:"

    .line 15
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 16
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;-><init>()V

    const/4 v2, 0x2

    .line 17
    new-array v2, v2, [B

    .line 18
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v8, :cond_d

    .line 20
    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v2

    .line 21
    new-array v3, v2, [B

    .line 22
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v2, :cond_c

    .line 24
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 26
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setTopic(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 27
    new-array v2, v2, [B

    .line 28
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 30
    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v2

    if-lez v2, :cond_8

    const/high16 v3, 0x500000

    if-ge v2, v3, :cond_8

    .line 32
    new-array v3, v2, [B

    .line 33
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_6

    .line 41
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errno"

    .line 42
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setErrorType(I)V

    const-string v0, "op"

    .line 43
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    const-string v0, "param"

    .line 45
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "param"

    .line 46
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 49
    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 50
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v4, v0, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    :goto_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 71
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v0, 0x105

    .line 72
    iput v0, v2, Landroid/os/Message;->what:I

    .line 73
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 76
    :try_start_4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 85
    :cond_0
    :goto_3
    const/4 v0, 0x0

    .line 87
    :try_start_5
    iput v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 112
    :cond_1
    :goto_4
    const-wide/16 v0, 0xa

    .line 114
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 57
    :cond_2
    :try_start_6
    invoke-virtual {v1, v4}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 89
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 92
    iget v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    .line 94
    iget v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 95
    iput v7, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    .line 96
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 97
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x101

    .line 98
    iput v0, v1, Landroid/os/Message;->what:I

    .line 99
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 101
    :try_start_7
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 106
    :cond_3
    :goto_5
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver error time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_4
    return-void

    .line 58
    :cond_5
    :try_start_8
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v2, "JSON_PARAM is null"

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 62
    :cond_6
    :try_start_9
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v2, "Payload empty"

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 63
    :cond_7
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v2, "Payload len error"

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 66
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroid/support/v4/util/ArrayMap;)V

    const/4 v0, 0x0

    .line 67
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setErrorType(I)V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setOperation(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 78
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 80
    :cond_9
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v1, "mHandlerWeakReference.get() is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 81
    :cond_a
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v1, "Content len error"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 82
    :cond_b
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v1, "topic is empty"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 83
    :cond_c
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v1, "Read topic len error"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 84
    :cond_d
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v1, "Topic len error"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 85
    :cond_e
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v1, "CTP content error"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 103
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 112
    :cond_f
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_4
.end method

.method public stopRunning()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->isReceiverTaskRunning:Z

    return-void
.end method
