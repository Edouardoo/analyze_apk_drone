.class public Lcom/hfufo/widget/RenderImageThread;
.super Ljava/lang/Thread;
.source "RenderImageThread.java"


# static fields
.field public static final ERROR_RAW_DATA_EMPTY:I = 0x630

.field public static final ERROR_ZOOM_DATA_EXCEPTION:I = 0x631

.field public static final NO_ERROR_END_FLAG:I = 0x62c

.field public static iSMVmode:Z

.field public static isRev:Z


# instance fields
.field private adjustRunning:Z

.field private dsize:Lorg/opencv/core/Size;

.field dstHeightV:I

.field dstWidthV:I

.field heightScale:F

.field heightV:F

.field private volatile isStopThread:Z

.field private volatile isThreadActive:Z

.field private volatile isWaiting:Z

.field private final mBitmapQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mMatQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation
.end field

.field mPaint2:Landroid/graphics/Paint;

.field private final mStreamBQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/fh/beans/StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field pointCenter:Lorg/opencv/core/Point;

.field private processRunning:Z

.field widthScale:F

.field widthV:F

.field private zoomResultCallBack:Lcom/jieli/lib/stream/udp/IActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hfufo/widget/RenderImageThread;->iSMVmode:Z

    .line 199
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hfufo/widget/RenderImageThread;->isRev:Z

    return-void
.end method

