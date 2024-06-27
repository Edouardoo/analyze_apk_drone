.class Lcom/hfufo/widget/MjpegView$VideoThread;
.super Ljava/lang/Thread;
.source "MjpegView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/MjpegView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoThread"
.end annotation


# instance fields
.field canvas:Landroid/graphics/Canvas;

.field private dispHeight:I

.field private dispWidth:I

.field filterMode:Z

.field private filterNum:I

.field gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

.field i:I

.field private isCompress:Z

.field private isOptimize:Z

.field private volatile isRecordWaiting:Z

.field isRecording:Z

.field isShoting:Z

.field private isVGA:Z

.field private isVideoThreadRunning:Z

.field isVr:Z

.field private volatile isWaiting:Z

.field private jHeight:I

.field private jWidth:I

.field private listenerPhoto:Lcom/jieli/lib/stream/udp/IActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBufList:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/fh/beans/StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContrastCompress:Lcom/jieli/lib/stream/tools/ContrastCompress;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint1:Landroid/graphics/Paint;

.field private mWeakRefSurfaceHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private rect:Landroid/graphics/Rect;

.field rotateMode:Z

.field private videoAngle:F

.field private videoScaleX:F

.field private videoScaleY:F

.field private videoTranX:F

.field private videoTranY:F


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "jpegWidth"    # I
    .param p3, "jpegHeight"    # I
    .param p4, "lightLevel"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 167
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVideoThreadRunning:Z

    .line 169
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 170
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x15e

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 173
    iput-boolean v4, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVGA:Z

    .line 174
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isCompress:Z

    .line 175
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isWaiting:Z

    .line 176
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecordWaiting:Z

    .line 177
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isOptimize:Z

    .line 185
    iput v2, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoAngle:F

    .line 186
    iput v3, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleX:F

    .line 187
    iput v3, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleY:F

    .line 188
    iput v2, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoTranX:F

    .line 189
    iput v2, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoTranY:F

    .line 190
    iput v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->filterNum:I

    .line 192
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->filterMode:Z

    .line 193
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->rotateMode:Z

    .line 194
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecording:Z

    .line 195
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isShoting:Z

    .line 196
    iput-boolean v4, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVr:Z

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->canvas:Landroid/graphics/Canvas;

    .line 200
    iput v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->i:I

    .line 203
    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==== VideoThread onCreate ====jpegWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,jpegHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput p2, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->jWidth:I

    .line 205
    iput p3, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->jHeight:I

    .line 206
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mWeakRefSurfaceHolder:Ljava/lang/ref/WeakReference;

    .line 207
    new-instance v0, Lcom/jieli/lib/stream/tools/ContrastCompress;

    mul-int/lit8 v3, p2, 0x4

    const/16 v4, 0x9

    move v1, p2

    move v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jieli/lib/stream/tools/ContrastCompress;-><init>(IIIII)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mContrastCompress:Lcom/jieli/lib/stream/tools/ContrastCompress;

    .line 208
    const/16 v0, 0x280

    if-ne p2, v0, :cond_0

    const/16 v0, 0x1e0

    if-eq p3, v0, :cond_1

    .line 209
    :cond_0
    iput-boolean v6, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVGA:Z

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/hfufo/widget/MjpegView$VideoThread;->initPaint()V

    .line 213
    return-void
.end method

