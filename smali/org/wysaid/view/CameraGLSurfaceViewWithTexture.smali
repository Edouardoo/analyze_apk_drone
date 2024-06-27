.class public Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;
.super Lorg/wysaid/view/CameraGLSurfaceView;
.source "CameraGLSurfaceViewWithTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

.field protected mIsTransformMatrixSet:Z

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mTextureID:I

.field protected mTransformMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lorg/wysaid/view/CameraGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mIsTransformMatrixSet:Z

    .line 169
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mTransformMatrix:[F

    .line 93
    return-void
.end method


# virtual methods
.method public getRecorder()Lorg/wysaid/nativePort/CGEFrameRenderer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/camera/CameraInstance;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 180
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 181
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mTextureID:I

    iget-object v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mTransformMatrix:[F

    invoke-virtual {v0, v1, v2}, Lorg/wysaid/nativePort/CGEFrameRenderer;->update(I[F)V

    .line 183
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEFrameRenderer;->runProc()V

    .line 185
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 186
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 187
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 189
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v1, v1, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->x:I

    iget-object v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v2, v2, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->y:I

    iget-object v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v3, v3, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->width:I

    iget-object v4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mDrawViewport:Lorg/wysaid/view/CameraGLSurfaceView$Viewport;

    iget v4, v4, Lorg/wysaid/view/CameraGLSurfaceView$Viewport;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/wysaid/nativePort/CGEFrameRenderer;->render(IIII)V

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->requestRender()V

    .line 214
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-super {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->onRelease()V

    .line 116
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 118
    iput-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 121
    :cond_0
    iget v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mTextureID:I

    if-eqz v0, :cond_1

    .line 122
    iget v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mTextureID:I

    invoke-static {v0}, Lorg/wysaid/common/Common;->deleteTextureID(I)V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mTextureID:I

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEFrameRenderer;->release()V

    .line 128
    iput-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    .line 130
    :cond_2
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Lorg/wysaid/view/CameraGLSurfaceView;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 137
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/camera/CameraInstance;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->resumePreview()V

    .line 140
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 97
    new-instance v0, Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-direct {v0}, Lorg/wysaid/nativePort/CGEFrameRenderer;-><init>()V

    iput-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mIsTransformMatrixSet:Z

    .line 99
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordWidth:I

    iget v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordHeight:I

    iget v3, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordWidth:I

    iget v4, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mRecordHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/wysaid/nativePort/CGEFrameRenderer;->init(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "libCGE_java"

    const-string v1, "Frame Recorder init failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    const v1, 0x3fc90fdb

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setSrcRotation(F)V

    .line 104
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0, v6, v5}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setSrcFlipScale(FF)V

    .line 105
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0, v6, v5}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setRenderFlipScale(FF)V

    .line 107
    invoke-static {}, Lorg/wysaid/common/Common;->genSurfaceTextureID()I

    move-result v0

    iput v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mTextureID:I

    .line 108
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mTextureID:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 109
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 111
    invoke-super {p0, p1, p2}, Lorg/wysaid/view/CameraGLSurfaceView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 112
    return-void
.end method

.method protected onSwitchCamera()V
    .locals 3

    .prologue
    .line 218
    invoke-super {p0}, Lorg/wysaid/view/CameraGLSurfaceView;->onSwitchCamera()V

    .line 219
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    const v1, 0x3fc90fdb

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setSrcRotation(F)V

    .line 221
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lorg/wysaid/nativePort/CGEFrameRenderer;->setRenderFlipScale(FF)V

    .line 223
    :cond_0
    return-void
.end method

.method public resumePreview()V
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-nez v1, :cond_0

    .line 145
    const-string v1, "libCGE_java"

    const-string v2, "resumePreview after release!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wysaid/camera/CameraInstance;->isCameraOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-boolean v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mIsCameraBackForward:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 153
    .local v0, "facing":I
    :goto_1
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v1

    new-instance v2, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$4;

    invoke-direct {v2, p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$4;-><init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;)V

    invoke-virtual {v1, v2, v0}, Lorg/wysaid/camera/CameraInstance;->tryOpenCamera(Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;I)Z

    .line 161
    .end local v0    # "facing":I
    :cond_1
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wysaid/camera/CameraInstance;->isPreviewing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v1

    iget-object v2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lorg/wysaid/camera/CameraInstance;->startPreview(Landroid/graphics/SurfaceTexture;)V

    .line 163
    iget-object v1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wysaid/camera/CameraInstance;->previewHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wysaid/camera/CameraInstance;->previewWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/wysaid/nativePort/CGEFrameRenderer;->srcResize(II)V

    .line 166
    :cond_2
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->requestRender()V

    goto :goto_0

    .line 151
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setFilterIntensity(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 64
    new-instance v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$2;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$2;-><init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;F)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->queueEvent(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public declared-synchronized setFilterWithConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$1;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$1;-><init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnCreateCallback(Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mOnCreateCallback:Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$3;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$3;-><init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setPictureSize(IIZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isBigger"    # Z

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lorg/wysaid/camera/CameraInstance;->setPictureSize(IIZ)V

    .line 268
    return-void
.end method

.method public declared-synchronized takePicture(Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;Landroid/hardware/Camera$ShutterCallback;Ljava/lang/String;FZ)V
    .locals 10
    .param p1, "photoCallback"    # Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;
    .param p2, "shutterCallback"    # Landroid/hardware/Camera$ShutterCallback;
    .param p3, "config"    # Ljava/lang/String;
    .param p4, "intensity"    # F
    .param p5, "isFrontMirror"    # Z

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/camera/CameraInstance;->getParams()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 274
    .local v7, "params":Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_0

    if-nez v7, :cond_2

    .line 275
    :cond_0
    const-string v0, "libCGE_java"

    const-string v1, "takePicture after release!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    if-eqz p1, :cond_1

    .line 277
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;->takePictureOK(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_2
    const/16 v0, 0x5a

    :try_start_1
    invoke-virtual {v7, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 284
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/wysaid/camera/CameraInstance;->setParams(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :try_start_2
    invoke-virtual {p0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->cameraInstance()Lorg/wysaid/camera/CameraInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/camera/CameraInstance;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;

    move-object v1, p0

    move v2, p5

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$6;-><init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;ZLjava/lang/String;FLorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;)V

    invoke-virtual {v8, p2, v9, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 272
    .end local v7    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 285
    .restart local v7    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v6

    .line 286
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "libCGE_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when takePicture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz p1, :cond_1

    .line 288
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;->takePictureOK(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public takeShot(Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;)V
    .locals 2
    .param p1, "callback"    # Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;

    .prologue
    .line 227
    sget-boolean v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "callback must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-nez v0, :cond_1

    .line 230
    const-string v0, "libCGE_java"

    const-string v1, "Recorder not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;->takePictureOK(Landroid/graphics/Bitmap;)V

    .line 261
    :goto_0
    return-void

    .line 235
    :cond_1
    new-instance v0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$5;-><init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;Lorg/wysaid/view/CameraGLSurfaceView$TakePictureCallback;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
