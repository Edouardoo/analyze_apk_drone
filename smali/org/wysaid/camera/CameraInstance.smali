.class public Lorg/wysaid/camera/CameraInstance;
.super Ljava/lang/Object;
.source "CameraInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ASSERT_MSG:Ljava/lang/String; = "\u68c0\u6d4b\u5230CameraDevice \u4e3a null! \u8bf7\u68c0\u67e5"

.field public static final DEFAULT_PREVIEW_RATE:I = 0x1e

.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"

.field private static mThisInstance:Lorg/wysaid/camera/CameraInstance;


# instance fields
.field private comparatorBigger:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private comparatorSmaller:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mDefaultCameraID:I

.field private mFacing:I

.field private mIsPreviewing:Z

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mPreferPreviewHeight:I

.field private mPreferPreviewWidth:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/wysaid/camera/CameraInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/wysaid/camera/CameraInstance;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    const/16 v2, 0x280

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lorg/wysaid/camera/CameraInstance;->mIsPreviewing:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/wysaid/camera/CameraInstance;->mDefaultCameraID:I

    .line 43
    iput v3, p0, Lorg/wysaid/camera/CameraInstance;->mPictureWidth:I

    .line 44
    iput v3, p0, Lorg/wysaid/camera/CameraInstance;->mPictureHeight:I

    .line 46
    iput v2, p0, Lorg/wysaid/camera/CameraInstance;->mPreferPreviewWidth:I

    .line 47
    iput v2, p0, Lorg/wysaid/camera/CameraInstance;->mPreferPreviewHeight:I

    .line 49
    iput v1, p0, Lorg/wysaid/camera/CameraInstance;->mFacing:I

    .line 215
    new-instance v0, Lorg/wysaid/camera/CameraInstance$1;

    invoke-direct {v0, p0}, Lorg/wysaid/camera/CameraInstance$1;-><init>(Lorg/wysaid/camera/CameraInstance;)V

    iput-object v0, p0, Lorg/wysaid/camera/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    .line 226
    new-instance v0, Lorg/wysaid/camera/CameraInstance$2;

    invoke-direct {v0, p0}, Lorg/wysaid/camera/CameraInstance$2;-><init>(Lorg/wysaid/camera/CameraInstance;)V

    iput-object v0, p0, Lorg/wysaid/camera/CameraInstance;->comparatorSmaller:Ljava/util/Comparator;

    .line 51
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/wysaid/camera/CameraInstance;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lorg/wysaid/camera/CameraInstance;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/wysaid/camera/CameraInstance;->mThisInstance:Lorg/wysaid/camera/CameraInstance;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/wysaid/camera/CameraInstance;

    invoke-direct {v0}, Lorg/wysaid/camera/CameraInstance;-><init>()V

    sput-object v0, Lorg/wysaid/camera/CameraInstance;->mThisInstance:Lorg/wysaid/camera/CameraInstance;

    .line 57
    :cond_0
    sget-object v0, Lorg/wysaid/camera/CameraInstance;->mThisInstance:Lorg/wysaid/camera/CameraInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized focusAtPoint(FFFLandroid/hardware/Camera$AutoFocusCallback;)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "callback"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    const/high16 v8, 0x44fa0000    # 2000.0f

    const/high16 v7, 0x447a0000    # 1000.0f

    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v6, :cond_0

    .line 379
    const-string v6, "libCGE_java"

    const-string v7, "Error: focus after release."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :goto_0
    monitor-exit p0

    return-void

    .line 383
    :cond_0
    :try_start_1
    iget-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 385
    iget-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v6

    if-lez v6, :cond_1

    .line 387
    mul-float v6, p3, v7

    float-to-int v2, v6

    .line 388
    .local v2, "focusRadius":I
    mul-float v6, p1, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v3, v6, v2

    .line 389
    .local v3, "left":I
    mul-float v6, p2, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v5, v6, v2

    .line 391
    .local v5, "top":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 392
    .local v1, "focusArea":Landroid/graphics/Rect;
    const/16 v6, -0x3e8

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 393
    const/16 v6, -0x3e8

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 394
    add-int v6, v3, v2

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 395
    add-int v6, v5, v2

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 396
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v4, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v6, Landroid/hardware/Camera$Area;

    const/16 v7, 0x320

    invoke-direct {v6, v1, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    :try_start_2
    iget-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 401
    iget-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v7, "auto"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 402
    iget-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 403
    iget-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 404
    iget-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6, p4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "libCGE_java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: focusAtPoint failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "focusArea":Landroid/graphics/Rect;
    .end local v2    # "focusRadius":I
    .end local v3    # "left":I
    .end local v4    # "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v5    # "top":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 409
    :cond_1
    :try_start_4
    const-string v6, "libCGE_java"

    const-string v7, "The device does not support metering areas..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 411
    :try_start_5
    iget-object v6, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6, p4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 412
    :catch_1
    move-exception v0

    .line 413
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "libCGE_java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: focusAtPoint failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public focusAtPoint(FFLandroid/hardware/Camera$AutoFocusCallback;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "callback"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 374
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/wysaid/camera/CameraInstance;->focusAtPoint(FFFLandroid/hardware/Camera$AutoFocusCallback;)V

    .line 375
    return-void
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getFacing()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/wysaid/camera/CameraInstance;->mFacing:I

    return v0
.end method

.method public declared-synchronized getParams()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 199
    :goto_0
    monitor-exit p0

    return-object v0

    .line 198
    :cond_0
    :try_start_1
    sget-boolean v0, Lorg/wysaid/camera/CameraInstance;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "\u68c0\u6d4b\u5230CameraDevice \u4e3a null! \u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCamera(I)V
    .locals 22
    .param p1, "previewRate"    # I

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 238
    const-string v16, "libCGE_java"

    const-string v17, "initCamera: Camera is not opened!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return-void

    .line 242
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v12

    .line 245
    .local v12, "supportedPictureFormats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 246
    .local v3, "fmt":I
    const-string v16, "libCGE_java"

    const-string v18, "Picture Format: %x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    .end local v3    # "fmt":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const/16 v17, 0x100

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    .line 252
    .local v8, "picSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v9, 0x0

    .line 254
    .local v9, "picSz":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 256
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Camera$Size;

    .line 257
    .local v13, "sz":Landroid/hardware/Camera$Size;
    const-string v17, "libCGE_java"

    const-string v18, "Supported picture size: %d x %d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz v9, :cond_3

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/wysaid/camera/CameraInstance;->mPictureWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/wysaid/camera/CameraInstance;->mPictureHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 259
    :cond_3
    move-object v9, v13

    goto :goto_2

    .line 263
    .end local v13    # "sz":Landroid/hardware/Camera$Size;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v10

    .line 264
    .local v10, "prevSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v11, 0x0

    .line 266
    .local v11, "prevSz":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Camera$Size;

    .line 269
    .restart local v13    # "sz":Landroid/hardware/Camera$Size;
    const-string v17, "libCGE_java"

    const-string v18, "Supported preview size: %d x %d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eqz v11, :cond_6

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/wysaid/camera/CameraInstance;->mPreferPreviewWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/wysaid/camera/CameraInstance;->mPreferPreviewHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 271
    :cond_6
    move-object v11, v13

    goto :goto_3

    .line 275
    .end local v13    # "sz":Landroid/hardware/Camera$Size;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v6

    .line 277
    .local v6, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 279
    .local v5, "fpsMax":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_8
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 280
    .local v7, "n":Ljava/lang/Integer;
    const-string v17, "libCGE_java"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Supported frame rate: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_8

    .line 282
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    .line 286
    .end local v7    # "n":Ljava/lang/Integer;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 290
    .local v4, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v16, "continuous-video"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "continuous-video"

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 294
    :cond_a
    move/from16 p1, v5

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 299
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v14

    .line 308
    .local v14, "szPic":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 310
    .local v15, "szPrev":Landroid/hardware/Camera$Size;
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/wysaid/camera/CameraInstance;->mPreviewWidth:I

    .line 311
    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/wysaid/camera/CameraInstance;->mPreviewHeight:I

    .line 313
    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/wysaid/camera/CameraInstance;->mPictureWidth:I

    .line 314
    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/wysaid/camera/CameraInstance;->mPictureHeight:I

    .line 316
    const-string v16, "libCGE_java"

    const-string v17, "Camera Picture Size: %d x %d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v16, "libCGE_java"

    const-string v17, "Camera Preview Size: %d x %d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 300
    .end local v14    # "szPic":Landroid/hardware/Camera$Size;
    .end local v15    # "szPrev":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public isCameraOpened()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/wysaid/camera/CameraInstance;->mIsPreviewing:Z

    return v0
.end method

.method public pictureHeight()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/wysaid/camera/CameraInstance;->mPictureHeight:I

    return v0
.end method

.method public pictureWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/wysaid/camera/CameraInstance;->mPictureWidth:I

    return v0
.end method

.method public previewHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/wysaid/camera/CameraInstance;->mPreviewHeight:I

    return v0
.end method

.method public previewWidth()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/wysaid/camera/CameraInstance;->mPreviewWidth:I

    return v0
.end method

.method public declared-synchronized setFocusMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 325
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 326
    iget-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 327
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    .end local v0    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setParams(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 204
    iput-object p1, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 205
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 207
    :cond_0
    sget-boolean v0, Lorg/wysaid/camera/CameraInstance;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "\u68c0\u6d4b\u5230CameraDevice \u4e3a null! \u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setPictureSize(IIZ)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isBigger"    # Z

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 335
    iput p1, p0, Lorg/wysaid/camera/CameraInstance;->mPictureWidth:I

    .line 336
    iput p2, p0, Lorg/wysaid/camera/CameraInstance;->mPictureHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :goto_0
    monitor-exit p0

    return-void

    .line 340
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 343
    iget-object v4, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 344
    .local v1, "picSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .line 346
    .local v2, "picSz":Landroid/hardware/Camera$Size;
    if-eqz p3, :cond_3

    .line 347
    iget-object v4, p0, Lorg/wysaid/camera/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 348
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 349
    .local v3, "sz":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_2

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-lt v5, p1, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-lt v5, p2, :cond_1

    .line 350
    :cond_2
    move-object v2, v3

    goto :goto_1

    .line 354
    .end local v3    # "sz":Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v4, p0, Lorg/wysaid/camera/CameraInstance;->comparatorSmaller:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 356
    .restart local v3    # "sz":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_5

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-gt v5, p1, :cond_4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-gt v5, p2, :cond_4

    .line 357
    :cond_5
    move-object v2, v3

    goto :goto_2

    .line 362
    .end local v3    # "sz":Landroid/hardware/Camera$Size;
    :cond_6
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iput v4, p0, Lorg/wysaid/camera/CameraInstance;->mPictureWidth:I

    .line 363
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    iput v4, p0, Lorg/wysaid/camera/CameraInstance;->mPictureHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :try_start_2
    iget-object v4, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    iget v5, p0, Lorg/wysaid/camera/CameraInstance;->mPictureWidth:I

    iget v6, p0, Lorg/wysaid/camera/CameraInstance;->mPictureHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 367
    iget-object v4, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lorg/wysaid/camera/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "picSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "picSz":Landroid/hardware/Camera$Size;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setPreferPreviewSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 68
    iput p1, p0, Lorg/wysaid/camera/CameraInstance;->mPreferPreviewHeight:I

    .line 69
    iput p2, p0, Lorg/wysaid/camera/CameraInstance;->mPreferPreviewWidth:I

    .line 70
    return-void
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/wysaid/camera/CameraInstance;->startPreview(Landroid/graphics/SurfaceTexture;Landroid/hardware/Camera$PreviewCallback;)V

    .line 181
    return-void
.end method

.method public declared-synchronized startPreview(Landroid/graphics/SurfaceTexture;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "callback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    const-string v1, "libCGE_java"

    const-string v2, "Camera startPreview..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-boolean v1, p0, Lorg/wysaid/camera/CameraInstance;->mIsPreviewing:Z

    if-eqz v1, :cond_1

    .line 160
    const-string v1, "libCGE_java"

    const-string v2, "Err: camera is previewing..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 166
    :try_start_2
    iget-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 169
    iget-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/wysaid/camera/CameraInstance;->mIsPreviewing:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public startPreview(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/wysaid/camera/CameraInstance;->startPreview(Landroid/graphics/SurfaceTexture;Landroid/hardware/Camera$PreviewCallback;)V

    .line 185
    return-void
.end method

.method public declared-synchronized stopCamera()V
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/wysaid/camera/CameraInstance;->mIsPreviewing:Z

    .line 146
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 147
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 148
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/wysaid/camera/CameraInstance;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "libCGE_java"

    const-string v1, "Camera stopPreview..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/wysaid/camera/CameraInstance;->mIsPreviewing:Z

    .line 191
    iget-object v0, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryOpenCamera(Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;)Z
    .locals 1
    .param p1, "callback"    # Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/wysaid/camera/CameraInstance;->tryOpenCamera(Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized tryOpenCamera(Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;I)Z
    .locals 7
    .param p1, "callback"    # Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;
    .param p2, "facing"    # I

    .prologue
    const/4 v4, 0x0

    .line 85
    monitor-enter p0

    :try_start_0
    const-string v5, "libCGE_java"

    const-string v6, "try open camera..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-le v5, v6, :cond_1

    .line 91
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 93
    .local v3, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 94
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 95
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 96
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, p2, :cond_0

    .line 97
    iput v2, p0, Lorg/wysaid/camera/CameraInstance;->mDefaultCameraID:I

    .line 98
    iput p2, p0, Lorg/wysaid/camera/CameraInstance;->mFacing:I

    .line 94
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "i":I
    .end local v3    # "numberOfCameras":I
    :cond_1
    invoke-virtual {p0}, Lorg/wysaid/camera/CameraInstance;->stopPreview()V

    .line 103
    iget-object v5, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v5, :cond_2

    .line 104
    iget-object v5, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 106
    :cond_2
    iget v5, p0, Lorg/wysaid/camera/CameraInstance;->mDefaultCameraID:I

    if-ltz v5, :cond_5

    .line 107
    iget v5, p0, Lorg/wysaid/camera/CameraInstance;->mDefaultCameraID:I

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_1
    :try_start_2
    iget-object v5, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v5, :cond_4

    .line 123
    const-string v5, "libCGE_java"

    const-string v6, "Camera opened!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    const/16 v5, 0x1e

    :try_start_3
    invoke-virtual {p0, v5}, Lorg/wysaid/camera/CameraInstance;->initCamera(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    if-eqz p1, :cond_3

    .line 134
    :try_start_4
    invoke-interface {p1}, Lorg/wysaid/camera/CameraInstance$CameraOpenCallback;->cameraReady()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    :cond_3
    const/4 v4, 0x1

    .line 140
    :cond_4
    :goto_2
    monitor-exit p0

    return v4

    .line 110
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    .line 111
    const/4 v5, 0x0

    iput v5, p0, Lorg/wysaid/camera/CameraInstance;->mFacing:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 114
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v5, "libCGE_java"

    const-string v6, "Open Camera Failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 127
    :catch_1
    move-exception v1

    .line 128
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v5, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 129
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/wysaid/camera/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method