.method public constructor <init>(Lcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Lorg/opencv/core/Mat;>;"
    const/16 v9, 0x32

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    new-instance v0, Lorg/opencv/core/Point;

    const-wide/high16 v2, 0x408e000000000000L    # 960.0

    const-wide v4, 0x4080e00000000000L    # 540.0

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->pointCenter:Lorg/opencv/core/Point;

    .line 200
    iput v8, p0, Lcom/hfufo/widget/RenderImageThread;->widthScale:F

    .line 201
    iput v8, p0, Lcom/hfufo/widget/RenderImageThread;->heightScale:F

    .line 202
    iput v1, p0, Lcom/hfufo/widget/RenderImageThread;->widthV:F

    .line 203
    iput v1, p0, Lcom/hfufo/widget/RenderImageThread;->heightV:F

    .line 204
    iput v6, p0, Lcom/hfufo/widget/RenderImageThread;->dstWidthV:I

    .line 205
    iput v6, p0, Lcom/hfufo/widget/RenderImageThread;->dstHeightV:I

    .line 207
    new-instance v0, Lorg/opencv/core/Size;

    iget v1, p0, Lcom/hfufo/widget/RenderImageThread;->dstWidthV:I

    int-to-double v2, v1

    iget v1, p0, Lcom/hfufo/widget/RenderImageThread;->dstHeightV:I

    int-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Size;-><init>(DD)V

    iput-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->dsize:Lorg/opencv/core/Size;

    .line 224
    iput-boolean v6, p0, Lcom/hfufo/widget/RenderImageThread;->adjustRunning:Z

    .line 279
    iput-boolean v6, p0, Lcom/hfufo/widget/RenderImageThread;->processRunning:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mStreamBQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mBitmapQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mMatQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mMainHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/hfufo/widget/RenderImageThread;->zoomResultCallBack:Lcom/jieli/lib/stream/udp/IActionListener;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mPaint2:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 56
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/RenderImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->zoomResultCallBack:Lcom/jieli/lib/stream/udp/IActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hfufo/widget/RenderImageThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->adjustRunning:Z

    return v0
.end method

.method static synthetic access$102(Lcom/hfufo/widget/RenderImageThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/RenderImageThread;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/hfufo/widget/RenderImageThread;->adjustRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mStreamBQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mBitmapQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hfufo/widget/RenderImageThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isThreadActive:Z

    return v0
.end method

.method static synthetic access$500(Lcom/hfufo/widget/RenderImageThread;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mMatQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hfufo/widget/RenderImageThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->processRunning:Z

    return v0
.end method

.method static synthetic access$602(Lcom/hfufo/widget/RenderImageThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/RenderImageThread;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/hfufo/widget/RenderImageThread;->processRunning:Z

    return p1
.end method

.method private notifyErrorEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/widget/RenderImageThread$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/hfufo/widget/RenderImageThread$2;-><init>(Lcom/hfufo/widget/RenderImageThread;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    return-void
.end method

.method private notifyResult(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p1, "data"    # Lorg/opencv/core/Mat;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/widget/RenderImageThread$1;

    invoke-direct {v1, p0, p1}, Lcom/hfufo/widget/RenderImageThread$1;-><init>(Lcom/hfufo/widget/RenderImageThread;Lorg/opencv/core/Mat;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    :cond_0
    return-void
.end method

.method private startProcessThread()V
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/widget/RenderImageThread$4;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/RenderImageThread$4;-><init>(Lcom/hfufo/widget/RenderImageThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 344
    return-void
.end method

.method private startProcessThread_()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/widget/RenderImageThread$3;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/RenderImageThread$3;-><init>(Lcom/hfufo/widget/RenderImageThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    return-void
.end method


# virtual methods
.method public addData(Lcom/fh/beans/StreamInfo;)Z
    .locals 3
    .param p1, "data"    # Lcom/fh/beans/StreamInfo;

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-boolean v2, p0, Lcom/hfufo/widget/RenderImageThread;->isStopThread:Z

    if-eqz v2, :cond_0

    .line 75
    :goto_0
    return v1

    .line 63
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-boolean v1, p0, Lcom/hfufo/widget/RenderImageThread;->isWaiting:Z

    if-eqz v1, :cond_1

    .line 71
    iget-object v2, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v2

    .line 72
    :try_start_1
    iget-object v1, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 73
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
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 99
    iget-object v9, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v9

    .line 101
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isThreadActive:Z

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 103
    .local v10, "start":J
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isWaiting:Z

    .line 106
    iget-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isStopThread:Z

    if-eqz v0, :cond_3

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isThreadActive:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isWaiting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v10    # "start":J
    :cond_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    iput-boolean v13, p0, Lcom/hfufo/widget/RenderImageThread;->isWaiting:Z

    .line 166
    iput-boolean v13, p0, Lcom/hfufo/widget/RenderImageThread;->isThreadActive:Z

    .line 167
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 170
    :cond_2
    return-void

    .line 114
    .restart local v10    # "start":J
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v7

    .line 116
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "start":J
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 120
    .restart local v10    # "start":J
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isWaiting:Z

    .line 121
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fh/beans/StreamInfo;

    .line 123
    .local v8, "rawDataInfo":Lcom/fh/beans/StreamInfo;
    if-eqz v8, :cond_0

    .line 124
    invoke-virtual {v8}, Lcom/fh/beans/StreamInfo;->getBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    .line 125
    .local v6, "bufferData":Ljava/nio/IntBuffer;
    invoke-virtual {v8}, Lcom/fh/beans/StreamInfo;->clearBuffer()V

    .line 126
    if-eqz v6, :cond_0

    .line 127
    invoke-virtual {v8}, Lcom/fh/beans/StreamInfo;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Lcom/fh/beans/StreamInfo;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 129
    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 130
    const-string v0, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pixels\u8017\u65f6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v12, p0, Lcom/hfufo/widget/RenderImageThread;->mStreamBQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/fh/beans/StreamInfo;

    invoke-virtual {v8}, Lcom/fh/beans/StreamInfo;->getAngle()F

    move-result v2

    invoke-virtual {v8}, Lcom/fh/beans/StreamInfo;->getScale()F

    move-result v3

    invoke-virtual {v8}, Lcom/fh/beans/StreamInfo;->getTranslateW()F

    move-result v4

    invoke-virtual {v8}, Lcom/fh/beans/StreamInfo;->getTranslateH()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/fh/beans/StreamInfo;-><init>(Landroid/graphics/Bitmap;FFFF)V

    invoke-virtual {v12, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public setScale(FFII)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "dstW"    # I
    .param p4, "dstH"    # I

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 210
    sget-boolean v0, Lcom/hfufo/widget/RenderImageThread;->iSMVmode:Z

    if-eqz v0, :cond_0

    .line 211
    int-to-float v0, p3

    mul-float/2addr v0, v1

    div-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/RenderImageThread;->widthScale:F

    .line 212
    int-to-float v0, p4

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/RenderImageThread;->heightScale:F

    .line 217
    :goto_0
    new-instance v0, Lorg/opencv/core/Size;

    iget v1, p0, Lcom/hfufo/widget/RenderImageThread;->dstWidthV:I

    int-to-double v2, v1

    iget v1, p0, Lcom/hfufo/widget/RenderImageThread;->dstHeightV:I

    int-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Size;-><init>(DD)V

    iput-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->dsize:Lorg/opencv/core/Size;

    .line 218
    iput p1, p0, Lcom/hfufo/widget/RenderImageThread;->widthV:F

    .line 219
    iput p2, p0, Lcom/hfufo/widget/RenderImageThread;->heightV:F

    .line 220
    iput p3, p0, Lcom/hfufo/widget/RenderImageThread;->dstWidthV:I

    .line 221
    iput p4, p0, Lcom/hfufo/widget/RenderImageThread;->dstHeightV:I

    .line 222
    return-void

    .line 214
    :cond_0
    int-to-float v0, p3

    mul-float/2addr v0, v1

    div-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/RenderImageThread;->widthScale:F

    .line 215
    int-to-float v0, p4

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/RenderImageThread;->heightScale:F

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isThreadActive:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isStopThread:Z

    .line 82
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 83
    invoke-direct {p0}, Lcom/hfufo/widget/RenderImageThread;->startProcessThread_()V

    .line 84
    invoke-direct {p0}, Lcom/hfufo/widget/RenderImageThread;->startProcessThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopThread()V
    .locals 2

    .prologue
    .line 88
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isStopThread:Z

    .line 89
    iget-boolean v0, p0, Lcom/hfufo/widget/RenderImageThread;->isWaiting:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 92
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 92
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

    .line 88
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
