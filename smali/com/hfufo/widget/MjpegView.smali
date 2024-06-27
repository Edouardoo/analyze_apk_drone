.class public Lcom/hfufo/widget/MjpegView;
.super Landroid/view/SurfaceView;
.source "MjpegView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/jieli/lib/stream/util/ICommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/MjpegView$AudioThread;,
        Lcom/hfufo/widget/MjpegView$VideoThread;
    }
.end annotation


# static fields
.field static final HEIGHT:I = 0x1e0

.field static final WIDTH:I = 0x280

.field private static bitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static context:Landroid/content/Context;

.field private static i:I

.field private static isGesture:Z

.field private static j:I

.field private static m:I

.field private static mGray:Lorg/opencv/core/Mat;

.field private static mRgba:Lorg/opencv/core/Mat;

.field private static final tag:Ljava/lang/String;


# instance fields
.field private canStop:Z

.field dstHeightV:I

.field dstWidthV:I

.field gpuImageMjpeg1:Ljp/co/cyberagent/android/gpuimage/GPUImage;

.field gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

.field private listener:Lcom/jieli/lib/stream/udp/IActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioThread:Lcom/hfufo/widget/MjpegView$AudioThread;

.field private final mBufListMat:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation
.end field

.field private mCascadeFile:Ljava/io/File;

.field private mJpegHeight:I

.field private mJpegWidth:I

.field private mLightLevel:I

.field mPaint2:Landroid/graphics/Paint;

.field private mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

.field private matSRunning:Z

.field private recordRunning:Z

.field scaleHeight:D

.field scaleWidth:D

.field private surfaceDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hfufo/widget/MjpegView;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->surfaceDone:Z

    .line 48
    const/16 v0, 0x280

    iput v0, p0, Lcom/hfufo/widget/MjpegView;->mJpegWidth:I

    .line 49
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/hfufo/widget/MjpegView;->mJpegHeight:I

    .line 50
    iput v2, p0, Lcom/hfufo/widget/MjpegView;->mLightLevel:I

    .line 907
    iput-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->canStop:Z

    .line 908
    iput-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->recordRunning:Z

    .line 993
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView;->mBufListMat:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 994
    iput-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->matSRunning:Z

    .line 996
    const/16 v0, 0x500

    iput v0, p0, Lcom/hfufo/widget/MjpegView;->dstWidthV:I

    .line 997
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/hfufo/widget/MjpegView;->dstHeightV:I

    .line 67
    sput-object p1, Lcom/hfufo/widget/MjpegView;->context:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/hfufo/widget/MjpegView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->surfaceDone:Z

    .line 48
    const/16 v0, 0x280

    iput v0, p0, Lcom/hfufo/widget/MjpegView;->mJpegWidth:I

    .line 49
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/hfufo/widget/MjpegView;->mJpegHeight:I

    .line 50
    iput v2, p0, Lcom/hfufo/widget/MjpegView;->mLightLevel:I

    .line 907
    iput-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->canStop:Z

    .line 908
    iput-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->recordRunning:Z

    .line 993
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView;->mBufListMat:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 994
    iput-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->matSRunning:Z

    .line 996
    const/16 v0, 0x500

    iput v0, p0, Lcom/hfufo/widget/MjpegView;->dstWidthV:I

    .line 997
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/hfufo/widget/MjpegView;->dstHeightV:I

    .line 73
    sput-object p1, Lcom/hfufo/widget/MjpegView;->context:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/hfufo/widget/MjpegView;->init()V

    .line 75
    return-void
.end method

.method static ReduceColor(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 556
    new-instance v2, Lorg/opencv/core/Mat;

    invoke-direct {v2}, Lorg/opencv/core/Mat;-><init>()V

    .line 557
    .local v2, "dst":Lorg/opencv/core/Mat;
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->width()I

    move-result v3

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 558
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 559
    const/16 v3, 0x280

    const/16 v4, 0x1e0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 561
    .local v1, "bmp2":Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 562
    return-object v2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/hfufo/widget/MjpegView;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/hfufo/widget/MjpegView;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hfufo/widget/MjpegView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;

    .prologue
    .line 45
    iget v0, p0, Lcom/hfufo/widget/MjpegView;->mJpegWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/hfufo/widget/MjpegView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;

    .prologue
    .line 45
    iget v0, p0, Lcom/hfufo/widget/MjpegView;->mJpegHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/hfufo/widget/MjpegView;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mBufListMat:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/hfufo/widget/MjpegView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->matSRunning:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/hfufo/widget/MjpegView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/hfufo/widget/MjpegView;->matSRunning:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/hfufo/widget/MjpegView;)Lcom/jieli/lib/stream/udp/IActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->listener:Lcom/jieli/lib/stream/udp/IActionListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/hfufo/widget/MjpegView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->canStop:Z

    return v0
