.class public Lorg/wysaid/view/ImageGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "ImageGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wysaid/view/ImageGLSurfaceView$OnSurfaceCreatedCallback;,
        Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;,
        Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"


# instance fields
.field protected mDisplayMode:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

.field protected mFilterIntensity:F

.field protected mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

.field protected mSettingIntensityCount:I

.field protected final mSettingIntensityLock:Ljava/lang/Object;

.field protected mSurfaceCreatedCallback:Lorg/wysaid/view/ImageGLSurfaceView$OnSurfaceCreatedCallback;

.field protected mViewHeight:I

.field protected mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 279
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mFilterIntensity:F

    .line 41
    new-instance v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRenderer$Viewport;-><init>()V

    iput-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    .line 60
    sget-object v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->DISPLAY_SCALE_TO_FILL:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    iput-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mDisplayMode:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityLock:Ljava/lang/Object;

    .line 92
    iput v7, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    .line 281
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->setEGLContextClientVersion(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 282
    invoke-virtual/range {v0 .. v6}, Lorg/wysaid/view/ImageGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 283
    invoke-virtual {p0}, Lorg/wysaid/view/ImageGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 284
    invoke-virtual {p0, p0}, Lorg/wysaid/view/ImageGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 285
    invoke-virtual {p0, v6}, Lorg/wysaid/view/ImageGLSurfaceView;->setRenderMode(I)V

    .line 288
    const-string v0, "libCGE_java"

    const-string v1, "ImageGLSurfaceView Construct..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method


# virtual methods
.method protected calcViewport()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x0

    .line 357
    iget-object v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mDisplayMode:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    sget-object v6, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->DISPLAY_SCALE_TO_FILL:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    if-ne v5, v6, :cond_0

    .line 358
    iget-object v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iput v9, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    .line 359
    iget-object v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iput v9, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    .line 360
    iget-object v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v6, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewWidth:I

    iput v6, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    .line 361
    iget-object v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v6, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewHeight:I

    iput v6, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    .line 410
    :goto_0
    return-void

    .line 367
    :cond_0
    iget v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageWidth:I

    int-to-float v5, v5

    iget v6, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHeight:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 369
    .local v2, "scaling":F
    iget v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    iget v6, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewHeight:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 370
    .local v3, "viewRatio":F
    div-float v1, v2, v3

    .line 374
    .local v1, "s":F
    sget-object v5, Lorg/wysaid/view/ImageGLSurfaceView$9;->$SwitchMap$org$wysaid$view$ImageGLSurfaceView$DisplayMode:[I

    iget-object v6, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mDisplayMode:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    invoke-virtual {v6}, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 399
    const-string v5, "libCGE_java"

    const-string v6, "Error occured, please check the code..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :pswitch_0
    float-to-double v6, v1

    cmpl-double v5, v6, v10

    if-lez v5, :cond_1

    .line 378
    iget v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 379
    .local v4, "w":I
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewHeight:I

    .line 404
    .local v0, "h":I
    :goto_1
    iget-object v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iput v4, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    .line 405
    iget-object v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iput v0, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    .line 406
    iget-object v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v6, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewWidth:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    .line 407
    iget-object v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v6, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewHeight:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    .line 409
    const-string v5, "libCGE_java"

    const-string v6, "View port: %d, %d, %d, %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v8, v8, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_1
    iget v4, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewWidth:I

    .line 382
    .restart local v4    # "w":I
    iget v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v0, v5

    .line 385
    .restart local v0    # "h":I
    goto :goto_1

    .line 388
    .end local v0    # "h":I
    .end local v4    # "w":I
    :pswitch_1
    float-to-double v6, v1

    cmpg-double v5, v6, v10

    if-gez v5, :cond_2

    .line 389
    iget v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 390
    .restart local v4    # "w":I
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewHeight:I

    .restart local v0    # "h":I
    goto :goto_1

    .line 392
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_2
    iget v4, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewWidth:I

    .line 393
    .restart local v4    # "w":I
    iget v5, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v0, v5

    .line 396
    .restart local v0    # "h":I
    goto :goto_1

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public flush(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "runFilter"    # Z
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$4;

    invoke-direct {v0, p0, p2, p1}, Lorg/wysaid/view/ImageGLSurfaceView$4;-><init>(Lorg/wysaid/view/ImageGLSurfaceView;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getDisplayMode()Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mDisplayMode:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    return-object v0
.end method

.method public getImageHandler()Lorg/wysaid/nativePort/CGEImageHandler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageWidth:I

    return v0
.end method

.method public getImageheight()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHeight:I

    return v0
.end method

.method public getRenderViewport()Lorg/wysaid/texUtils/TextureRenderer$Viewport;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    return-object v0
.end method

.method public getResultBitmap(Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$7;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/ImageGLSurfaceView$7;-><init>(Lorg/wysaid/view/ImageGLSurfaceView;Lorg/wysaid/view/ImageGLSurfaceView$QueryResultBitmapCallback;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public lazyFlush(ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "runFilter"    # Z
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    if-gtz v0, :cond_2

    .line 196
    const-string v0, "libCGE_java"

    const-string v2, "Too fast, skipping..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit v1

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 199
    :cond_2
    :try_start_1
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    .line 200
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$5;

    invoke-direct {v0, p0, p1, p2}, Lorg/wysaid/view/ImageGLSurfaceView$5;-><init>(Lorg/wysaid/view/ImageGLSurfaceView;ZLjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 328
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 329
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 331
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v0, v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    iget-object v1, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v1, v1, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    iget-object v2, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v2, v2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget-object v3, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v3, v3, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 335
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEImageHandler;->drawResult()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 320
    iput p2, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewWidth:I

    .line 321
    iput p3, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mViewHeight:I

    .line 322
    invoke-virtual {p0}, Lorg/wysaid/view/ImageGLSurfaceView;->calcViewport()V

    .line 323
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 303
    const-string v0, "libCGE_java"

    const-string v1, "ImageGLSurfaceView onSurfaceCreated..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 306
    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 308
    new-instance v0, Lorg/wysaid/nativePort/CGEImageHandler;

    invoke-direct {v0}, Lorg/wysaid/nativePort/CGEImageHandler;-><init>()V

    iput-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    .line 310
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lorg/wysaid/nativePort/CGEImageHandler;->setDrawerFlipScale(FF)V

    .line 312
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSurfaceCreatedCallback:Lorg/wysaid/view/ImageGLSurfaceView$OnSurfaceCreatedCallback;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSurfaceCreatedCallback:Lorg/wysaid/view/ImageGLSurfaceView$OnSurfaceCreatedCallback;

    invoke-interface {v0}, Lorg/wysaid/view/ImageGLSurfaceView$OnSurfaceCreatedCallback;->surfaceCreated()V

    .line 315
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$8;

    invoke-direct {v0, p0}, Lorg/wysaid/view/ImageGLSurfaceView$8;-><init>(Lorg/wysaid/view/ImageGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 353
    :cond_0
    return-void
.end method

.method public setDisplayMode(Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;)V
    .locals 0
    .param p1, "displayMode"    # Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mDisplayMode:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    .line 68
    invoke-virtual {p0}, Lorg/wysaid/view/ImageGLSurfaceView;->calcViewport()V

    .line 69
    invoke-virtual {p0}, Lorg/wysaid/view/ImageGLSurfaceView;->requestRender()V

    .line 70
    return-void
.end method

.method public setFilterIntensity(F)V
    .locals 3
    .param p1, "intensity"    # F

    .prologue
    .line 135
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 138
    :cond_0
    iput p1, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mFilterIntensity:F

    .line 140
    iget-object v1, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    if-gtz v0, :cond_1

    .line 143
    const-string v0, "libCGE_java"

    const-string v2, "Too fast, skipping..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v1

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 146
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    .line 147
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$3;

    invoke-direct {v0, p0}, Lorg/wysaid/view/ImageGLSurfaceView$3;-><init>(Lorg/wysaid/view/ImageGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setFilterIntensityForIndex(FI)V
    .locals 1
    .param p1, "intensity"    # F
    .param p2, "index"    # I

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->setFilterIntensityForIndex(FIZ)V

    .line 96
    return-void
.end method

.method public setFilterIntensityForIndex(FIZ)V
    .locals 3
    .param p1, "intensity"    # F
    .param p2, "index"    # I
    .param p3, "shouldProcess"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 103
    :cond_0
    iput p1, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mFilterIntensity:F

    .line 105
    iget-object v1, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    if-gtz v0, :cond_1

    .line 108
    const-string v0, "libCGE_java"

    const-string v2, "Too fast, skipping..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-exit v1

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 111
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    .line 112
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$2;

    invoke-direct {v0, p0, p2, p3}, Lorg/wysaid/view/ImageGLSurfaceView$2;-><init>(Lorg/wysaid/view/ImageGLSurfaceView;IZ)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setFilterWithConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$1;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/ImageGLSurfaceView$1;-><init>(Lorg/wysaid/view/ImageGLSurfaceView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_1

    .line 230
    const-string v0, "libCGE_java"

    const-string v1, "Handler not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageWidth:I

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHeight:I

    .line 237
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$6;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/ImageGLSurfaceView$6;-><init>(Lorg/wysaid/view/ImageGLSurfaceView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/ImageGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSurfaceCreatedCallback(Lorg/wysaid/view/ImageGLSurfaceView$OnSurfaceCreatedCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/wysaid/view/ImageGLSurfaceView$OnSurfaceCreatedCallback;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/wysaid/view/ImageGLSurfaceView;->mSurfaceCreatedCallback:Lorg/wysaid/view/ImageGLSurfaceView$OnSurfaceCreatedCallback;

    .line 299
    return-void
.end method
