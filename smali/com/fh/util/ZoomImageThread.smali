.class public Lcom/fh/util/ZoomImageThread;
.super Ljava/lang/Thread;
.source "ZoomImageThread.java"


# static fields
.field public static final ERROR_RAW_DATA_EMPTY:I = 0x630

.field public static final ERROR_ZOOM_DATA_EXCEPTION:I = 0x631

.field public static final NO_ERROR_END_FLAG:I = 0x62c


# instance fields
.field private canFinish:Z

.field private volatile isStopThread:Z

.field private volatile isThreadActive:Z

.field private volatile isWaiting:Z

.field private final mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/fh/beans/StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private zoomHeight:I

.field private zoomResultCallBack:Lcom/jieli/lib/stream/udp/IActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lcom/fh/beans/StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private zoomWidth:I


# direct methods
.method public constructor <init>(IILcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 2
    .param p1, "zoomWidth"    # I
    .param p2, "zoomHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lcom/fh/beans/StreamInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "listener":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Lcom/fh/beans/StreamInfo;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fh/util/ZoomImageThread;->canFinish:Z

    .line 33
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fh/util/ZoomImageThread;->mMainHandler:Landroid/os/Handler;

    .line 35
    iput p1, p0, Lcom/fh/util/ZoomImageThread;->zoomWidth:I

    .line 36
    iput p2, p0, Lcom/fh/util/ZoomImageThread;->zoomHeight:I

    .line 37
    iput-object p3, p0, Lcom/fh/util/ZoomImageThread;->zoomResultCallBack:Lcom/jieli/lib/stream/udp/IActionListener;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/fh/util/ZoomImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/fh/util/ZoomImageThread;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fh/util/ZoomImageThread;->zoomResultCallBack:Lcom/jieli/lib/stream/udp/IActionListener;

    return-object v0
.end method

.method private notifyErrorEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fh/util/ZoomImageThread;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/fh/util/ZoomImageThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fh/util/ZoomImageThread$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/fh/util/ZoomImageThread$2;-><init>(Lcom/fh/util/ZoomImageThread;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    :cond_0
    return-void
.end method

.method private notifyResult(Lcom/fh/beans/StreamInfo;)V
    .locals 2
    .param p1, "data"    # Lcom/fh/beans/StreamInfo;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fh/util/ZoomImageThread;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/fh/util/ZoomImageThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fh/util/ZoomImageThread$1;

    invoke-direct {v1, p0, p1}, Lcom/fh/util/ZoomImageThread$1;-><init>(Lcom/fh/util/ZoomImageThread;Lcom/fh/beans/StreamInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public addData(Lcom/fh/beans/StreamInfo;)Z
    .locals 5
    .param p1, "data"    # Lcom/fh/beans/StreamInfo;

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-boolean v2, p0, Lcom/fh/util/ZoomImageThread;->isStopThread:Z

    if-eqz v2, :cond_0

    .line 54
    :goto_0
    return v1

    .line 43
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 44
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++++++++++++++++\u62e5\u6709\u7684\u6570\u91cf:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iget-boolean v1, p0, Lcom/fh/util/ZoomImageThread;->isWaiting:Z

    if-eqz v1, :cond_1

    .line 50
    iget-object v2, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v2

    .line 51
    :try_start_1
    iget-object v1, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 52
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 76
    iget-object v7, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v7

    .line 77
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/fh/util/ZoomImageThread;->canFinish:Z

    .line 78
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/fh/util/ZoomImageThread;->isThreadActive:Z

    if-eqz v6, :cond_1

    .line 79
    iget-object v6, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    .line 81
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, p0, Lcom/fh/util/ZoomImageThread;->isWaiting:Z

    .line 82
    iget-boolean v6, p0, Lcom/fh/util/ZoomImageThread;->isStopThread:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 131
    :cond_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    const/16 v6, 0x62c

    const-string v7, "end_flag"

    invoke-direct {p0, v6, v7}, Lcom/fh/util/ZoomImageThread;->notifyErrorEvent(ILjava/lang/String;)V

    .line 133
    iput-boolean v10, p0, Lcom/fh/util/ZoomImageThread;->isWaiting:Z

    .line 134
    iput-boolean v10, p0, Lcom/fh/util/ZoomImageThread;->isThreadActive:Z

    .line 135
    iget-object v6, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v6, :cond_2

    .line 136
    iget-object v6, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 138
    :cond_2
    return-void

    .line 86
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 92
    :cond_4
    const/4 v6, 0x0

    :try_start_5
    iput-boolean v6, p0, Lcom/fh/util/ZoomImageThread;->isWaiting:Z

    .line 93
    iget-object v6, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fh/beans/StreamInfo;

    .line 94
    .local v4, "rawDataInfo":Lcom/fh/beans/StreamInfo;
    const-string v6, "52gggg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5269\u4e0b\u7684\u6570\u91cf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v6, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    const/16 v8, 0x32

    if-le v6, v8, :cond_5

    .line 96
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fh/util/ZoomImageThread;->canFinish:Z

    .line 98
    :cond_5
    iget-boolean v6, p0, Lcom/fh/util/ZoomImageThread;->canFinish:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 99
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/fh/util/ZoomImageThread;->notifyResult(Lcom/fh/beans/StreamInfo;)V

    .line 101
    :cond_6
    if-eqz v4, :cond_9

    .line 102
    invoke-virtual {v4}, Lcom/fh/beans/StreamInfo;->getData()[B

    move-result-object v3

    .line 103
    .local v3, "rawData":[B
    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v4}, Lcom/fh/beans/StreamInfo;->getType()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_8

    .line 106
    iget v6, p0, Lcom/fh/util/ZoomImageThread;->zoomWidth:I

    iget v8, p0, Lcom/fh/util/ZoomImageThread;->zoomHeight:I

    invoke-static {v3, v6, v8}, Lcom/fh/hdutil/BitmapUtil;->zoomImg([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    .local v1, "dscDataBmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7

    .line 109
    invoke-static {v1}, Lcom/fh/hdutil/BitmapUtil;->bitmapCompress(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 111
    .local v0, "descData":[B
    new-instance v5, Lcom/fh/beans/StreamInfo;

    invoke-virtual {v4}, Lcom/fh/beans/StreamInfo;->getType()I

    move-result v6

    iget v8, p0, Lcom/fh/util/ZoomImageThread;->zoomWidth:I

    iget v9, p0, Lcom/fh/util/ZoomImageThread;->zoomHeight:I

    invoke-direct {v5, v6, v8, v9, v0}, Lcom/fh/beans/StreamInfo;-><init>(III[B)V

    .line 117
    .local v5, "streamInfo":Lcom/fh/beans/StreamInfo;
    invoke-direct {p0, v5}, Lcom/fh/util/ZoomImageThread;->notifyResult(Lcom/fh/beans/StreamInfo;)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "descData":[B
    .end local v5    # "streamInfo":Lcom/fh/beans/StreamInfo;
    :cond_7
    const/16 v6, 0x631

    const-string v8, "zoom data has exception."

    invoke-direct {p0, v6, v8}, Lcom/fh/util/ZoomImageThread;->notifyErrorEvent(ILjava/lang/String;)V

    .line 120
    invoke-direct {p0, v4}, Lcom/fh/util/ZoomImageThread;->notifyResult(Lcom/fh/beans/StreamInfo;)V

    goto/16 :goto_0

    .line 123
    .end local v1    # "dscDataBmp":Landroid/graphics/Bitmap;
    :cond_8
    invoke-direct {p0, v4}, Lcom/fh/util/ZoomImageThread;->notifyResult(Lcom/fh/beans/StreamInfo;)V

    goto/16 :goto_0

    .line 127
    .end local v3    # "rawData":[B
    :cond_9
    const/16 v6, 0x630

    const-string v8, "raw data is empty."

    invoke-direct {p0, v6, v8}, Lcom/fh/util/ZoomImageThread;->notifyErrorEvent(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fh/util/ZoomImageThread;->isThreadActive:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fh/util/ZoomImageThread;->isStopThread:Z

    .line 61
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopThread()V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fh/util/ZoomImageThread;->isStopThread:Z

    .line 66
    iget-boolean v0, p0, Lcom/fh/util/ZoomImageThread;->isWaiting:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/fh/util/ZoomImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 69
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
