.class public Lorg/opencv/android/CameraRenderer;
.super Lorg/opencv/android/CameraGLRendererBase;
.source "CameraRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "CameraRenderer"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mPreviewStarted:Z


# direct methods
.method constructor <init>(Lorg/opencv/android/CameraGLSurfaceView;)V
    .locals 1
    .param p1, "view"    # Lorg/opencv/android/CameraGLSurfaceView;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/opencv/android/CameraGLRendererBase;-><init>(Lorg/opencv/android/CameraGLSurfaceView;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/opencv/android/CameraRenderer;->mPreviewStarted:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected declared-synchronized closeCamera()V
    .locals 2

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraRenderer"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/opencv/android/CameraRenderer;->mPreviewStarted:Z

    .line 31
    iget-object v0, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized openCamera(I)V
    .locals 13
    .param p1, "id"    # I

    .prologue
    const/16 v12, 0x63

    const/16 v10, 0x62

    const/16 v11, 0x9

    .line 38
    monitor-enter p0

    :try_start_0
    const-string v8, "CameraRenderer"

    const-string v9, "openCamera"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lorg/opencv/android/CameraRenderer;->closeCamera()V

    .line 40
    const/4 v8, -0x1

    if-ne p1, v8, :cond_2

    .line 41
    const-string v8, "CameraRenderer"

    const-string v9, "Trying to open camera with old open()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v8

    iput-object v8, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    :try_start_2
    iget-object v8, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-nez v8, :cond_0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_0

    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, "connected":Z
    const/4 v1, 0x0

    .local v1, "camIdx":I
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 52
    const-string v8, "CameraRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to open camera with new open("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :try_start_3
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8

    iput-object v8, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    const/4 v3, 0x1

    .line 59
    :goto_2
    if-eqz v3, :cond_1

    .line 100
    .end local v1    # "camIdx":I
    .end local v3    # "connected":Z
    :cond_0
    :goto_3
    :try_start_4
    iget-object v8, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-nez v8, :cond_9

    .line 101
    const-string v8, "CameraRenderer"

    const-string v9, "Error: can\'t open camera"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :goto_4
    monitor-exit p0

    return-void

    .line 45
    :catch_0
    move-exception v4

    .line 46
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v8, "CameraRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Camera is not available (in use or does not exist): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 38
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 56
    .restart local v1    # "camIdx":I
    .restart local v3    # "connected":Z
    :catch_1
    move-exception v4

    .line 57
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v8, "CameraRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Camera #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "failed to open: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 51
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 63
    .end local v1    # "camIdx":I
    .end local v3    # "connected":Z
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_0

    .line 64
    iget v6, p0, Lorg/opencv/android/CameraRenderer;->mCameraIndex:I

    .line 65
    .local v6, "localCameraIndex":I
    iget v8, p0, Lorg/opencv/android/CameraRenderer;->mCameraIndex:I

    if-ne v8, v12, :cond_5

    .line 66
    const-string v8, "CameraRenderer"

    const-string v9, "Trying to open BACK camera"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 68
    .local v2, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .restart local v1    # "camIdx":I
    :goto_5
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 69
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 70
    iget v8, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v8, :cond_4

    .line 71
    move v6, v1

    .line 86
    .end local v1    # "camIdx":I
    .end local v2    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_3
    :goto_6
    if-ne v6, v12, :cond_7

    .line 87
    const-string v8, "CameraRenderer"

    const-string v9, "Back camera not found!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 68
    .restart local v1    # "camIdx":I
    .restart local v2    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 75
    .end local v1    # "camIdx":I
    .end local v2    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_5
    iget v8, p0, Lorg/opencv/android/CameraRenderer;->mCameraIndex:I

    if-ne v8, v10, :cond_3

    .line 76
    const-string v8, "CameraRenderer"

    const-string v9, "Trying to open FRONT camera"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 78
    .restart local v2    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .restart local v1    # "camIdx":I
    :goto_7
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 79
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 80
    iget v8, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 81
    move v6, v1

    .line 82
    goto :goto_6

    .line 78
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 88
    .end local v1    # "camIdx":I
    .end local v2    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_7
    if-ne v6, v10, :cond_8

    .line 89
    const-string v8, "CameraRenderer"

    const-string v9, "Front camera not found!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 91
    :cond_8
    const-string v8, "CameraRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to open camera with new open("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 93
    :try_start_7
    invoke-static {v6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8

    iput-object v8, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 94
    :catch_2
    move-exception v4

    .line 95
    .restart local v4    # "e":Ljava/lang/RuntimeException;
    :try_start_8
    const-string v8, "CameraRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Camera #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "failed to open: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 104
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "localCameraIndex":I
    :cond_9
    iget-object v8, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 105
    .local v7, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "FocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    const-string v8, "continuous-video"

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 108
    const-string v8, "continuous-video"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 110
    :cond_a
    iget-object v8, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 113
    :try_start_9
    iget-object v8, p0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    iget-object v9, p0, Lorg/opencv/android/CameraRenderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v8, v9}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 114
    :catch_3
    move-exception v5

    .line 115
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_a
    const-string v8, "CameraRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPreviewTexture() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4
