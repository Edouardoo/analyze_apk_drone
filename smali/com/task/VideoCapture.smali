.class public Lcom/task/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/task/VideoCapture$MyHandler;
    }
.end annotation


# static fields
.field public static downloadSuccess:Z

.field private static volatile isReady:Z


# instance fields
.field private bitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<[B>;"
        }
    .end annotation
.end field

.field private changeHeight:F

.field private changeWidth:F

.field private context:Landroid/content/Context;

.field private fistCount:I

.field private fistSum:I

.field fist_path:Ljava/lang/String;

.field private gesture:Z

.field private gestureRunneable:Ljava/lang/Runnable;

.field handGestureThread:Ljava/lang/Thread;

.field private i:I

.field private isCapture:Z

.field private isPano:Z

.field private isVideo:Z

.field private isdecode:Z

.field private mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

.field private mHandler:Landroid/os/Handler;

.field private mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

.field private final mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

.field private mRetryTime:I

.field private mRgba:Lorg/opencv/core/Mat;

.field private palmCount:I

.field private palmSum:I

.field private rect:Landroid/graphics/Rect;

.field rp_path:Ljava/lang/String;

.field private screenHeight:F

.field private screenWidth:F

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/task/VideoCapture;->isReady:Z

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/task/VideoCapture;->downloadSuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/task/VideoCapture;->tag:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 40
    iput-boolean v1, p0, Lcom/task/VideoCapture;->isPano:Z

    .line 41
    iput-object v2, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    .line 42
    iput v1, p0, Lcom/task/VideoCapture;->mRetryTime:I

    .line 46
    iput-boolean v3, p0, Lcom/task/VideoCapture;->isdecode:Z

    .line 50
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/task/VideoCapture;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 52
    const-string v0, "/data/user/0/com.yinwifi.rxdrone/app_cascade/rpalm.xml"

    iput-object v0, p0, Lcom/task/VideoCapture;->rp_path:Ljava/lang/String;

    .line 53
    const-string v0, "/data/user/0/com.yinwifi.rxdrone/app_cascade/fist.xml"

    iput-object v0, p0, Lcom/task/VideoCapture;->fist_path:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/task/VideoCapture;->handGestureThread:Ljava/lang/Thread;

    .line 56
    new-instance v0, Lcom/task/VideoCapture$1;

    invoke-direct {v0, p0}, Lcom/task/VideoCapture$1;-><init>(Lcom/task/VideoCapture;)V

    iput-object v0, p0, Lcom/task/VideoCapture;->gestureRunneable:Ljava/lang/Runnable;

    .line 80
    iput-boolean v3, p0, Lcom/task/VideoCapture;->gesture:Z

    .line 269
    new-instance v0, Lcom/task/VideoCapture$3;

    invoke-direct {v0, p0}, Lcom/task/VideoCapture$3;-><init>(Lcom/task/VideoCapture;)V

    iput-object v0, p0, Lcom/task/VideoCapture;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .line 374
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    .line 541
    iput-boolean v1, p0, Lcom/task/VideoCapture;->isVideo:Z

    .line 94
    new-instance v0, Lcom/task/VideoCapture$MyHandler;

    invoke-direct {v0}, Lcom/task/VideoCapture$MyHandler;-><init>()V

    iput-object v0, p0, Lcom/task/VideoCapture;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0x14

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/task/VideoCapture;->tag:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 40
    iput-boolean v1, p0, Lcom/task/VideoCapture;->isPano:Z

    .line 41
    iput-object v2, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    .line 42
    iput v1, p0, Lcom/task/VideoCapture;->mRetryTime:I

    .line 46
    iput-boolean v3, p0, Lcom/task/VideoCapture;->isdecode:Z

    .line 50
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/task/VideoCapture;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 52
    const-string v0, "/data/user/0/com.yinwifi.rxdrone/app_cascade/rpalm.xml"

    iput-object v0, p0, Lcom/task/VideoCapture;->rp_path:Ljava/lang/String;

    .line 53
    const-string v0, "/data/user/0/com.yinwifi.rxdrone/app_cascade/fist.xml"

    iput-object v0, p0, Lcom/task/VideoCapture;->fist_path:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/task/VideoCapture;->handGestureThread:Ljava/lang/Thread;

    .line 56
    new-instance v0, Lcom/task/VideoCapture$1;

    invoke-direct {v0, p0}, Lcom/task/VideoCapture$1;-><init>(Lcom/task/VideoCapture;)V

    iput-object v0, p0, Lcom/task/VideoCapture;->gestureRunneable:Ljava/lang/Runnable;

    .line 80
    iput-boolean v3, p0, Lcom/task/VideoCapture;->gesture:Z

    .line 269
    new-instance v0, Lcom/task/VideoCapture$3;

    invoke-direct {v0, p0}, Lcom/task/VideoCapture$3;-><init>(Lcom/task/VideoCapture;)V

    iput-object v0, p0, Lcom/task/VideoCapture;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .line 374
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    .line 541
    iput-boolean v1, p0, Lcom/task/VideoCapture;->isVideo:Z

    .line 101
    iput-object p1, p0, Lcom/task/VideoCapture;->context:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/task/VideoCapture$MyHandler;

    invoke-direct {v0}, Lcom/task/VideoCapture$MyHandler;-><init>()V

    iput-object v0, p0, Lcom/task/VideoCapture;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-static {v4, v4}, Lcom/opencv/openCVJni;->setMinSize(II)V

    .line 104
    invoke-static {v5, v5}, Lcom/opencv/openCVJni;->setMaxSize(II)V

    .line 106
    iput p2, p0, Lcom/task/VideoCapture;->screenWidth:F

    .line 107
    iput p3, p0, Lcom/task/VideoCapture;->screenHeight:F

    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/task/VideoCapture$2;

    invoke-direct {v1, p0}, Lcom/task/VideoCapture$2;-><init>(Lcom/task/VideoCapture;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/task/VideoCapture;->handGestureThread:Ljava/lang/Thread;

    .line 136
    return-void
.end method

.method private CreateBitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 348
    iget-object v0, p0, Lcom/task/VideoCapture;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/task/VideoCapture;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 353
    iget-object v0, p0, Lcom/task/VideoCapture;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 355
    iget-object v0, p0, Lcom/task/VideoCapture;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 356
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v0, p0, Lcom/task/VideoCapture;->mRgba:Lorg/opencv/core/Mat;

    .line 362
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    iget-object v2, p0, Lcom/task/VideoCapture;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/task/VideoCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/task/VideoCapture;->gesture:Z

    return v0
.end method

.method static synthetic access$100(Lcom/task/VideoCapture;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/task/VideoCapture;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/task/VideoCapture;)Lcom/task/OnVideoCaptureListener;
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/task/VideoCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/task/VideoCapture;->isCapture:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/task/VideoCapture;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/task/VideoCapture;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/task/VideoCapture;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/task/VideoCapture;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/task/VideoCapture;->isdecode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/task/VideoCapture;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/task/VideoCapture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/task/VideoCapture;[B)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;
    .param p1, "x1"    # [B

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/task/VideoCapture;->CreateBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/task/VideoCapture;F)F
    .locals 0
    .param p0, "x0"    # Lcom/task/VideoCapture;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/task/VideoCapture;->changeWidth:F

    return p1