.method static synthetic access$1002(Lcom/hfufo/widget/MjpegView$VideoThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView$VideoThread;
    .param p1, "x1"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecordWaiting:Z

    return p1
.end method

.method static synthetic access$202(Lcom/hfufo/widget/MjpegView$VideoThread;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView$VideoThread;
    .param p1, "x1"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoTranX:F

    return p1
.end method

.method static synthetic access$302(Lcom/hfufo/widget/MjpegView$VideoThread;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView$VideoThread;
    .param p1, "x1"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoTranY:F

    return p1
.end method

.method static synthetic access$402(Lcom/hfufo/widget/MjpegView$VideoThread;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView$VideoThread;
    .param p1, "x1"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoAngle:F

    return p1
.end method

.method static synthetic access$502(Lcom/hfufo/widget/MjpegView$VideoThread;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView$VideoThread;
    .param p1, "x1"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleX:F

    return p1
.end method

.method static synthetic access$602(Lcom/hfufo/widget/MjpegView$VideoThread;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView$VideoThread;
    .param p1, "x1"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleY:F

    return p1
.end method

.method static synthetic access$900(Lcom/hfufo/widget/MjpegView$VideoThread;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/MjpegView$VideoThread;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private initPaint()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint:Landroid/graphics/Paint;

    .line 217
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 218
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint1:Landroid/graphics/Paint;

    .line 221
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 222
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 223
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    return-void
.end method

.method private resizeRect(II)Landroid/graphics/Rect;
    .locals 17
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeight"    # I

    .prologue
    .line 328
    const/high16 v2, 0x44a00000    # 1280.0f

    .line 329
    .local v2, "DEFAULT_VIDEO_WIDTH":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    int-to-float v12, v12

    div-float v9, v12, v2

    .line 330
    .local v9, "ratio_width":F
    const/high16 v1, 0x44340000    # 720.0f

    .line 331
    .local v1, "DEFAULT_VIDEO_HEIGHT":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    int-to-float v12, v12

    div-float v8, v12, v1

    .line 332
    .local v8, "ratio_height":F
    div-float v5, v2, v1

    .line 335
    .local v5, "aspectRatio":F
    cmpl-float v12, v9, v8

    if-lez v12, :cond_0

    .line 344
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 374
    :goto_0
    return-object v12

    .line 347
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    .line 348
    .local v7, "myWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v6, v12

    .line 350
    .local v6, "myHeight":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    if-le v12, v13, :cond_2

    .line 352
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVr:Z

    if-eqz v12, :cond_1

    .line 354
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    sub-int/2addr v12, v6

    div-int/lit8 v3, v12, 0x2

    .line 355
    .local v3, "a":I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int v14, v6, v3

    invoke-direct {v12, v13, v3, v7, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 358
    .end local v3    # "a":I
    :cond_1
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 364
    :cond_2
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v4, v12, v13

    .line 365
    .local v4, "ar":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    move/from16 p1, v0

    .line 366
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    int-to-float v12, v12

    div-float/2addr v12, v4

    float-to-int v0, v12

    move/from16 p2, v0

    .line 367
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    move/from16 v0, p2

    if-le v0, v12, :cond_3

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    move/from16 p2, v0

    .line 369
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-int v0, v12

    move/from16 p1, v0

    .line 371
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, p1, 0x2

    sub-int v10, v12, v13

    .line 372
    .local v10, "tempX":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, p2, 0x2

    sub-int v11, v12, v13

    .line 374
    .local v11, "tempY":I
    new-instance v12, Landroid/graphics/Rect;

    add-int v13, p1, v10

    add-int v14, p2, v11

    invoke-direct {v12, v10, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public addData([BZ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "isOptimize"    # Z

    .prologue
    .line 248
    iput-boolean p2, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isOptimize:Z

    .line 250
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 254
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    iget-boolean v1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isWaiting:Z

    if-eqz v1, :cond_1

    .line 259
    iget-object v2, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v2

    .line 260
    :try_start_1
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 261
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :cond_1
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public drawThumbnail([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 266
    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mWeakRefSurfaceHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceHolder;

    .line 272
    .local v3, "surfaceHolder":Landroid/view/SurfaceHolder;
    if-eqz v3, :cond_0

    .line 273
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/hfufo/widget/MjpegView$VideoThread;->resizeRect(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 275
    .local v2, "destRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_3

    .line 280
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v2    # "destRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 289
    if-eqz v3, :cond_1

    .line 290
    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 292
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_2
    :goto_1
    return-void

    .line 284
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "destRect":Landroid/graphics/Rect;
    .restart local v3    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawThumbnail: resize destination rectangle fail. destRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    .end local v2    # "destRect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_5

    .line 289
    if-eqz v3, :cond_4

    .line 290
    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 292
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    throw v4

    .line 299
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_6
    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawThumbnail: bitmap is null. data size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getjHeight()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->jHeight:I

    return v0
.end method

.method public getjWidth()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->jWidth:I

    return v0
.end method

.method public run()V
    .locals 27

    .prologue
    .line 385
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 386
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVideoThreadRunning:Z

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 388
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVideoThreadRunning:Z

    if-eqz v2, :cond_11

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 390
    .local v24, "time":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isWaiting:Z

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v22

    .line 395
    .local v22, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 526
    .end local v22    # "e":Ljava/lang/InterruptedException;
    .end local v24    # "time":J
    :catchall_0
    move-exception v2

    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 400
    .restart local v24    # "time":J
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isWaiting:Z

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    .line 402
    .local v20, "data":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 404
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecording:Z

    if-eqz v2, :cond_4

    .line 406
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v3, v2, [B

    .line 407
    .local v3, "arr":[B
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/fh/beans/StreamInfo;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoAngle:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->i:I

    add-int/lit8 v9, v6, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->i:I

    const/16 v7, 0x8

    invoke-direct/range {v2 .. v7}, Lcom/fh/beans/StreamInfo;-><init>([BFFII)V

    invoke-virtual {v8, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 410
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecordWaiting:Z

    if-eqz v2, :cond_2

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 413
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 415
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "data":[B
    check-cast v20, [B

    .line 417
    .restart local v20    # "data":[B
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v5, v2, [B

    .line 418
    .local v5, "arr_":[B
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    move-object/from16 v0, v20

    invoke-static {v0, v2, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v4, Lcom/fh/beans/StreamInfo;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoAngle:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->i:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->i:I

    const/16 v9, 0x8

    invoke-direct/range {v4 .. v9}, Lcom/fh/beans/StreamInfo;-><init>([BFFII)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v5    # "arr_":[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "data":[B
    check-cast v20, [B

    .line 423
    .restart local v20    # "data":[B
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v7, v2, [B

    .line 424
    .local v7, "arr1":[B
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    move-object/from16 v0, v20

    invoke-static {v0, v2, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v6, Lcom/fh/beans/StreamInfo;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoAngle:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->i:I

    add-int/lit8 v4, v10, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->i:I

    const/16 v11, 0x8

    invoke-direct/range {v6 .. v11}, Lcom/fh/beans/StreamInfo;-><init>([BFFII)V

    invoke-virtual {v2, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v3    # "arr":[B
    .end local v7    # "arr1":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "data":[B
    check-cast v20, [B

    .line 448
    .restart local v20    # "data":[B
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->filterMode:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->rotateMode:Z

    if-eqz v2, :cond_e

    .line 450
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->filterMode:Z

    if-eqz v2, :cond_d

    .line 451
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->rotateMode:Z

    if-eqz v2, :cond_c

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$100()Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-static {v0, v4, v6, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->jWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->jHeight:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoAngle:F

    float-to-int v15, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint1:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Lcom/fh/hdutil/BitmapUtil;->adjustPhotoRotationByC(Landroid/graphics/Bitmap;IIFFFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 471
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mContrastCompress:Lcom/jieli/lib/stream/tools/ContrastCompress;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVGA:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isCompress:Z

    if-eqz v2, :cond_7

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mContrastCompress:Lcom/jieli/lib/stream/tools/ContrastCompress;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/jieli/lib/stream/tools/ContrastCompress;->compress(Landroid/graphics/Bitmap;)Z

    .line 477
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 479
    if-eqz v19, :cond_0

    .line 480
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecording:Z

    if-eqz v2, :cond_8

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v4, Lcom/fh/beans/StreamInfo;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->i:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->i:I

    const/16 v9, 0x9

    invoke-direct {v4, v6, v8, v9}, Lcom/fh/beans/StreamInfo;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 483
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isRecordWaiting:Z

    if-eqz v2, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 485
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufListEscess:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 486
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 489
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isShoting:Z

    if-eqz v2, :cond_9

    .line 490
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->isShoting:Z

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->listenerPhoto:Lcom/jieli/lib/stream/udp/IActionListener;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/jieli/lib/stream/udp/IActionListener;->onSuccess(Ljava/lang/Object;)V

    .line 493
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mWeakRefSurfaceHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/SurfaceHolder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 495
    .local v23, "surfaceHolder":Landroid/view/SurfaceHolder;
    if-eqz v23, :cond_a

    .line 496
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->canvas:Landroid/graphics/Canvas;

    .line 497
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/hfufo/widget/MjpegView$VideoThread;->resizeRect(II)Landroid/graphics/Rect;

    move-result-object v21

    .line 499
    .local v21, "destRect":Landroid/graphics/Rect;
    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->canvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_a

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->canvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 508
    .end local v21    # "destRect":Landroid/graphics/Rect;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->canvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 509
    if-eqz v23, :cond_b

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 512
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 514
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 413
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    .end local v23    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .restart local v3    # "arr":[B
    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2

    .line 456
    .end local v3    # "arr":[B
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$100()Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-static {v0, v4, v6, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v19

    .restart local v19    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 461
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v20

    array-length v4, v0

    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$100()Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v0, v2, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->jWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->jHeight:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoAngle:F

    float-to-int v15, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint1:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Lcom/fh/hdutil/BitmapUtil;->adjustPhotoRotationByC(Landroid/graphics/Bitmap;IIFFFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .restart local v19    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 467
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, v20

    array-length v4, v0

    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$100()Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v0, v2, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->jWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->jHeight:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoTranX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoTranY:F

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, -0x40800000    # -1.0f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->mPaint1:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Lcom/fh/hdutil/BitmapUtil;->adjustPhotoRotationByC(Landroid/graphics/Bitmap;IIFFFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v19

    .restart local v19    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 486
    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2

    .line 508
    .restart local v23    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :catchall_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->canvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_10

    .line 509
    if-eqz v23, :cond_f

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/MjpegView$VideoThread;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 512
    :cond_f
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_10

    .line 513
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 514
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_10
    throw v2

    .line 526
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    .end local v20    # "data":[B
    .end local v23    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v24    # "time":J
    :cond_11
    monitor-exit v26
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 527
    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1
    .param p1, "gpuImageFilter"    # Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 540
    return-void
.end method

.method public setGpuImage(Ljp/co/cyberagent/android/gpuimage/GPUImage;)V
    .locals 0
    .param p1, "image"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .line 544
    return-void
.end method

.method public setPhotoCallback(Lcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 0
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
    .line 547
    .local p1, "l":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->listenerPhoto:Lcom/jieli/lib/stream/udp/IActionListener;

    .line 548
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 530
    iput p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoAngle:F

    .line 531
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 534
    iput p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleX:F

    .line 535
    iput p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->videoScaleY:F

    .line 536
    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 319
    iput p1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    .line 320
    iput p2, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    .line 321
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispWidth:I

    iget v2, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->dispHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->rect:Landroid/graphics/Rect;

    .line 323
    return-void
.end method

.method public stopRunning()V
    .locals 2

    .prologue
    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isVideoThreadRunning:Z

    .line 305
    iget-object v1, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 307
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 308
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mContrastCompress:Lcom/jieli/lib/stream/tools/ContrastCompress;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mContrastCompress:Lcom/jieli/lib/stream/tools/ContrastCompress;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/ContrastCompress;->release()Z

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mContrastCompress:Lcom/jieli/lib/stream/tools/ContrastCompress;

    .line 314
    :cond_0
    return-void

    .line 308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateLightLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 235
    if-ltz p1, :cond_1

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isCompress:Z

    .line 237
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mContrastCompress:Lcom/jieli/lib/stream/tools/ContrastCompress;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->mContrastCompress:Lcom/jieli/lib/stream/tools/ContrastCompress;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/stream/tools/ContrastCompress;->updateLightLevel(I)Z

    .line 244
    :cond_0
    :goto_0
    invoke-static {}, Lcom/hfufo/widget/MjpegView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCompress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isCompress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/MjpegView$VideoThread;->isCompress:Z

    goto :goto_0
.end method