.end method

.method static synthetic access$700(Lcom/hfufo/widget/MjpegView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->recordRunning:Z

    return v0
.end method

.method static synthetic access$702(Lcom/hfufo/widget/MjpegView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/hfufo/widget/MjpegView;->recordRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/hfufo/widget/MjpegView;)Lcom/hfufo/widget/MjpegView$VideoThread;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    return-object v0
.end method

.method private static createFrame1(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 578
    sget-object v3, Lcom/hfufo/widget/MjpegView;->mRgba:Lorg/opencv/core/Mat;

    invoke-static {p0, v3}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 588
    const-string v2, "/data/user/0/com.yinwifi.rxdrone/app_cascade/rpalm.xml"

    .line 590
    .local v2, "rp_path":Ljava/lang/String;
    sget v3, Lcom/hfufo/widget/MjpegView;->i:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/hfufo/widget/MjpegView;->i:I

    .line 591
    sget v3, Lcom/hfufo/widget/MjpegView;->i:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 592
    sput v5, Lcom/hfufo/widget/MjpegView;->i:I

    .line 594
    sget v3, Lcom/hfufo/widget/MjpegView;->j:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/hfufo/widget/MjpegView;->j:I

    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, "palm":Z
    if-eqz v1, :cond_0

    .line 598
    sget v3, Lcom/hfufo/widget/MjpegView;->m:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/hfufo/widget/MjpegView;->m:I

    .line 602
    :cond_0
    sget v3, Lcom/hfufo/widget/MjpegView;->m:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    sget v3, Lcom/hfufo/widget/MjpegView;->j:I

    if-ne v3, v6, :cond_1

    .line 603
    const/4 v3, 0x1

    sput-boolean v3, Lcom/hfufo/widget/MjpegView;->isGesture:Z

    .line 604
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 605
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "gesture_take"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    sget-object v3, Lcom/hfufo/widget/MjpegView;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 609
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sget v3, Lcom/hfufo/widget/MjpegView;->j:I

    if-ne v3, v6, :cond_2

    .line 610
    sput v5, Lcom/hfufo/widget/MjpegView;->m:I

    .line 611
    sput v5, Lcom/hfufo/widget/MjpegView;->j:I

    .line 641
    .end local v1    # "palm":Z
    :cond_2
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    sget-object v1, Lcom/hfufo/widget/MjpegView;->tag:Ljava/lang/String;

    const-string v2, "init........................."

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 81
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/MjpegView;->setFocusable(Z)V

    .line 84
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v1, Lcom/hfufo/widget/MjpegView;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 88
    sget-object v1, Lcom/hfufo/widget/MjpegView;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 90
    sget-object v1, Lcom/hfufo/widget/MjpegView;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/hfufo/widget/MjpegView;->mPaint2:Landroid/graphics/Paint;

    .line 96
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 97
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 98
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    return-void
.end method

.method public static setIsGesture(Z)V
    .locals 0
    .param p0, "bool"    # Z

    .prologue
    .line 569
    sput-boolean p0, Lcom/hfufo/widget/MjpegView;->isGesture:Z

    .line 570
    return-void
.end method

.method private startRecordThread()V
    .locals 2

    .prologue
    .line 913
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/widget/MjpegView$1;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/MjpegView$1;-><init>(Lcom/hfufo/widget/MjpegView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 990
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 991
    return-void
.end method

.method private startRecordThread_()V
    .locals 2

    .prologue
    .line 999
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/widget/MjpegView$2;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/MjpegView$2;-><init>(Lcom/hfufo/widget/MjpegView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1028
    return-void
.end method


# virtual methods
.method public clearCanvas()V
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    monitor-enter v2

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 104
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 106
    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 109
    :cond_0
    monitor-exit v2

    .line 110
    return-void

    .line 109
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawBitmap([BZ)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "isOptimize"    # Z

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->surfaceDone:Z

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/MjpegView$VideoThread;->addData([BZ)V

    goto :goto_0
.end method

.method public drawThumbnail([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/MjpegView$VideoThread;->drawThumbnail([B)V

    .line 116
    :cond_0
    return-void
.end method

.method public getContrastCompressHeight()I
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/hfufo/widget/MjpegView;->mJpegHeight:I

    .line 160
    .local v0, "height":I
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->getjHeight()I

    move-result v0

    .line 163
    :cond_0
    return v0
.end method

.method public getContrastCompressWidth()I
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/hfufo/widget/MjpegView;->mJpegWidth:I

    .line 152
    .local v0, "width":I
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->getjWidth()I

    move-result v0

    .line 155
    :cond_0
    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    iget-boolean v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecording:Z

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->canStop:Z

    .line 712
    iput-boolean v1, p0, Lcom/hfufo/widget/MjpegView;->recordRunning:Z

    .line 713
    iput-boolean v1, p0, Lcom/hfufo/widget/MjpegView;->matSRunning:Z

    .line 714
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mAudioThread:Lcom/hfufo/widget/MjpegView$AudioThread;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mAudioThread:Lcom/hfufo/widget/MjpegView$AudioThread;

    invoke-virtual {v0}, Lcom/hfufo/widget/MjpegView$AudioThread;->stopRunning()V

    .line 716
    iput-object v2, p0, Lcom/hfufo/widget/MjpegView;->mAudioThread:Lcom/hfufo/widget/MjpegView$AudioThread;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v0}, Lcom/hfufo/widget/MjpegView$VideoThread;->stopRunning()V

    .line 721
    iput-object v2, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 727
    :cond_2
    return-void
.end method

.method public setFilter(I)V
    .locals 7
    .param p1, "num"    # I

    .prologue
    const v6, 0x3fcccccd    # 1.6f

    const/high16 v5, 0x3fc00000    # 1.5f

    const v4, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3f99999a    # 1.2f

    .line 795
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_0

    .line 850
    :goto_0
    return-void

    .line 798
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 800
    :pswitch_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 801
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    goto :goto_0

    .line 804
    :pswitch_1
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    invoke-direct {v1, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 805
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    invoke-direct {v1, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;-><init>(F)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    goto :goto_0

    .line 808
    :pswitch_2
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    invoke-direct {v1, v2, v2, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 809
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    invoke-direct {v1, v2, v2, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;-><init>(FFF)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    goto :goto_0

    .line 812
    :pswitch_3
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    invoke-direct {v1, v4, v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 813
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    invoke-direct {v1, v4, v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;-><init>(FFF)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    goto :goto_0

    .line 816
    :pswitch_4
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;

    invoke-direct {v1, v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 817
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;

    invoke-direct {v1, v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;-><init>(F)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    goto :goto_0

    .line 820
    :pswitch_5
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    invoke-direct {v1, v3, v4, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 821
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    invoke-direct {v1, v3, v4, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;-><init>(FFF)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    goto/16 :goto_0

    .line 824
    :pswitch_6
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 825
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    goto/16 :goto_0

    .line 828
    :pswitch_7
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 829
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    goto/16 :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setFilterMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 854
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_0

    .line 858
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    iput-boolean p1, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->filterMode:Z

    goto :goto_0
.end method

.method public setJpegWidthAndHeightAndLevel(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "level"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/hfufo/widget/MjpegView;->mJpegWidth:I

    .line 144
    iput p2, p0, Lcom/hfufo/widget/MjpegView;->mJpegHeight:I

    .line 145
    const/16 v0, 0x500

    div-int/2addr v0, p1

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/hfufo/widget/MjpegView;->scaleWidth:D

    .line 146
    const/16 v0, 0x2d0

    div-int/2addr v0, p2

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/hfufo/widget/MjpegView;->scaleHeight:D

    .line 147
    iput p3, p0, Lcom/hfufo/widget/MjpegView;->mLightLevel:I

    .line 148
    return-void
.end method

.method public setPhotoCallback(Lcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1037
    .local p1, "l":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setPhotoCallback(Lcom/jieli/lib/stream/udp/IActionListener;)V

    .line 1040
    :cond_0
    return-void
.end method

.method public setRecordSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/hfufo/widget/MjpegView;->dstWidthV:I

    .line 1045
    iput p2, p0, Lcom/hfufo/widget/MjpegView;->dstHeightV:I

    .line 1046
    return-void
.end method

.method public setRotateMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 861
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_0

    .line 865
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    iput-boolean p1, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->rotateMode:Z

    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 779
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_0

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-static {v0, p1}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$402(Lcom/hfufo/widget/MjpegView$VideoThread;F)F

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 787
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-static {v0, p1}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$502(Lcom/hfufo/widget/MjpegView$VideoThread;F)F

    .line 791
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-static {v0, p2}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$602(Lcom/hfufo/widget/MjpegView$VideoThread;F)F

    goto :goto_0
.end method

.method public setTranslate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 770
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_0

    .line 776
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-static {v0, p1}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$202(Lcom/hfufo/widget/MjpegView$VideoThread;F)F

    .line 774
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-static {v0, p2}, Lcom/hfufo/widget/MjpegView$VideoThread;->access$302(Lcom/hfufo/widget/MjpegView$VideoThread;F)F

    goto :goto_0
.end method

.method public setVideoCallback(Lcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 0
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
    .line 1032
    .local p1, "l":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Lorg/opencv/core/Mat;>;"
    iput-object p1, p0, Lcom/hfufo/widget/MjpegView;->listener:Lcom/jieli/lib/stream/udp/IActionListener;

    .line 1033
    return-void
.end method

.method public setVr(Z)V
    .locals 1
    .param p1, "vr"    # Z

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    iput-boolean p1, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVr:Z

    .line 1052
    :cond_0
    return-void
.end method

.method public startRecord()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->recordRunning:Z

    if-nez v0, :cond_2

    .line 882
    invoke-direct {p0}, Lcom/hfufo/widget/MjpegView;->startRecordThread()V

    .line 886
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->matSRunning:Z

    if-nez v0, :cond_0

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->canStop:Z

    .line 888
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecording:Z

    .line 889
    invoke-direct {p0}, Lcom/hfufo/widget/MjpegView;->startRecordThread_()V

    goto :goto_0
.end method

.method public startShot()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_0

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isShoting:Z

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecording:Z

    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->canStop:Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "f"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 756
    sget-object v0, Lcom/hfufo/widget/MjpegView;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged--------------w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surfaceDone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->surfaceDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v0, p3, p4}, Lcom/hfufo/widget/MjpegView$VideoThread;->setSurfaceSize(II)V

    .line 760
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->surfaceDone:Z

    .line 732
    sget-object v0, Lcom/hfufo/widget/MjpegView;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated-----------------------mJpegWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/widget/MjpegView;->mJpegWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mJpegHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/widget/MjpegView;->mJpegHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Lcom/hfufo/widget/MjpegView$VideoThread;

    iget v1, p0, Lcom/hfufo/widget/MjpegView;->mJpegWidth:I

    iget v2, p0, Lcom/hfufo/widget/MjpegView;->mJpegHeight:I

    iget v3, p0, Lcom/hfufo/widget/MjpegView;->mLightLevel:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/hfufo/widget/MjpegView$VideoThread;-><init>(Landroid/view/SurfaceHolder;III)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v0}, Lcom/hfufo/widget/MjpegView$VideoThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 738
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v0}, Lcom/hfufo/widget/MjpegView$VideoThread;->start()V

    .line 741
    :cond_1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    sget-object v1, Lcom/hfufo/widget/MjpegView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg1:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .line 742
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    sget-object v1, Lcom/hfufo/widget/MjpegView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg2:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .line 743
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    iget-object v1, p0, Lcom/hfufo/widget/MjpegView;->gpuImageMjpeg1:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView$VideoThread;->setGpuImage(Ljp/co/cyberagent/android/gpuimage/GPUImage;)V

    .line 752
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 764
    sget-object v0, Lcom/hfufo/widget/MjpegView;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed------------------------surfaceDone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hfufo/widget/MjpegView;->surfaceDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView;->surfaceDone:Z

    .line 766
    invoke-virtual {p0}, Lcom/hfufo/widget/MjpegView;->release()V

    .line 767
    return-void
.end method

.method public updateLightLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mVideoThread:Lcom/hfufo/widget/MjpegView$VideoThread;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/MjpegView$VideoThread;->updateLightLevel(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public writeAudioData([B)V
    .locals 1
    .param p1, "audioData"    # [B

    .prologue
    .line 131
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mAudioThread:Lcom/hfufo/widget/MjpegView$AudioThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView;->mAudioThread:Lcom/hfufo/widget/MjpegView$AudioThread;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/MjpegView$AudioThread;->addData([B)V

    .line 134
    :cond_0
    return-void
.end method
