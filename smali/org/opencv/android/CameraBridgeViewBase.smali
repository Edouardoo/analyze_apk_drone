.class public abstract Lorg/opencv/android/CameraBridgeViewBase;
.super Landroid/view/SurfaceView;
.source "CameraBridgeViewBase.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;,
        Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;,
        Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;,
        Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;,
        Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener;
    }
.end annotation


# static fields
.field public static final CAMERA_ID_ANY:I = -0x1

.field public static final CAMERA_ID_BACK:I = 0x63

.field public static final CAMERA_ID_FRONT:I = 0x62

.field public static final GRAY:I = 0x2

.field private static final MAX_UNSPECIFIED:I = -0x1

.field public static final RGBA:I = 0x1

.field private static final STARTED:I = 0x1

.field private static final STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraBridge"


# instance fields
.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field protected mCameraIndex:I

.field protected mEnabled:Z

.field protected mFpsMeter:Lorg/opencv/android/FpsMeter;

.field protected mFrameHeight:I

.field protected mFrameWidth:I

.field private mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

.field protected mMaxHeight:I

.field protected mMaxWidth:I

.field protected mPreviewFormat:I

.field protected mScale:F

.field private mState:I

.field private mSurfaceExist:Z

.field private final mSyncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mState:I

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSyncObject:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mPreviewFormat:I

    .line 49
    iput v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    .line 61
    iput p2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    .line 62
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 63
    iput v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxWidth:I

    .line 64
    iput v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxHeight:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v6, p0, Lorg/opencv/android/CameraBridgeViewBase;->mState:I

    .line 41
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSyncObject:Ljava/lang/Object;

    .line 47
    const/4 v2, 0x0

    iput v2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    .line 48
    const/4 v2, 0x1

    iput v2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mPreviewFormat:I

    .line 49
    iput v5, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    .line 51
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    .line 70
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 71
    .local v0, "count":I
    const-string v2, "CameraBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attr count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/opencv/R$styleable;->CameraBridgeViewBase:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 74
    .local v1, "styledAttrs":Landroid/content/res/TypedArray;
    sget v2, Lorg/opencv/R$styleable;->CameraBridgeViewBase_show_fps:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->enableFpsMeter()V

    .line 77
    :cond_0
    sget v2, Lorg/opencv/R$styleable;->CameraBridgeViewBase_camera_id:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    .line 79
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 80
    iput v5, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxWidth:I

    .line 81
    iput v5, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxHeight:I

    .line 82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method

.method private checkCurrentState()V
    .locals 3

    .prologue
    .line 300
    const-string v1, "CameraBridge"

    const-string v2, "call checkCurrentState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-boolean v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSurfaceExist:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 304
    const/4 v0, 0x1

    .line 309
    .local v0, "targetState":I
    :goto_0
    iget v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mState:I

    if-eq v0, v1, :cond_0

    .line 311
    iget v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mState:I

    invoke-direct {p0, v1}, Lorg/opencv/android/CameraBridgeViewBase;->processExitState(I)V

    .line 312
    iput v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mState:I

    .line 313
    iget v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mState:I

    invoke-direct {p0, v1}, Lorg/opencv/android/CameraBridgeViewBase;->processEnterState(I)V

    .line 315
    :cond_0
    return-void

    .line 306
    .end local v0    # "targetState":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "targetState":I
    goto :goto_0
.end method

