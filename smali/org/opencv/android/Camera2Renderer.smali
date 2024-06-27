.class public Lorg/opencv/android/Camera2Renderer;
.super Lorg/opencv/android/CameraGLRendererBase;
.source "Camera2Renderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field protected final LOGTAG:Ljava/lang/String;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraID:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method constructor <init>(Lorg/opencv/android/CameraGLSurfaceView;)V
    .locals 2
    .param p1, "view"    # Lorg/opencv/android/CameraGLSurfaceView;

    .prologue
    const/4 v1, -0x1

    .line 37
    invoke-direct {p0, p1}, Lorg/opencv/android/CameraGLRendererBase;-><init>(Lorg/opencv/android/CameraGLSurfaceView;)V

    .line 25
    const-string v0, "Camera2Renderer"

    iput-object v0, p0, Lorg/opencv/android/Camera2Renderer;->LOGTAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mPreviewSize:Landroid/util/Size;

    .line 34
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 162
    new-instance v0, Lorg/opencv/android/Camera2Renderer$1;

    invoke-direct {v0, p0}, Lorg/opencv/android/Camera2Renderer$1;-><init>(Lorg/opencv/android/Camera2Renderer;)V

    iput-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 38
    return-void
.end method

.method static synthetic access$002(Lorg/opencv/android/Camera2Renderer;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lorg/opencv/android/Camera2Renderer;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/opencv/android/Camera2Renderer;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$100(Lorg/opencv/android/Camera2Renderer;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/opencv/android/Camera2Renderer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$200(Lorg/opencv/android/Camera2Renderer;)V
    .locals 0
    .param p0, "x0"    # Lorg/opencv/android/Camera2Renderer;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/opencv/android/Camera2Renderer;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$300(Lorg/opencv/android/Camera2Renderer;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lorg/opencv/android/Camera2Renderer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$302(Lorg/opencv/android/Camera2Renderer;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lorg/opencv/android/Camera2Renderer;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/opencv/android/Camera2Renderer;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lorg/opencv/android/Camera2Renderer;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p0, "x0"    # Lorg/opencv/android/Camera2Renderer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$500(Lorg/opencv/android/Camera2Renderer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/opencv/android/Camera2Renderer;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createCameraPreviewSession()V
    .locals 8

    .prologue
    .line 188
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .local v3, "w":I
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 189
    .local v1, "h":I
    const-string v4, "Camera2Renderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCameraPreviewSession("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-ltz v3, :cond_0

    if-gez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 194
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v4, :cond_2

    .line 195
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 196
    const-string v4, "Camera2Renderer"

    const-string v5, "createCameraPreviewSession: camera isn\'t opened"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_1
    const-string v4, "Camera2Renderer"

    const-string v5, "createCameraPreviewSession"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_0
    move-exception v4

    throw v4

    .line 199
    :cond_2
    :try_start_2
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v4, :cond_3

    .line 200
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 201
    const-string v4, "Camera2Renderer"

    const-string v5, "createCameraPreviewSession: mCaptureSession is already started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 243
    :catch_1
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Interrupted while createCameraPreviewSession"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    if-nez v4, :cond_4

    .line 205
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 206
    const-string v4, "Camera2Renderer"

    const-string v5, "createCameraPreviewSession: preview SurfaceTexture is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_4
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 211
    new-instance v2, Landroid/view/Surface;

    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 213
    .local v2, "surface":Landroid/view/Surface;
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    .line 214
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 215
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 217
    iget-object v4, p0, Lorg/opencv/android/Camera2Renderer;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/opencv/android/Camera2Renderer$2;

    invoke-direct {v6, p0}, Lorg/opencv/android/Camera2Renderer$2;-><init>(Lorg/opencv/android/Camera2Renderer;)V

    iget-object v7, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "Camera2Renderer"

    const-string v1, "startBackgroundThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lorg/opencv/android/Camera2Renderer;->stopBackgroundThread()V

    .line 255
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 256
    iget-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundHandler:Landroid/os/Handler;

    .line 258
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3

    .prologue
    .line 261
    const-string v1, "Camera2Renderer"

    const-string v2, "stopBackgroundThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 266
    :try_start_0
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Camera2Renderer"

    const-string v2, "stopBackgroundThread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method cacPreviewSize(II)Z
    .locals 20
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 56
    const-string v12, "Camera2Renderer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cacPreviewSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/opencv/android/Camera2Renderer;->mCameraID:Ljava/lang/String;

    if-nez v12, :cond_0

    .line 58
    const-string v12, "Camera2Renderer"

    const-string v13, "Camera isn\'t initialized!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v12, 0x0

    .line 96
    :goto_0
    return v12

    .line 61
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/opencv/android/Camera2Renderer;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v12}, Lorg/opencv/android/CameraGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "camera"

    .line 62
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CameraManager;

    .line 64
    .local v8, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/opencv/android/Camera2Renderer;->mCameraID:Ljava/lang/String;

    .line 65
    invoke-virtual {v8, v12}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 66
    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 67
    invoke-virtual {v5, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 68
    .local v9, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/4 v4, 0x0

    .local v4, "bestWidth":I
    const/4 v3, 0x0

    .line 69
    .local v3, "bestHeight":I
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    .line 70
    .local v2, "aspect":F
    const-class v12, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v9, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_2

    aget-object v10, v13, v12

    .line 71
    .local v10, "psize":Landroid/util/Size;
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    .local v11, "w":I
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 72
    .local v7, "h":I
    const-string v15, "Camera2Renderer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "trying size: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    move/from16 v0, p1

    if-lt v0, v11, :cond_1

    move/from16 v0, p2

    if-lt v0, v7, :cond_1

    if-gt v4, v11, :cond_1

    if-gt v3, v7, :cond_1

    int-to-float v15, v11

    int-to-float v0, v7

    move/from16 v16, v0

    div-float v15, v15, v16

    sub-float v15, v2, v15

    .line 75
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3fc999999999999aL    # 0.2

    cmpg-double v15, v16, v18

    if-gez v15, :cond_1

    .line 76
    move v4, v11

    .line 77
    move v3, v7

    .line 70
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 80
    .end local v7    # "h":I
    .end local v10    # "psize":Landroid/util/Size;
    .end local v11    # "w":I
    :cond_2
    const-string v12, "Camera2Renderer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "best size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/opencv/android/Camera2Renderer;->mPreviewSize:Landroid/util/Size;

    .line 82
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    if-ne v12, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/opencv/android/Camera2Renderer;->mPreviewSize:Landroid/util/Size;

    .line 83
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    if-ne v12, v3, :cond_4

    .line 84
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 86
    :cond_4
    new-instance v12, Landroid/util/Size;

    invoke-direct {v12, v4, v3}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/opencv/android/Camera2Renderer;->mPreviewSize:Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 87
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 89
    .end local v2    # "aspect":F
    .end local v3    # "bestHeight":I
    .end local v4    # "bestWidth":I
    .end local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :catch_0
    move-exception v6

    .line 90
    .local v6, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v12, "Camera2Renderer"

    const-string v13, "cacPreviewSize - Camera Access Exception"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 91
    :catch_1
    move-exception v6

    .line 92
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v12, "Camera2Renderer"

    const-string v13, "cacPreviewSize - Illegal Argument Exception"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 93
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 94
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v12, "Camera2Renderer"

    const-string v13, "cacPreviewSize - Security Exception"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected closeCamera()V
    .locals 3

    .prologue
    .line 144
    const-string v1, "Camera2Renderer"

    const-string v2, "closeCamera"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 147
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_1
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 160
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock camera closing."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method protected doStart()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "Camera2Renderer"

    const-string v1, "doStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0}, Lorg/opencv/android/Camera2Renderer;->startBackgroundThread()V

    .line 44
    invoke-super {p0}, Lorg/opencv/android/CameraGLRendererBase;->doStart()V

    .line 45
    return-void
.end method

.method protected doStop()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "Camera2Renderer"

    const-string v1, "doStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0}, Lorg/opencv/android/CameraGLRendererBase;->doStop()V

    .line 52
    invoke-direct {p0}, Lorg/opencv/android/Camera2Renderer;->stopBackgroundThread()V

    .line 53
    return-void
.end method

.method protected openCamera(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 101
    const-string v6, "Camera2Renderer"

    const-string v7, "openCamera"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v6, p0, Lorg/opencv/android/Camera2Renderer;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v6}, Lorg/opencv/android/CameraGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    .line 104
    .local v4, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "camList":[Ljava/lang/String;
    array-length v6, v0

    if-nez v6, :cond_1

    .line 106
    const-string v5, "Camera2Renderer"

    const-string v6, "Error: camera isn\'t detected."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v0    # "camList":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v0    # "camList":[Ljava/lang/String;
    :cond_1
    const/4 v6, -0x1

    if-ne p1, v6, :cond_3

    .line 110
    const/4 v5, 0x0

    aget-object v5, v0, v5

    iput-object v5, p0, Lorg/opencv/android/Camera2Renderer;->mCameraID:Ljava/lang/String;

    .line 123
    :cond_2
    :goto_1
    iget-object v5, p0, Lorg/opencv/android/Camera2Renderer;->mCameraID:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 124
    iget-object v5, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x9c4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 125
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Time out waiting to lock camera opening."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 131
    .end local v0    # "camList":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v5, "Camera2Renderer"

    const-string v6, "OpenCamera - Camera Access Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v0    # "camList":[Ljava/lang/String;
    :cond_3
    :try_start_1
    array-length v7, v0

    move v6, v5

    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v1, v0, v6

    .line 113
    .local v1, "cameraID":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 114
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/16 v5, 0x63

    if-ne p1, v5, :cond_4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 115
    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    :cond_4
    const/16 v5, 0x62

    if-ne p1, v5, :cond_6

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 117
    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_6

    .line 118
    :cond_5
    iput-object v1, p0, Lorg/opencv/android/Camera2Renderer;->mCameraID:Ljava/lang/String;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 133
    .end local v0    # "camList":[Ljava/lang/String;
    .end local v1    # "cameraID":Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_1
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Camera2Renderer"

    const-string v6, "OpenCamera - Illegal Argument Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "camList":[Ljava/lang/String;
    .restart local v1    # "cameraID":Ljava/lang/String;
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2

    .line 128
    .end local v1    # "cameraID":Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_7
    :try_start_2
    const-string v5, "Camera2Renderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening camera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/opencv/android/Camera2Renderer;->mCameraID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v5, p0, Lorg/opencv/android/Camera2Renderer;->mCameraID:Ljava/lang/String;

    iget-object v6, p0, Lorg/opencv/android/Camera2Renderer;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v7, p0, Lorg/opencv/android/Camera2Renderer;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 135
    .end local v0    # "camList":[Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 136
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v5, "Camera2Renderer"

    const-string v6, "OpenCamera - Security Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v5, "Camera2Renderer"

    const-string v6, "OpenCamera - Interrupted Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected setCameraPreviewSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 276
    const-string v2, "Camera2Renderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraPreviewSize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget v2, p0, Lorg/opencv/android/Camera2Renderer;->mMaxCameraWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lorg/opencv/android/Camera2Renderer;->mMaxCameraWidth:I

    if-ge v2, p1, :cond_0

    iget p1, p0, Lorg/opencv/android/Camera2Renderer;->mMaxCameraWidth:I

    .line 278
    :cond_0
    iget v2, p0, Lorg/opencv/android/Camera2Renderer;->mMaxCameraHeight:I

    if-lez v2, :cond_1

    iget v2, p0, Lorg/opencv/android/Camera2Renderer;->mMaxCameraHeight:I

    if-ge v2, p2, :cond_1

    iget p2, p0, Lorg/opencv/android/Camera2Renderer;->mMaxCameraHeight:I

    .line 280
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 282
    invoke-virtual {p0, p1, p2}, Lorg/opencv/android/Camera2Renderer;->cacPreviewSize(II)Z

    move-result v1

    .line 283
    .local v1, "needReconfig":Z
    iget-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, p0, Lorg/opencv/android/Camera2Renderer;->mCameraWidth:I

    .line 284
    iget-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, p0, Lorg/opencv/android/Camera2Renderer;->mCameraHeight:I

    .line 286
    if-nez v1, :cond_2

    .line 287
    iget-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 301
    :goto_0
    return-void

    .line 290
    :cond_2
    iget-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_3

    .line 291
    const-string v2, "Camera2Renderer"

    const-string v3, "closing existing previewSession"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 293
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 295
    :cond_3
    iget-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 296
    invoke-direct {p0}, Lorg/opencv/android/Camera2Renderer;->createCameraPreviewSession()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v1    # "needReconfig":Z
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lorg/opencv/android/Camera2Renderer;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 299
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while setCameraPreviewSize."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
