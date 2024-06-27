.class public Lorg/wysaid/view/CameraGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "CameraGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;,
        Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;,
        Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;,
        Lorg/wysaid/view/CameraGLSurfaceView$Viewport;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"


# instance fields
.field protected mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

.field protected mFitFullView:Z

.field protected mIsCameraBackForward:Z

.field protected mMaxPreviewHeight:I

.field protected mMaxPreviewWidth:I

.field public mMaxTextureSize:I

.field protected mOnCreateCallback:Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;

.field protected mRecordHeight:I

.field protected mRecordWidth:I

.field protected mViewHeight:I

.field protected mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v2, 0x500

    const/4 v7, 0x1

    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxTextureSize:I

    .line 45
    const/16 v0, 0x1e0

    iput v0, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mRecordWidth:I

    .line 46
    const/16 v0, 0x280

    iput v0, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mRecordHeight:I

    .line 94
    iput v2, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxPreviewWidth:I

    .line 95
    iput v2, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxPreviewHeight:I

    .line 101
    new-instance v0, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    invoke-direct {v0}, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;-><init>()V

    iput-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    .line 113
    iput-boolean v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mFitFullView:Z

    .line 121
    iput-boolean v7, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mIsCameraBackForward:Z

    .line 29
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/wysaid/view/CameraGLSurfaceView;->setEGLContextClientVersion(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 30
    invoke-virtual/range {v0 .. v6}, Lorg/wysaid/view/CameraGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 31
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 32
    invoke-virtual {p0, p0}, Lorg/wysaid/view/CameraGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 33
    invoke-virtual {p0, v5}, Lorg/wysaid/view/CameraGLSurfaceView;->setRenderMode(I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected calcViewport()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 298
    iget v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mRecordWidth:I

    int-to-float v5, v5

    iget v6, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mRecordHeight:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 299
    .local v2, "scaling":F
    iget v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    iget v6, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewHeight:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 300
    .local v3, "viewRatio":F
    div-float v1, v2, v3

    .line 304
    .local v1, "s":F
    iget-boolean v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mFitFullView:Z

    if-eqz v5, :cond_1

    .line 306
    float-to-double v6, v1

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    .line 307
    iget v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 308
    .local v4, "w":I
    iget v0, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewHeight:I

    .line 324
    .local v0, "h":I
    :goto_0
    iget-object v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iput v4, v5, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->width:I

    .line 325
    iget-object v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iput v0, v5, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->height:I

    .line 326
    iget-object v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v6, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewWidth:I

    iget-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v7, v7, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->x:I

    .line 327
    iget-object v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v6, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewHeight:I

    iget-object v7, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v7, v7, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->height:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->y:I

    .line 328
    const-string v5, "libCGE_java"

    const-string v6, "View port: %d, %d, %d, %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v9, v9, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->x:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v9, v9, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v9, v9, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v9, v9, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 310
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_0
    iget v4, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewWidth:I

    .line 311
    .restart local v4    # "w":I
    iget v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v0, v5

    .restart local v0    # "h":I
    goto :goto_0

    .line 315
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_1
    float-to-double v6, v1

    cmpl-double v5, v6, v8

    if-lez v5, :cond_2

    .line 316
    iget v4, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewWidth:I

    .line 317
    .restart local v4    # "w":I
    iget v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v0, v5

    .restart local v0    # "h":I
    goto :goto_0

    .line 319
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_2
    iget v0, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewHeight:I

    .line 320
    .restart local v0    # "h":I
    iget v5, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .restart local v4    # "w":I
    goto :goto_0
.end method

.method public cameraInstance()Lorg/wysaid/camera/CameraInstance;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lorg/wysaid/camera/CameraInstance;->getInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    return-object v0
.end method

.method public focusAtPoint(FFLandroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "focusCallback"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, p2, v1, p3}, Lorg/wysaid/camera/CameraInstance;->focusAtPoint(FFLandroid/hardware/Camera$AutoFocusCallback;)V

    .line 196
    return-void
.end method

.method public getDrawViewport()Lorg/wysaid/view/CameraGLSurfaceView$Viewport;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    return-object v0
.end method

.method public isCameraBackForward()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mIsCameraBackForward:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 248
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "libCGE_java"

    const-string v1, "glsurfaceview onPause in..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/camera/CameraInstance;->stopCamera()V

    .line 261
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 262
    const-string v0, "libCGE_java"

    const-string v1, "glsurfaceview onPause out..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 253
    const-string v0, "libCGE_java"

    const-string v1, "glsurfaceview onResume..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 235
    const-string v0, "libCGE_java"

    const-string v1, "onSurfaceChanged: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 239
    iput p2, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewWidth:I

    .line 240
    iput p3, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mViewHeight:I

    .line 242
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->calcViewport()V

    .line 243
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v3, 0x0

    .line 217
    const-string v1, "libCGE_java"

    const-string v2, "onSurfaceCreated..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 220
    const/16 v1, 0xb90

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 221
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 223
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 225
    .local v0, "texSize":[I
    const/16 v1, 0xd33

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 226
    aget v1, v0, v3

    iput v1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxTextureSize:I

    .line 228
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mOnCreateCallback:Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mOnCreateCallback:Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;

    invoke-interface {v1}, Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;->createOver()V

    .line 231
    :cond_0
    return-void
.end method

.method protected onSwitchCamera()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public presetCameraForward(Z)V
    .locals 0
    .param p1, "isBackForward"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mIsCameraBackForward:Z

    .line 134
    return-void
.end method

.method public presetRecordingSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 140
    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxPreviewWidth:I

    if-gt p1, v1, :cond_0

    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxPreviewHeight:I

    if-le p2, v1, :cond_1

    .line 141
    :cond_0
    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxPreviewWidth:I

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    iget v2, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxPreviewHeight:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 142
    .local v0, "scaling":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int p1, v1

    .line 143
    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int p2, v1

    .line 146
    .end local v0    # "scaling":F
    :cond_1
    iput p1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mRecordWidth:I

    .line 147
    iput p2, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mRecordHeight:I

    .line 148
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/wysaid/camera/CameraInstance;->setPreferPreviewSize(II)V

    .line 149
    return-void
.end method

.method public final release(Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;

    .prologue
    .line 275
    new-instance v0, Lorg/wysaid/view/CameraGLSurfaceView$3;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/CameraGLSurfaceView$3;-><init>(Lorg/wysaid/view/CameraGLSurfaceView;Lorg/wysaid/view/CameraGLSurfaceView$ReleaseOKCallback;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/CameraGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public resumePreview()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public setFitFullView(Z)V
    .locals 0
    .param p1, "fit"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mFitFullView:Z

    .line 117
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->calcViewport()V

    .line 118
    return-void
.end method

.method public declared-synchronized setFlashLightMode(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 63
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.camera.flash"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    const-string v3, "libCGE_java"

    const-string v4, "No flash light is supported by current device!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 68
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mIsCameraBackForward:Z

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wysaid/camera/CameraInstance;->getParams()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 74
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_0

    .line 79
    :try_start_2
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    const-string v3, "libCGE_java"

    const-string v4, "Invalid Flash Light Mode!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "libCGE_java"

    const-string v4, "Switch flash light failed, check if you\'re using front camera."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 84
    .restart local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    :try_start_4
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/wysaid/camera/CameraInstance;->setParams(Landroid/hardware/Camera$Parameters;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    const/4 v2, 0x1

    goto :goto_0
.end method

.method setMaxPreviewSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxPreviewWidth:I

    .line 110
    iput p2, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mMaxPreviewHeight:I

    .line 111
    return-void
.end method

.method public setOnCreateCallback(Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;

    .prologue
    .line 212
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mOnCreateCallback:Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;

    .line 213
    return-void
.end method

.method public setPictureSize(IIZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isBigger"    # Z

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lorg/wysaid/camera/CameraInstance;->setPictureSize(IIZ)V

    .line 53
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lorg/wysaid/view/CameraGLSurfaceView$1;

    invoke-direct {v0, p0}, Lorg/wysaid/view/CameraGLSurfaceView$1;-><init>(Lorg/wysaid/view/CameraGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/CameraGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 201
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/camera/CameraInstance;->stopCamera()V

    .line 202
    return-void
.end method

.method public final switchCamera()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mIsCameraBackForward:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/wysaid/view/CameraGLSurfaceView;->mIsCameraBackForward:Z

    .line 171
    new-instance v0, Lorg/wysaid/view/CameraGLSurfaceView$2;

    invoke-direct {v0, p0}, Lorg/wysaid/view/CameraGLSurfaceView$2;-><init>(Lorg/wysaid/view/CameraGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/CameraGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 189
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeShot(Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;

    .prologue
    .line 294
    return-void
.end method