.end method

.method public declared-synchronized setCameraPreviewSize(II)V
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    const-string v10, "CameraRenderer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setCameraPreviewSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-nez v10, :cond_0

    .line 123
    const-string v10, "CameraRenderer"

    const-string v11, "Camera isn\'t initialized!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v10, v0, Lorg/opencv/android/CameraRenderer;->mMaxCameraWidth:I

    if-lez v10, :cond_1

    move-object/from16 v0, p0

    iget v10, v0, Lorg/opencv/android/CameraRenderer;->mMaxCameraWidth:I

    move/from16 v0, p1

    if-ge v10, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/CameraRenderer;->mMaxCameraWidth:I

    move/from16 p1, v0

    .line 128
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lorg/opencv/android/CameraRenderer;->mMaxCameraHeight:I

    if-lez v10, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lorg/opencv/android/CameraRenderer;->mMaxCameraHeight:I

    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/CameraRenderer;->mMaxCameraHeight:I

    move/from16 p2, v0

    .line 130
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 131
    .local v6, "param":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    .line 132
    .local v7, "psize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v4, 0x0

    .local v4, "bestWidth":I
    const/4 v3, 0x0

    .line 133
    .local v3, "bestHeight":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 134
    move/from16 v0, p1

    int-to-float v10, v0

    move/from16 v0, p2

    int-to-float v11, v0

    div-float v2, v10, v11

    .line 135
    .local v2, "aspect":F
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 136
    .local v8, "size":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    .local v9, "w":I
    iget v5, v8, Landroid/hardware/Camera$Size;->height:I

    .line 137
    .local v5, "h":I
    const-string v11, "CameraRenderer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checking camera preview size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move/from16 v0, p1

    if-gt v9, v0, :cond_3

    move/from16 v0, p2

    if-gt v5, v0, :cond_3

    if-lt v9, v4, :cond_3

    if-lt v5, v3, :cond_3

    int-to-float v11, v9

    int-to-float v12, v5

    div-float/2addr v11, v12

    sub-float v11, v2, v11

    .line 140
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3fc999999999999aL    # 0.2

    cmpg-double v11, v12, v14

    if-gez v11, :cond_3

    .line 141
    move v4, v9

    .line 142
    move v3, v5

    goto :goto_1

    .line 145
    .end local v5    # "h":I
    .end local v8    # "size":Landroid/hardware/Camera$Size;
    .end local v9    # "w":I
    :cond_4
    if-lez v4, :cond_5

    if-gtz v3, :cond_8

    .line 146
    :cond_5
    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v4, v10, Landroid/hardware/Camera$Size;->width:I

    .line 147
    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v3, v10, Landroid/hardware/Camera$Size;->height:I

    .line 148
    const-string v10, "CameraRenderer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: best size was not selected, using "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " x "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/opencv/android/CameraRenderer;->mPreviewStarted:Z

    if-eqz v10, :cond_6

    .line 154
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->stopPreview()V

    .line 155
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/opencv/android/CameraRenderer;->mPreviewStarted:Z

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iput v4, v0, Lorg/opencv/android/CameraRenderer;->mCameraWidth:I

    .line 158
    move-object/from16 v0, p0

    iput v3, v0, Lorg/opencv/android/CameraRenderer;->mCameraHeight:I

    .line 159
    invoke-virtual {v6, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 161
    .end local v2    # "aspect":F
    :cond_7
    const-string v10, "orientation"

    const-string v11, "landscape"

    invoke-virtual {v6, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/opencv/android/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->startPreview()V

    .line 164
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/opencv/android/CameraRenderer;->mPreviewStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 121
    .end local v3    # "bestHeight":I
    .end local v4    # "bestWidth":I
    .end local v6    # "param":Landroid/hardware/Camera$Parameters;
    .end local v7    # "psize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 150
    .restart local v2    # "aspect":F
    .restart local v3    # "bestHeight":I
    .restart local v4    # "bestWidth":I
    .restart local v6    # "param":Landroid/hardware/Camera$Parameters;
    .restart local v7    # "psize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_8
    :try_start_2
    const-string v10, "CameraRenderer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selected best size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " x "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
