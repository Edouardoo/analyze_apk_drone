.class public Lorg/opencv/android/JavaCameraView;
.super Lorg/opencv/android/CameraBridgeViewBase;
.source "JavaCameraView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/opencv/android/JavaCameraView$CameraWorker;,
        Lorg/opencv/android/JavaCameraView$JavaCameraFrame;,
        Lorg/opencv/android/JavaCameraView$JavaCameraSizeAccessor;
    }
.end annotation


# static fields
.field private static final MAGIC_TEXTURE_ID:I = 0xa

.field private static final TAG:Ljava/lang/String; = "JavaCameraView"


# instance fields
.field private mBuffer:[B

.field protected mCamera:Landroid/hardware/Camera;

.field protected mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

.field private mCameraFrameReady:Z

.field private mChainIdx:I

.field private mFrameChain:[Lorg/opencv/core/Mat;

.field private mPreviewFormat:I

.field private mStopThread:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;-><init>(Landroid/content/Context;I)V

    .line 37
    iput v1, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    .line 44
    const/16 v0, 0x11

    iput v0, p0, Lorg/opencv/android/JavaCameraView;->mPreviewFormat:I

    .line 249
    iput-boolean v1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v1, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    .line 44
    const/16 v0, 0x11

    iput v0, p0, Lorg/opencv/android/JavaCameraView;->mPreviewFormat:I

    .line 249
    iput-boolean v1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    .line 67
    return-void
.end method

.method static synthetic access$100(Lorg/opencv/android/JavaCameraView;)I
    .locals 1
    .param p0, "x0"    # Lorg/opencv/android/JavaCameraView;

    .prologue
    .line 30
    iget v0, p0, Lorg/opencv/android/JavaCameraView;->mPreviewFormat:I

    return v0
.end method

.method static synthetic access$200(Lorg/opencv/android/JavaCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/opencv/android/JavaCameraView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    return v0
.end method

.method static synthetic access$202(Lorg/opencv/android/JavaCameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/opencv/android/JavaCameraView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    return p1
.end method

.method static synthetic access$300(Lorg/opencv/android/JavaCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/opencv/android/JavaCameraView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/opencv/android/JavaCameraView;->mStopThread:Z

    return v0
.end method

.method static synthetic access$400(Lorg/opencv/android/JavaCameraView;)I
    .locals 1
    .param p0, "x0"    # Lorg/opencv/android/JavaCameraView;

    .prologue
    .line 30
    iget v0, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    return v0
.end method

.method static synthetic access$402(Lorg/opencv/android/JavaCameraView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/opencv/android/JavaCameraView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    return p1
.end method

.method static synthetic access$500(Lorg/opencv/android/JavaCameraView;)[Lorg/opencv/core/Mat;
    .locals 1
    .param p0, "x0"    # Lorg/opencv/android/JavaCameraView;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    return-object v0
.end method


# virtual methods
.method protected connectCamera(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 258
    const-string v1, "JavaCameraView"

    const-string v2, "Connecting to camera"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/opencv/android/JavaCameraView;->initializeCamera(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return v0

    .line 262
    :cond_0
    iput-boolean v0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    .line 265
    const-string v1, "JavaCameraView"

    const-string v2, "Starting processing thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-boolean v0, p0, Lorg/opencv/android/JavaCameraView;->mStopThread:Z

    .line 267
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/opencv/android/JavaCameraView$CameraWorker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/opencv/android/JavaCameraView$CameraWorker;-><init>(Lorg/opencv/android/JavaCameraView;Lorg/opencv/android/JavaCameraView$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    .line 268
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 270
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected disconnectCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    const-string v1, "JavaCameraView"

    const-string v2, "Disconnecting from camera"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/opencv/android/JavaCameraView;->mStopThread:Z

    .line 281
    const-string v1, "JavaCameraView"

    const-string v2, "Notify thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 284
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    const-string v1, "JavaCameraView"

    const-string v2, "Waiting for thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    :cond_0
    iput-object v3, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    .line 295
    :goto_0
    invoke-virtual {p0}, Lorg/opencv/android/JavaCameraView;->releaseCamera()V

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    .line 298
    return-void

    .line 284
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 291
    iput-object v3, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    iput-object v3, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    throw v1
.end method

.method protected initializeCamera(II)Z
    .locals 24
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 70
    const-string v18, "JavaCameraView"

    const-string v19, "Initialize java camera"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v14, 0x1

    .line 72
    .local v14, "result":Z
    monitor-enter p0

    .line 73
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    .line 75
    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mCameraIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 76
    const-string v18, "JavaCameraView"

    const-string v19, "Trying to open camera with old open()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 85
    const/4 v9, 0x0

    .line 86
    .local v9, "connected":Z
    const/4 v7, 0x0

    .local v7, "camIdx":I
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 87
    const-string v18, "JavaCameraView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Trying to open camera with new open("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :try_start_3
    invoke-static {v7}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    const/4 v9, 0x1

    .line 94
    :goto_2
    if-eqz v9, :cond_1

    .line 136
    .end local v7    # "camIdx":I
    .end local v9    # "connected":Z
    :cond_0
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 137
    const/4 v15, 0x0

    monitor-exit p0

    move/from16 v18, v15

    .line 226
    :goto_4
    return v18

    .line 80
    :catch_0
    move-exception v10

    .line 81
    .local v10, "e":Ljava/lang/Exception;
    const-string v18, "JavaCameraView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Camera is not available (in use or does not exist): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v18

    .line 91
    .restart local v7    # "camIdx":I
    .restart local v9    # "connected":Z
    :catch_1
    move-exception v10

    .line 92
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v18, "JavaCameraView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Camera #"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "failed to open: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 86
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 98
    .end local v7    # "camIdx":I
    .end local v9    # "connected":Z
    :cond_2
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget v12, v0, Lorg/opencv/android/JavaCameraView;->mCameraIndex:I

    .line 100
    .local v12, "localCameraIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mCameraIndex:I

    move/from16 v18, v0

    const/16 v19, 0x63

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 101
    const-string v18, "JavaCameraView"

    const-string v19, "Trying to open back camera"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v8, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v8}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 103
    .local v8, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v7, 0x0

    .restart local v7    # "camIdx":I
    :goto_6
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    .line 104
    invoke-static {v7, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 105
    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 106
    move v12, v7

    .line 121
    .end local v7    # "camIdx":I
    .end local v8    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_3
    :goto_7
    const/16 v18, 0x63

    move/from16 v0, v18

    if-ne v12, v0, :cond_7

    .line 122
    const-string v18, "JavaCameraView"

    const-string v19, "Back camera not found!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 103
    .restart local v7    # "camIdx":I
    .restart local v8    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 110
    .end local v7    # "camIdx":I
    .end local v8    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mCameraIndex:I

    move/from16 v18, v0

    const/16 v19, 0x62

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 111
    const-string v18, "JavaCameraView"

    const-string v19, "Trying to open front camera"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v8, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v8}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 113
    .restart local v8    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v7, 0x0

    .restart local v7    # "camIdx":I
    :goto_8
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    .line 114
    invoke-static {v7, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 115
    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 116
    move v12, v7

    .line 117
    goto :goto_7

    .line 113
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 123
    .end local v7    # "camIdx":I
    .end local v8    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_7
    const/16 v18, 0x62

    move/from16 v0, v18

    if-ne v12, v0, :cond_8

    .line 124
    const-string v18, "JavaCameraView"

    const-string v19, "Front camera not found!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 126
    :cond_8
    const-string v18, "JavaCameraView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Trying to open camera with new open("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 128
    :try_start_6
    invoke-static {v12}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 129
    :catch_2
    move-exception v10

    .line 130
    .restart local v10    # "e":Ljava/lang/RuntimeException;
    :try_start_7
    const-string v18, "JavaCameraView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Camera #"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "failed to open: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 141
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "localCameraIndex":I
    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 142
    .local v13, "params":Landroid/hardware/Camera$Parameters;
    const-string v18, "JavaCameraView"

    const-string v19, "getSupportedPreviewSizes()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    .line 145
    .local v17, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v17, :cond_12

    .line 147
    new-instance v18, Lorg/opencv/android/JavaCameraView$JavaCameraSizeAccessor;

    invoke-direct/range {v18 .. v18}, Lorg/opencv/android/JavaCameraView$JavaCameraSizeAccessor;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/opencv/android/JavaCameraView;->calculateCameraFrameSize(Ljava/util/List;Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;II)Lorg/opencv/core/Size;

    move-result-object v11

    .line 150
    .local v11, "frameSize":Lorg/opencv/core/Size;
    sget-object v18, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v19, "generic"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    sget-object v18, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v19, "unknown"

    .line 151
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v19, "google_sdk"

    .line 152
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v19, "Emulator"

    .line 153
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v19, "Android SDK built for x86"

    .line 154
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    sget-object v18, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v19, "Genymotion"

    .line 155
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    sget-object v18, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v19, "generic"

    .line 156
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    sget-object v18, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v19, "generic"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    :cond_a
    const-string v18, "google_sdk"

    sget-object v19, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 157
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 158
    :cond_b
    const v18, 0x32315659

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 162
    :goto_9
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/opencv/android/JavaCameraView;->mPreviewFormat:I

    .line 164
    const-string v18, "JavaCameraView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Set preview size to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v11, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v11, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-wide v0, v11, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    iget-wide v0, v11, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 167
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_c

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v19, "GT-I9100"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 168
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 170
    :cond_c
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    .line 171
    .local v6, "FocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_d

    const-string v18, "continuous-video"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 173
    const-string v18, "continuous-video"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 176
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 179
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/opencv/android/JavaCameraView;->mFrameWidth:I

    .line 180
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    .line 182
    invoke-virtual/range {p0 .. p0}, Lorg/opencv/android/JavaCameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/opencv/android/JavaCameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 183
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/opencv/android/JavaCameraView;->mScale:F

    .line 187
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/opencv/android/FpsMeter;->setResolution(II)V

    .line 191
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    move/from16 v19, v0

    mul-int v16, v18, v19

    .line 192
    .local v16, "size":I
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v18

    mul-int v18, v18, v16

    div-int/lit8 v16, v18, 0x8

    .line 193
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/opencv/android/JavaCameraView;->mBuffer:[B

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mBuffer:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 198
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/opencv/core/Mat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameWidth:I

    move/from16 v22, v0

    sget v23, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct/range {v20 .. v23}, Lorg/opencv/core/Mat;-><init>(III)V

    aput-object v20, v18, v19

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    new-instance v20, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameWidth:I

    move/from16 v22, v0

    sget v23, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct/range {v20 .. v23}, Lorg/opencv/core/Mat;-><init>(III)V

    aput-object v20, v18, v19

    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/opencv/android/JavaCameraView;->AllocateCache()V

    .line 204
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;-><init>(Lorg/opencv/android/JavaCameraView;Lorg/opencv/core/Mat;II)V

    aput-object v20, v18, v19

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    new-instance v20, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/opencv/android/JavaCameraView;->mFrameHeight:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;-><init>(Lorg/opencv/android/JavaCameraView;Lorg/opencv/core/Mat;II)V

    aput-object v20, v18, v19

    .line 208
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    .line 209
    new-instance v18, Landroid/graphics/SurfaceTexture;

    const/16 v19, 0xa

    invoke-direct/range {v18 .. v19}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/opencv/android/JavaCameraView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 215
    :goto_b
    const-string v18, "JavaCameraView"

    const-string v19, "startPreview"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera;->startPreview()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v6    # "FocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "frameSize":Lorg/opencv/core/Size;
    .end local v16    # "size":I
    :goto_c
    move v15, v14

    .line 224
    .end local v13    # "params":Landroid/hardware/Camera$Parameters;
    .end local v14    # "result":Z
    .end local v17    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .local v15, "result":Z
    :goto_d
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v14, v15

    .end local v15    # "result":Z
    .restart local v14    # "result":Z
    move/from16 v18, v15

    .line 226
    goto/16 :goto_4

    .line 160
    .restart local v11    # "frameSize":Lorg/opencv/core/Size;
    .restart local v13    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v17    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_f
    const/16 v18, 0x11

    :try_start_a
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_9

    .line 220
    .end local v11    # "frameSize":Lorg/opencv/core/Size;
    .end local v13    # "params":Landroid/hardware/Camera$Parameters;
    .end local v17    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catch_3
    move-exception v10

    .line 221
    .local v10, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    .line 222
    :try_start_b
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v15, v14

    .end local v14    # "result":Z
    .restart local v15    # "result":Z
    goto :goto_d

    .line 185
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "result":Z
    .restart local v6    # "FocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "frameSize":Lorg/opencv/core/Size;
    .restart local v13    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v14    # "result":Z
    .restart local v17    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_10
    const/16 v18, 0x0

    :try_start_c
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/opencv/android/JavaCameraView;->mScale:F

    goto/16 :goto_a

    .line 212
    .restart local v16    # "size":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_b

    .line 219
    .end local v6    # "FocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "frameSize":Lorg/opencv/core/Size;
    .end local v16    # "size":I
    :cond_12
    const/4 v14, 0x0

    goto :goto_c

    .line 224
    .end local v13    # "params":Landroid/hardware/Camera$Parameters;
    .end local v14    # "result":Z
    .end local v17    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v15    # "result":Z
    :catchall_1
    move-exception v18

    move v14, v15

    .end local v15    # "result":Z
    .restart local v14    # "result":Z
    goto/16 :goto_5
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "frame"    # [B
    .param p2, "arg1"    # Landroid/hardware/Camera;

    .prologue
    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    iget v1, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/opencv/core/Mat;->put(II[B)I

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 308
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/opencv/android/JavaCameraView;->mBuffer:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 311
    :cond_0
    return-void

    .line 308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected releaseCamera()V
    .locals 2

    .prologue
    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 233
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 235
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    .line 238
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 240
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;->release()V

    .line 244
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;->release()V

    .line 246
    :cond_2
    monitor-exit p0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
