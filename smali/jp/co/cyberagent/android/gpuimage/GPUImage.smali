.class public Ljp/co/cyberagent/android/gpuimage/GPUImage;
.super Ljava/lang/Object;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

.field private mGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private final mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field private mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .line 65
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->supportsOpenGLES2(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OpenGL ES 2.0 is not supported on this phone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 71
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .line 72
    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 51
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 51
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 51
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    return-object v0
.end method

.method static synthetic access$500(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 51
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getOutputWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 51
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getOutputHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 51
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    return-object v0
.end method

.method public static getBitmapForMultipleFilters(Landroid/graphics/Bitmap;Ljava/util/List;Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;",
            "Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;>;"
    .local p2, "listener":Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;, "Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    .line 338
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    :goto_0
    return-void

    .line 341
    :cond_0
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 342
    .local v2, "renderer":Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    invoke-virtual {v2, p0, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 343
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v3, v4}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;-><init>(II)V

    .line 344
    .local v0, "buffer":Ljp/co/cyberagent/android/gpuimage/PixelBuffer;
    invoke-virtual {v0, v2}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 346
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 347
    .local v1, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    invoke-virtual {v2, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 348
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {p2, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;->response(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->destroy()V

    goto :goto_1

    .line 351
    .end local v1    # "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    :cond_1
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 352
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->destroy()V

    goto :goto_0
.end method

.method private getOutputHeight()I
    .locals 4

    .prologue
    .line 419
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameHeight()I

    move-result v2

    .line 427
    :goto_0
    return v2

    .line 421
    :cond_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 424
    :cond_1
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    const-string v3, "window"

    .line 425
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 426
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 427
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method private getOutputWidth()I
    .locals 4

    .prologue
    .line 406
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameWidth()I

    move-result v2

    .line 414
    :goto_0
    return v2

    .line 408
    :cond_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 409
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_0

    .line 411
    :cond_1
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    const-string v3, "window"

    .line 412
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 413
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 414
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method private getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 252
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 255
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 258
    .local v8, "pathIndex":I
    const/4 v7, 0x0

    .line 259
    .local v7, "path":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    return-object v7
.end method

.method private setUpCameraGingerbread(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setUpSurfaceTexture(Landroid/hardware/Camera;)V

    .line 167
    return-void
.end method

.method private supportsOpenGLES2(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-string v2, "activity"

    .line 82
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 84
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 85
    .local v1, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteImage()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 230
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 231
    return-void
.end method

.method public getBitmapWithFilterApplied()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 282
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v4, :cond_0

    .line 283
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 284
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/GPUImage$1;

    invoke-direct {v5, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 294
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    monitor-enter v5

    .line 295
    :try_start_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :try_start_1
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :cond_0
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {v2, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 305
    .local v2, "renderer":Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    sget-object v4, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .line 306
    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->isFlippedHorizontally()Z

    move-result v5

    iget-object v6, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->isFlippedVertically()Z

    move-result v6

    .line 305
    invoke-virtual {v2, v4, v5, v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    .line 307
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    invoke-virtual {v2, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    .line 308
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v0, v4, v5}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;-><init>(II)V

    .line 309
    .local v0, "buffer":Ljp/co/cyberagent/android/gpuimage/PixelBuffer;
    invoke-virtual {v0, v2}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 310
    invoke-virtual {v2, p1, v7}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 311
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 312
    .local v3, "result":Landroid/graphics/Bitmap;
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->destroy()V

    .line 313
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 314
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->destroy()V

    .line 316
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 317
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 318
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v7}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 320
    :cond_1
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 322
    return-object v3

    .line 298
    .end local v0    # "buffer":Ljp/co/cyberagent/android/gpuimage/PixelBuffer;
    .end local v2    # "renderer":Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .end local v3    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 121
    :cond_0
    return-void
.end method

.method runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 402
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDrawEnd(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public saveToPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->saveToPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    .line 373
    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 111
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setBackgroundColor(FFF)V

    .line 112
    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 2
    .param p1, "filter"    # Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .prologue
    .line 176
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 177
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 178
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 179
    return-void
.end method

.method public setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 7
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 94
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 95
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 96
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 97
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 98
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 99
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 100
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 101
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 187
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 188
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 189
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 190
    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 239
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;

    invoke-direct {v0, p0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 248
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;

    invoke-direct {v0, p0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljava/io/File;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 249
    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V
    .locals 1
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/Rotation;

    .prologue
    .line 212
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V

    .line 213
    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V
    .locals 1
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/Rotation;
    .param p2, "flipHorizontal"    # Z
    .param p3, "flipVertical"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    .line 222
    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .prologue
    .line 199
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .line 200
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    .line 201
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 203
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 204
    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0, v0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCamera(Landroid/hardware/Camera;IZZ)V

    .line 130
    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;IZZ)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "degrees"    # I
    .param p3, "flipHorizontal"    # Z
    .param p4, "flipVertical"    # Z

    .prologue
    .line 142
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 144
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCameraGingerbread(Landroid/hardware/Camera;)V

    .line 149
    :goto_0
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    .line 150
    .local v0, "rotation":Ljp/co/cyberagent/android/gpuimage/Rotation;
    sparse-switch p2, :sswitch_data_0

    .line 161
    :goto_1
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v1, v0, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotationCamera(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    .line 162
    return-void

    .line 146
    .end local v0    # "rotation":Ljp/co/cyberagent/android/gpuimage/Rotation;
    :cond_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 147
    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    .line 152
    .restart local v0    # "rotation":Ljp/co/cyberagent/android/gpuimage/Rotation;
    :sswitch_0
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/Rotation;

    .line 153
    goto :goto_1

    .line 155
    :sswitch_1
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/Rotation;

    .line 156
    goto :goto_1

    .line 158
    :sswitch_2
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/Rotation;

    goto :goto_1

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