.method private onEnterStartedState()V
    .locals 4

    .prologue
    .line 358
    const-string v1, "CameraBridge"

    const-string v2, "call onEnterStartedState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/opencv/android/CameraBridgeViewBase;->connectCamera(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 362
    .local v0, "ad":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 363
    const-string v1, "It seems that you device does not support camera (or it is locked). Application will be closed."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 364
    const/4 v1, -0x3

    const-string v2, "OK"

    new-instance v3, Lorg/opencv/android/CameraBridgeViewBase$1;

    invoke-direct {v3, p0}, Lorg/opencv/android/CameraBridgeViewBase$1;-><init>(Lorg/opencv/android/CameraBridgeViewBase;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 370
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 373
    .end local v0    # "ad":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private onEnterStoppedState()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method private onExitStartedState()V
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->disconnectCamera()V

    .line 377
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 380
    :cond_0
    return-void
.end method

.method private onExitStoppedState()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method private processEnterState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 318
    const-string v0, "CameraBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call processEnterState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    packed-switch p1, :pswitch_data_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 321
    :pswitch_0
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->onEnterStartedState()V

    .line 322
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    iget v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget v2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    invoke-interface {v0, v1, v2}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;->onCameraViewStarted(II)V

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->onEnterStoppedState()V

    .line 328
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    invoke-interface {v0}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;->onCameraViewStopped()V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processExitState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 336
    const-string v0, "CameraBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call processExitState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    packed-switch p1, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 339
    :pswitch_0
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->onExitStartedState()V

    goto :goto_0

    .line 342
    :pswitch_1
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->onExitStoppedState()V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected AllocateCache()V
    .locals 3

    .prologue
    .line 457
    iget v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 458
    return-void
.end method

.method public SetCaptureFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 289
    iput p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mPreviewFormat:I

    .line 290
    iget-object v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    instance-of v1, v1, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;

    if-eqz v1, :cond_0

    .line 291
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    check-cast v0, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;

    .line 292
    .local v0, "adapter":Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;
    iget v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mPreviewFormat:I

    invoke-virtual {v0, v1}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;->setFrameFormat(I)V

    .line 294
    .end local v0    # "adapter":Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;
    :cond_0
    return-void
.end method

.method protected calculateCameraFrameSize(Ljava/util/List;Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;II)Lorg/opencv/core/Size;
    .locals 14
    .param p2, "accessor"    # Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;
    .param p3, "surfaceWidth"    # I
    .param p4, "surfaceHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;",
            "II)",
            "Lorg/opencv/core/Size;"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "supportedSizes":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    .line 476
    .local v3, "calcWidth":I
    const/4 v2, 0x0

    .line 478
    .local v2, "calcHeight":I
    iget v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    iget v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxWidth:I

    move/from16 v0, p3

    if-ge v9, v0, :cond_1

    iget v6, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxWidth:I

    .line 479
    .local v6, "maxAllowedWidth":I
    :goto_0
    iget v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxHeight:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxHeight:I

    move/from16 v0, p4

    if-ge v9, v0, :cond_2

    iget v5, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxHeight:I

    .line 481
    .local v5, "maxAllowedHeight":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 482
    .local v7, "size":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;->getWidth(Ljava/lang/Object;)I

    move-result v8

    .line 483
    .local v8, "width":I
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;->getHeight(Ljava/lang/Object;)I

    move-result v4

    .line 485
    .local v4, "height":I
    if-gt v8, v6, :cond_0

    if-gt v4, v5, :cond_0

    .line 486
    if-lt v8, v3, :cond_0

    if-lt v4, v2, :cond_0

    .line 487
    move v3, v8

    .line 488
    move v2, v4

    goto :goto_2

    .end local v4    # "height":I
    .end local v5    # "maxAllowedHeight":I
    .end local v6    # "maxAllowedWidth":I
    .end local v7    # "size":Ljava/lang/Object;
    .end local v8    # "width":I
    :cond_1
    move/from16 v6, p3

    .line 478
    goto :goto_0

    .restart local v6    # "maxAllowedWidth":I
    :cond_2
    move/from16 v5, p4

    .line 479
    goto :goto_1

    .line 493
    .restart local v5    # "maxAllowedHeight":I
    :cond_3
    new-instance v9, Lorg/opencv/core/Size;

    int-to-double v10, v3

    int-to-double v12, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/opencv/core/Size;-><init>(DD)V

    return-object v9
.end method

.method protected abstract connectCamera(II)Z
.end method

.method protected deliverAndDrawFrame(Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;)V
    .locals 13
    .param p1, "frame"    # Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;

    .prologue
    .line 391
    iget-object v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    if-eqz v4, :cond_3

    .line 392
    iget-object v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    invoke-interface {v4, p1}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;->onCameraFrame(Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 397
    .local v3, "modified":Lorg/opencv/core/Mat;
    :goto_0
    const/4 v0, 0x1

    .line 398
    .local v0, "bmpValid":Z
    if-eqz v3, :cond_0

    .line 400
    :try_start_0
    iget-object v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v4}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 410
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 411
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-eqz v1, :cond_2

    .line 412
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 416
    iget v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 417
    iget-object v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    .line 418
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    iget-object v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 419
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    iget-object v10, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    .line 420
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    iget-object v11, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    iget-object v11, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 421
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    iget-object v12, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    iget-object v12, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    .line 417
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 430
    :goto_2
    iget-object v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    if-eqz v4, :cond_1

    .line 431
    iget-object v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    invoke-virtual {v4}, Lorg/opencv/android/FpsMeter;->measure()V

    .line 432
    iget-object v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-virtual {v4, v1, v5, v6}, Lorg/opencv/android/FpsMeter;->draw(Landroid/graphics/Canvas;FF)V

    .line 434
    :cond_1
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 437
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    return-void

    .line 394
    .end local v0    # "bmpValid":Z
    .end local v3    # "modified":Lorg/opencv/core/Mat;
    :cond_3
    invoke-interface {p1}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;->rgba()Lorg/opencv/core/Mat;

    move-result-object v3

    .restart local v3    # "modified":Lorg/opencv/core/Mat;
    goto/16 :goto_0

    .line 401
    .restart local v0    # "bmpValid":Z
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CameraBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mat type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v4, "CameraBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v4, "CameraBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Utils.matToBitmap() throws an exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 423
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    iget-object v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    .line 424
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    iget-object v8, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 425
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    iget-object v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 426
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    iget-object v10, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 427
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    iget-object v11, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    .line 423
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public disableFpsMeter()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    .line 256
    return-void
.end method

.method public disableView()V
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mEnabled:Z

    .line 240
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->checkCurrentState()V

    .line 241
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract disconnectCamera()V
.end method

.method public enableFpsMeter()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lorg/opencv/android/FpsMeter;

    invoke-direct {v0}, Lorg/opencv/android/FpsMeter;-><init>()V

    iput-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    .line 250
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    iget v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget v2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/opencv/android/FpsMeter;->setResolution(II)V

    .line 252
    :cond_0
    return-void
.end method

.method public enableView()V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mEnabled:Z

    .line 229
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->checkCurrentState()V

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCameraIndex(I)V
    .locals 0
    .param p1, "cameraIndex"    # I

    .prologue
    .line 90
    iput p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    .line 91
    return-void
.end method

.method public setCvCameraViewListener(Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;)V
    .locals 0
    .param p1, "listener"    # Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    .prologue
    .line 264
    iput-object p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    .line 265
    return-void
.end method

.method public setCvCameraViewListener(Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener;

    .prologue
    .line 268
    new-instance v0, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;

    invoke-direct {v0, p0, p1}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;-><init>(Lorg/opencv/android/CameraBridgeViewBase;Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener;)V

    .line 269
    .local v0, "adapter":Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;
    iget v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mPreviewFormat:I

    invoke-virtual {v0, v1}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListenerAdapter;->setFrameFormat(I)V

    .line 270
    iput-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mListener:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewListener2;

    .line 271
    return-void
.end method

.method public setMaxFrameSize(II)V
    .locals 0
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 283
    iput p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxWidth:I

    .line 284
    iput p2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mMaxHeight:I

    .line 285
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 194
    const-string v0, "CameraBridge"

    const-string v1, "call surfaceChanged event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSurfaceExist:Z

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSurfaceExist:Z

    .line 198
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->checkCurrentState()V

    .line 208
    :goto_0
    monitor-exit v1

    .line 209
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSurfaceExist:Z

    .line 203
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->checkCurrentState()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSurfaceExist:Z

    .line 206
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->checkCurrentState()V

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 213
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 216
    iget-object v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mSurfaceExist:Z

    .line 218
    invoke-direct {p0}, Lorg/opencv/android/CameraBridgeViewBase;->checkCurrentState()V

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
