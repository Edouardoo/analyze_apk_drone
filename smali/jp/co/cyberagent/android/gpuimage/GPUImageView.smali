.class public Ljp/co/cyberagent/android/gpuimage/GPUImageView;
.super Landroid/widget/FrameLayout;
.source "GPUImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$LoadingView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;
    }
.end annotation


# instance fields
.field private mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

.field public mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

.field private mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    .line 51
    invoke-direct {p0, p1, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    .line 56
    invoke-direct {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    .prologue
    .line 41
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 61
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->addView(Landroid/view/View;)V

    .line 62
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .line 63
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 64
    return-void
.end method


# virtual methods
.method public capture()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v5, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 303
    .local v5, "waiter":Ljava/util/concurrent/Semaphore;
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getMeasuredWidth()I

    move-result v2

    .line 304
    .local v2, "width":I
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getMeasuredHeight()I

    move-result v3

    .line 307
    .local v3, "height":I
    mul-int v0, v2, v3

    new-array v4, v0, [I

    .line 308
    .local v4, "pixelMirroredArray":[I
    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;II[ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v7, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 324
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 325
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 327
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 328
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 329
    return-object v6
.end method

.method public capture(II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 233
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Do not call this method from the UI thread!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_0
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    invoke-direct {v2, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;-><init>(II)V

    iput-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 238
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 241
    .local v1, "waiter":Ljava/util/concurrent/Semaphore;
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Ljp/co/cyberagent/android/gpuimage/GPUImageView$1;

    invoke-direct {v3, p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 252
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;

    invoke-direct {v2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    invoke-virtual {p0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->post(Ljava/lang/Runnable;)Z

    .line 261
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 264
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v3, Ljp/co/cyberagent/android/gpuimage/GPUImageView$3;

    invoke-direct {v3, p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$3;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 271
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 272
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 276
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$4;

    invoke-direct {v2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$4;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    invoke-virtual {p0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->post(Ljava/lang/Runnable;)Z

    .line 282
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 284
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$5;

    invoke-direct {v2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$5;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    return-object v0
.end method

.method public getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object v0
.end method

.method public getGPUImage()Ljp/co/cyberagent/android/gpuimage/GPUImage;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 68
    iget v6, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 70
    .local v5, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 74
    .local v0, "height":I
    int-to-float v6, v5

    iget v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    div-float/2addr v6, v7

    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 75
    move v3, v5

    .line 76
    .local v3, "newWidth":I
    int-to-float v6, v5

    iget v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 82
    .local v1, "newHeight":I
    :goto_0
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 83
    .local v4, "newWidthSpec":I
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 84
    .local v2, "newHeightSpec":I
    invoke-super {p0, v4, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 88
    .end local v0    # "height":I
    .end local v1    # "newHeight":I
    .end local v2    # "newHeightSpec":I
    .end local v3    # "newWidth":I
    .end local v4    # "newWidthSpec":I
    .end local v5    # "width":I
    :goto_1
    return-void

    .line 78
    .restart local v0    # "height":I
    .restart local v5    # "width":I
    :cond_0
    move v1, v0

    .line 79
    .restart local v1    # "newHeight":I
    int-to-float v6, v0

    iget v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .restart local v3    # "newWidth":I
    goto :goto_0

    .line 86
    .end local v0    # "height":I
    .end local v1    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v5    # "width":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 337
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 344
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 185
    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 7
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    .prologue
    .line 219
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    .prologue
    .line 200
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 107
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setBackgroundColor(FFF)V

    .line 108
    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1
    .param p1, "filter"    # Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .prologue
    .line 142
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 143
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 144
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 145
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 162
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 163
    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 171
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/net/Uri;)V

    .line 172
    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 180
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Ljava/io/File;)V

    .line 181
    return-void
.end method

.method public setRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 112
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    .line 113
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestLayout()V

    .line 114
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->deleteImage()V

    .line 115
    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V
    .locals 1
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/Rotation;

    .prologue
    .line 132
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V

    .line 133
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 134
    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .prologue
    .line 123
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    .line 124
    return-void
.end method