.end method

.method static synthetic access$400(Lcom/task/VideoCapture;)F
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget v0, p0, Lcom/task/VideoCapture;->screenWidth:F

    return v0
.end method

.method static synthetic access$502(Lcom/task/VideoCapture;F)F
    .locals 0
    .param p0, "x0"    # Lcom/task/VideoCapture;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/task/VideoCapture;->changeHeight:F

    return p1
.end method

.method static synthetic access$600(Lcom/task/VideoCapture;)F
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget v0, p0, Lcom/task/VideoCapture;->screenHeight:F

    return v0
.end method

.method static synthetic access$700(Lcom/task/VideoCapture;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/task/VideoCapture;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/task/VideoCapture;->createFrame1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/task/VideoCapture;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/task/VideoCapture;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/task/VideoCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoCapture;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/task/VideoCapture;->isPano:Z

    return v0
.end method

.method private createFrame1(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 378
    iget-object v6, p0, Lcom/task/VideoCapture;->mRgba:Lorg/opencv/core/Mat;

    invoke-static {p1, v6}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 397
    iget v6, p0, Lcom/task/VideoCapture;->i:I

    if-nez v6, :cond_3

    .line 398
    const/4 v6, 0x1

    iput v6, p0, Lcom/task/VideoCapture;->i:I

    .line 399
    iget v6, p0, Lcom/task/VideoCapture;->palmSum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/task/VideoCapture;->palmSum:I

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 406
    .local v2, "l":J
    iget-object v6, p0, Lcom/task/VideoCapture;->mRgba:Lorg/opencv/core/Mat;

    invoke-virtual {v6}, Lorg/opencv/core/Mat;->getNativeObjAddr()J

    move-result-wide v6

    iget-object v8, p0, Lcom/task/VideoCapture;->rp_path:Ljava/lang/String;

    iget-object v9, p0, Lcom/task/VideoCapture;->rp_path:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/opencv/openCVJni;->ProcessFrame(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "palmAFist":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 410
    iget-object v6, p0, Lcom/task/VideoCapture;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6709\u624b\u638c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget v6, p0, Lcom/task/VideoCapture;->palmCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/task/VideoCapture;->palmCount:I

    .line 414
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->i:I

    .line 416
    const-string v6, "###onVideo"

    const-string v7, "###onVideo11111111 timestamp \u6709\u624b\u638c start "

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v6, "---"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 420
    .local v5, "pp":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "pf":[Ljava/lang/String;
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 422
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/task/VideoCapture;->changeHeight:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 423
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 424
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 428
    iget v6, p0, Lcom/task/VideoCapture;->palmCount:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    iget v6, p0, Lcom/task/VideoCapture;->palmSum:I

    const/4 v7, 0x4

    if-gt v6, v7, :cond_0

    .line 429
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->palmSum:I

    .line 430
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->palmCount:I

    .line 432
    const-string v6, "createFrame1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFrame1111"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/task/VideoCapture;->changeHeight:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x42700000    # 60.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/task/VideoCapture;->changeHeight:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x42700000    # 60.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 436
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 437
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "gesture_take"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    iget-object v6, p0, Lcom/task/VideoCapture;->context:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v6, "###onVideo"

    const-string v7, "###onVideo11111111 timestamp \u6709\u624b\u638c end "

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v4    # "pf":[Ljava/lang/String;
    .end local v5    # "pp":[Ljava/lang/String;
    :goto_0
    iget v6, p0, Lcom/task/VideoCapture;->palmSum:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 452
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->palmCount:I

    .line 453
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->palmSum:I

    .line 512
    .end local v2    # "l":J
    :cond_1
    :goto_1
    return-void

    .line 449
    .restart local v2    # "l":J
    :cond_2
    invoke-virtual {p0}, Lcom/task/VideoCapture;->resetRect()V

    goto :goto_0

    .line 457
    .end local v1    # "palmAFist":Ljava/lang/String;
    .end local v2    # "l":J
    :cond_3
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->i:I

    .line 458
    iget v6, p0, Lcom/task/VideoCapture;->fistSum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/task/VideoCapture;->fistSum:I

    .line 464
    iget-object v6, p0, Lcom/task/VideoCapture;->mRgba:Lorg/opencv/core/Mat;

    invoke-virtual {v6}, Lorg/opencv/core/Mat;->getNativeObjAddr()J

    move-result-wide v6

    iget-object v8, p0, Lcom/task/VideoCapture;->fist_path:Ljava/lang/String;

    iget-object v9, p0, Lcom/task/VideoCapture;->fist_path:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/opencv/openCVJni;->ProcessFrame(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .restart local v1    # "palmAFist":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 470
    const/4 v6, 0x1

    iput v6, p0, Lcom/task/VideoCapture;->i:I

    .line 474
    const-string v6, "---"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 477
    .restart local v5    # "pp":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 478
    .restart local v4    # "pf":[Ljava/lang/String;
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 479
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/task/VideoCapture;->changeHeight:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 480
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 481
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 484
    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x42700000    # 60.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/task/VideoCapture;->changeHeight:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x42700000    # 60.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 486
    iget v6, p0, Lcom/task/VideoCapture;->fistCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/task/VideoCapture;->fistCount:I

    .line 489
    :cond_4
    iget v6, p0, Lcom/task/VideoCapture;->fistCount:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_5

    iget v6, p0, Lcom/task/VideoCapture;->fistSum:I

    const/4 v7, 0x4

    if-gt v6, v7, :cond_5

    .line 490
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->fistCount:I

    .line 491
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->fistSum:I

    .line 495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 496
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v6, "gesture_takevideo"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    iget-object v6, p0, Lcom/task/VideoCapture;->context:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 505
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "pf":[Ljava/lang/String;
    .end local v5    # "pp":[Ljava/lang/String;
    :cond_5
    :goto_2
    iget v6, p0, Lcom/task/VideoCapture;->fistSum:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 506
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->fistCount:I

    .line 507
    const/4 v6, 0x0

    iput v6, p0, Lcom/task/VideoCapture;->fistSum:I

    goto/16 :goto_1

    .line 503
    :cond_6
    invoke-virtual {p0}, Lcom/task/VideoCapture;->resetRect()V

    goto :goto_2
.end method


# virtual methods
.method public capture([BZ)Z
    .locals 12
    .param p1, "data"    # [B
    .param p2, "isCapture"    # Z

    .prologue
    const v11, 0xa1a1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    sput-boolean v6, Lcom/task/VideoCapture;->downloadSuccess:Z

    .line 157
    iput-boolean p2, p0, Lcom/task/VideoCapture;->isCapture:Z

    .line 158
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v6

    .line 160
    :cond_1
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hfufo/bean/DeviceDesc;->getVideoType()I

    move-result v8

    if-nez v8, :cond_6

    .line 163
    sget-boolean v8, Lcom/task/VideoCapture;->isReady:Z

    if-eqz v8, :cond_0

    .line 165
    sput-boolean v6, Lcom/task/VideoCapture;->isReady:Z

    .line 166
    iget-object v8, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    if-eqz v8, :cond_0

    .line 168
    iget-boolean v8, p0, Lcom/task/VideoCapture;->isPano:Z

    if-eqz v8, :cond_3

    .line 169
    iget-object v8, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    if-eqz v8, :cond_2

    if-eqz p2, :cond_2

    .line 171
    iget-object v8, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    invoke-interface {v8, p1, v6}, Lcom/task/OnVideoCaptureListener;->onSuccess([BZ)V

    .line 172
    sput-boolean v7, Lcom/task/VideoCapture;->isReady:Z

    :cond_2
    move v6, v7

    .line 174
    goto :goto_0

    .line 176
    :cond_3
    sput-boolean v7, Lcom/task/VideoCapture;->isReady:Z

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getLocalPhotoName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "outPath":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 180
    const/16 v8, 0x780

    const/16 v9, 0x438

    invoke-static {p1, v8, v9}, Lcom/fh/hdutil/BitmapUtil;->zoomImg([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    .local v1, "dscDataBmp":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 182
    .local v3, "result":Z
    if-eqz v1, :cond_4

    .line 183
    invoke-static {v1}, Lcom/fh/hdutil/BitmapUtil;->bitmap2bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    .line 184
    .local v4, "resultData":[B
    invoke-static {v4, v2}, Lcom/fh/hdutil/AppUtils;->bytesToFile([BLjava/lang/String;)Z

    move-result v3

    .line 186
    .end local v4    # "resultData":[B
    :cond_4
    if-eqz v3, :cond_0

    .line 187
    iget-object v6, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    if-eqz v6, :cond_5

    if-eqz p2, :cond_5

    .line 189
    iget-object v6, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    invoke-interface {v6, v2}, Lcom/task/OnVideoCaptureListener;->onCompleted(Ljava/lang/String;)V

    :cond_5
    move v6, v7

    .line 191
    goto :goto_0

    .line 203
    .end local v1    # "dscDataBmp":Landroid/graphics/Bitmap;
    .end local v2    # "outPath":Ljava/lang/String;
    .end local v3    # "result":Z
    :cond_6
    iget-object v8, p0, Lcom/task/VideoCapture;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "captureType..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/fh/hdutil/AppUtils;->checkFrameType([B)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "= ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {p1}, Lcom/fh/hdutil/AppUtils;->checkFrameType([B)I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 207
    iput v6, p0, Lcom/task/VideoCapture;->mRetryTime:I

    .line 209
    iget-object v8, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    if-nez v8, :cond_7

    .line 210
    new-instance v8, Lcom/jieli/media/codec/FrameCodec;

    invoke-direct {v8}, Lcom/jieli/media/codec/FrameCodec;-><init>()V

    iput-object v8, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 211
    iget-object v8, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    iget-object v9, p0, Lcom/task/VideoCapture;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    invoke-virtual {v8, v9}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    .line 213
    :cond_7
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getStreamResolutionLevel()I

    move-result v0

    .line 214
    .local v0, "currentLevel":I
    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->getRtsResolution(I)[I

    move-result-object v5

    .line 216
    .local v5, "rtsResolution":[I
    iget-boolean v8, p0, Lcom/task/VideoCapture;->isdecode:Z

    if-eqz v8, :cond_8

    .line 217
    iput-boolean v7, p0, Lcom/task/VideoCapture;->isdecode:Z

    .line 218
    iget-object v8, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    aget v6, v5, v6

    aget v9, v5, v7

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v6, v9, v10}, Lcom/jieli/media/codec/FrameCodec;->convertToJPG([BIILjava/lang/String;)Z

    :cond_8
    move v6, v7

    .line 221
    goto/16 :goto_0
.end method

.method public changeSize(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 515
    int-to-float v4, p1

    iget v5, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 516
    .local v2, "x":I
    int-to-float v4, p2

    iget v5, p0, Lcom/task/VideoCapture;->changeHeight:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 517
    .local v3, "y":I
    int-to-float v4, p3

    iget v5, p0, Lcom/task/VideoCapture;->changeWidth:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 518
    .local v1, "w":I
    int-to-float v4, p4

    iget v5, p0, Lcom/task/VideoCapture;->changeHeight:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 519
    .local v0, "h":I
    iget-object v4, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 520
    iget-object v4, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 521
    iget-object v4, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    add-int v5, v2, v1

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 522
    iget-object v4, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    add-int v5, v3, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 523
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    invoke-virtual {v0}, Lcom/jieli/media/codec/FrameCodec;->destroy()Z

    .line 249
    iget-object v0, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    invoke-virtual {v0, v1}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    .line 250
    iput-object v1, p0, Lcom/task/VideoCapture;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 252
    :cond_0
    iput-object v1, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    .line 259
    iget-object v0, p0, Lcom/task/VideoCapture;->handGestureThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/task/VideoCapture;->gesture:Z

    .line 262
    iput-object v1, p0, Lcom/task/VideoCapture;->handGestureThread:Ljava/lang/Thread;

    .line 264
    :cond_1
    return-void
.end method

.method public getPaf()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public resetRect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Lcom/task/VideoCapture;->tag:Ljava/lang/String;

    const-string v1, "qingling"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 550
    iget-object v0, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 551
    iget-object v0, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 552
    iget-object v0, p0, Lcom/task/VideoCapture;->rect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 553
    return-void
.end method

.method public setOnCaptureListener(Lcom/task/OnVideoCaptureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/task/OnVideoCaptureListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/task/VideoCapture;->mOnCaptureListener:Lcom/task/OnVideoCaptureListener;

    .line 140
    return-void
.end method

.method public setPano(Z)V
    .locals 0
    .param p1, "pano"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/task/VideoCapture;->isPano:Z

    .line 144
    return-void
.end method

.method public setVideo(Z)V
    .locals 0
    .param p1, "Video"    # Z

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/task/VideoCapture;->isVideo:Z

    .line 545
    return-void
.end method

.method public setWAndH()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public startGesture()V
    .locals 2

    .prologue
    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/task/VideoCapture;->gesture:Z

    .line 556
    iget-object v0, p0, Lcom/task/VideoCapture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/task/VideoCapture;->gestureRunneable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void
.end method

.method public stopGesture()V
    .locals 2

    .prologue
    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/task/VideoCapture;->gesture:Z

    .line 561
    iget-object v0, p0, Lcom/task/VideoCapture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/task/VideoCapture;->gestureRunneable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    return-void
.end method
