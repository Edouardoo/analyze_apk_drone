.class public Lorg/wysaid/view/SimplePlayerGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wysaid/view/SimplePlayerGLSurfaceView$TakeShotCallback;,
        Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;,
        Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;,
        Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;,
        Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;,
        Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayerInitializeCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"


# instance fields
.field private mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

.field private mDrawerFlipScaleX:F

.field private mDrawerFlipScaleY:F

.field private mFitFullView:Z

.field private mFramesCount2:J

.field private mIsUsingMask:Z

.field private mLastTimestamp2:J

.field private mMaskAspectRatio:F

.field private mOnCreateCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;

.field mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

.field private mPlayer:Landroid/media/MediaPlayer;

.field mPlayerInitCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayerInitializeCallback;

.field mPreparedCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;

.field private mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTimeCount2:J

.field private mTransformMatrix:[F

.field private mVideoHeight:I

.field private mVideoTextureID:I

.field private mVideoUri:Landroid/net/Uri;

.field private mVideoWidth:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v2, 0x3e8

    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRenderer$Viewport;-><init>()V

    iput-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mTransformMatrix:[F

    .line 55
    iput-boolean v6, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mIsUsingMask:Z

    .line 61
    iput v3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mMaskAspectRatio:F

    .line 62
    iput v3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawerFlipScaleX:F

    .line 63
    iput v3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawerFlipScaleY:F

    .line 65
    iput v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    .line 66
    iput v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    .line 76
    iput v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoWidth:I

    .line 77
    iput v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoHeight:I

    .line 79
    iput-boolean v6, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mFitFullView:Z

    .line 395
    iput-wide v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mTimeCount2:J

    .line 396
    iput-wide v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mFramesCount2:J

    .line 397
    iput-wide v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mLastTimestamp2:J

    .line 271
    const-string v0, "libCGE_java"

    const-string v2, "MyGLSurfaceView Construct..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setEGLContextClientVersion(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 274
    invoke-virtual/range {v0 .. v6}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 275
    invoke-virtual {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 276
    invoke-virtual {p0, p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 277
    invoke-virtual {p0, v6}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setRenderMode(I)V

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setZOrderOnTop(Z)V

    .line 280
    const-string v0, "libCGE_java"

    const-string v1, "MyGLSurfaceView Construct OK..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method private _useUri()V
    .locals 6

    .prologue
    .line 463
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 466
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 473
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 477
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayerInitCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayerInitializeCallback;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayerInitCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayerInitializeCallback;

    iget-object v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayerInitializeCallback;->initPlayer(Landroid/media/MediaPlayer;)V

    .line 501
    :cond_0
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lorg/wysaid/view/SimplePlayerGLSurfaceView$6;

    invoke-direct {v2, p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$6;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 511
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;

    invoke-direct {v2, p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 534
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lorg/wysaid/view/SimplePlayerGLSurfaceView$8;

    invoke-direct {v2, p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$8;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 545
    :try_start_1
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 561
    :cond_1
    :goto_1
    return-void

    .line 469
    :cond_2
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    const-string v1, "libCGE_java"

    const-string v2, "useUri failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    if-eqz v1, :cond_1

    .line 484
    new-instance v1, Lorg/wysaid/view/SimplePlayerGLSurfaceView$5;

    invoke-direct {v1, p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$5;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V

    invoke-virtual {p0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 546
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 547
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "libCGE_java"

    const-string v2, "Error handled: %s, play failure handler would be called!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    if-eqz v1, :cond_1

    .line 549
    new-instance v1, Lorg/wysaid/view/SimplePlayerGLSurfaceView$9;

    invoke-direct {v1, p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$9;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V

    invoke-virtual {p0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$002(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 31
    iget v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoTextureID:I

    return v0
.end method

.method static synthetic access$102(Lorg/wysaid/view/SimplePlayerGLSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoTextureID:I

    return p1
.end method

.method static synthetic access$200(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->_useUri()V

    return-void
.end method

.method static synthetic access$300(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer;
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    return-object v0
.end method

.method static synthetic access$302(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Lorg/wysaid/texUtils/TextureRenderer;)Lorg/wysaid/texUtils/TextureRenderer;
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;
    .param p1, "x1"    # Lorg/wysaid/texUtils/TextureRenderer;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    return-object p1
.end method

.method static synthetic access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$502(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mIsUsingMask:Z

    return p1
.end method

.method static synthetic access$600(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 31
    iget v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$602(Lorg/wysaid/view/SimplePlayerGLSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$700(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 31
    iget v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$702(Lorg/wysaid/view/SimplePlayerGLSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$800(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->calcViewport()V

    return-void
.end method

.method static synthetic access$900(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    return-object v0
.end method

.method private calcViewport()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 421
    iget-boolean v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mIsUsingMask:Z

    if-eqz v5, :cond_0

    .line 422
    invoke-direct {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->flushMaskAspectRatio()V

    .line 423
    iget v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mMaskAspectRatio:F

    .line 429
    .local v2, "scaling":F
    :goto_0
    iget v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    iget v6, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 430
    .local v3, "viewRatio":F
    div-float v1, v2, v3

    .line 434
    .local v1, "s":F
    iget-boolean v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mFitFullView:Z

    if-eqz v5, :cond_2

    .line 436
    float-to-double v6, v1

    cmpl-double v5, v6, v8

    if-lez v5, :cond_1

    .line 437
    iget v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 438
    .local v4, "w":I
    iget v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    .line 454
    .local v0, "h":I
    :goto_1
    iget-object v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iput v4, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    .line 455
    iget-object v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iput v0, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    .line 456
    iget-object v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v6, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    iget-object v7, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v7, v7, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    .line 457
    iget-object v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v6, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    iget-object v7, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v7, v7, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    .line 458
    const-string v5, "libCGE_java"

    const-string v6, "View port: %d, %d, %d, %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void

    .line 425
    .end local v0    # "h":I
    .end local v1    # "s":F
    .end local v2    # "scaling":F
    .end local v3    # "viewRatio":F
    .end local v4    # "w":I
    :cond_0
    iget-object v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    iget v6, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawerFlipScaleX:F

    iget v7, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawerFlipScaleY:F

    invoke-virtual {v5, v6, v7}, Lorg/wysaid/texUtils/TextureRenderer;->setFlipscale(FF)V

    .line 426
    iget v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoWidth:I

    int-to-float v5, v5

    iget v6, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoHeight:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .restart local v2    # "scaling":F
    goto/16 :goto_0

    .line 440
    .restart local v1    # "s":F
    .restart local v3    # "viewRatio":F
    :cond_1
    iget v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    .line 441
    .restart local v4    # "w":I
    iget v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v0, v5

    .restart local v0    # "h":I
    goto :goto_1

    .line 445
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_2
    float-to-double v6, v1

    cmpl-double v5, v6, v8

    if-lez v5, :cond_3

    .line 446
    iget v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    .line 447
    .restart local v4    # "w":I
    iget v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v0, v5

    .restart local v0    # "h":I
    goto/16 :goto_1

    .line 449
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_3
    iget v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    .line 450
    .restart local v0    # "h":I
    iget v5, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .restart local v4    # "w":I
    goto/16 :goto_1
.end method

.method private flushMaskAspectRatio()V
    .locals 5

    .prologue
    .line 565
    iget v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoWidth:I

    int-to-float v2, v2

    iget v3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 567
    .local v0, "dstRatio":F
    iget v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mMaskAspectRatio:F

    div-float v1, v0, v2

    .line 569
    .local v1, "s":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 570
    iget-object v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    iget v3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawerFlipScaleX:F

    div-float/2addr v3, v1

    iget v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawerFlipScaleY:F

    invoke-virtual {v2, v3, v4}, Lorg/wysaid/texUtils/TextureRenderer;->setFlipscale(FF)V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    iget v3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawerFlipScaleX:F

    iget v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawerFlipScaleY:F

    mul-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/wysaid/texUtils/TextureRenderer;->setFlipscale(FF)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getPlayer()Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 239
    const-string v0, "libCGE_java"

    const-string v1, "Player is not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    return v0
.end method

.method public getViewheight()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    return v0
.end method

.method public isUsingMask()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mIsUsingMask:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 380
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const v0, 0x8d40

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 385
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 386
    iget v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    iget v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 388
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 389
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lorg/wysaid/texUtils/TextureRenderer;->setTransform([F)V

    .line 391
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    iget v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoTextureID:I

    iget-object v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    invoke-virtual {v0, v1, v2}, Lorg/wysaid/texUtils/TextureRenderer;->renderTexture(ILorg/wysaid/texUtils/TextureRenderer$Viewport;)V

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 12
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const-wide/16 v10, 0x0

    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 401
    invoke-virtual {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->requestRender()V

    .line 403
    iget-wide v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mLastTimestamp2:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mLastTimestamp2:J

    .line 406
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 408
    .local v0, "currentTimestamp":J
    iget-wide v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mFramesCount2:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mFramesCount2:J

    .line 409
    iget-wide v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mTimeCount2:J

    iget-wide v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mLastTimestamp2:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mTimeCount2:J

    .line 410
    iput-wide v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mLastTimestamp2:J

    .line 411
    iget-wide v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mTimeCount2:J

    long-to-double v2, v2

    cmpl-double v2, v2, v8

    if-ltz v2, :cond_1

    .line 412
    const-string v2, "libCGE_java"

    const-string v3, "\u64ad\u653e\u5e27\u7387: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mFramesCount2:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-wide v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mTimeCount2:J

    long-to-double v2, v2

    sub-double/2addr v2, v8

    double-to-long v2, v2

    iput-wide v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mTimeCount2:J

    .line 414
    iput-wide v10, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mFramesCount2:J

    .line 416
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "libCGE_java"

    const-string v1, "surfaceview onPause ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 369
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 312
    iput p2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewWidth:I

    .line 313
    iput p3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mViewHeight:I

    .line 315
    invoke-direct {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->calcViewport()V

    .line 316
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 286
    const-string v0, "libCGE_java"

    const-string v1, "video player onSurfaceCreated..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 289
    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 291
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->create(Z)Lorg/wysaid/texUtils/TextureRendererDrawOrigin;

    move-result-object v0

    iput-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    .line 292
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    if-nez v0, :cond_1

    .line 293
    const-string v0, "libCGE_java"

    const-string v1, "Create Drawer Failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mOnCreateCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mOnCreateCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;

    invoke-interface {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;->createOK()V

    .line 300
    :cond_2
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoTextureID:I

    if-nez v0, :cond_0

    .line 301
    :cond_3
    invoke-static {}, Lorg/wysaid/common/Common;->genSurfaceTextureID()I

    move-result v0

    iput v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoTextureID:I

    .line 302
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoTextureID:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 303
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 304
    invoke-direct {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->_useUri()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 321
    const-string v0, "libCGE_java"

    const-string v1, "Video player view release..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;

    invoke-direct {v0, p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 362
    :cond_0
    return-void
.end method

.method public setFitFullView(Z)V
    .locals 1
    .param p1, "fit"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mFitFullView:Z

    .line 83
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->calcViewport()V

    .line 85
    :cond_0
    return-void
.end method

.method public setMaskBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "shouldRecycle"    # Z

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setMaskBitmap(Landroid/graphics/Bitmap;ZLorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;)V

    .line 165
    return-void
.end method

.method public declared-synchronized setMaskBitmap(Landroid/graphics/Bitmap;ZLorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "shouldRecycle"    # Z
    .param p3, "callback"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    if-nez v0, :cond_0

    .line 170
    const-string v0, "libCGE_java"

    const-string v1, "setMaskBitmap after release!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    new-instance v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$2;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Landroid/graphics/Bitmap;Lorg/wysaid/view/SimplePlayerGLSurfaceView$SetMaskBitmapCallback;Z)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaskTexture(IF)V
    .locals 3
    .param p1, "texID"    # I
    .param p2, "aspectRatio"    # F

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    const-string v1, "libCGE_java"

    const-string v2, "setMaskTexture... "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-nez p1, :cond_1

    .line 217
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    instance-of v1, v1, Lorg/wysaid/texUtils/TextureRendererMask;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    invoke-virtual {v1}, Lorg/wysaid/texUtils/TextureRenderer;->release()V

    .line 219
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/wysaid/texUtils/TextureRendererDrawOrigin;->create(Z)Lorg/wysaid/texUtils/TextureRendererDrawOrigin;

    move-result-object v1

    iput-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    .line 221
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mIsUsingMask:Z

    .line 233
    :goto_0
    iput p2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mMaskAspectRatio:F

    .line 234
    invoke-direct {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->calcViewport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 223
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    instance-of v1, v1, Lorg/wysaid/texUtils/TextureRendererMask;

    if-nez v1, :cond_3

    .line 224
    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    invoke-virtual {v1}, Lorg/wysaid/texUtils/TextureRenderer;->release()V

    .line 225
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/wysaid/texUtils/TextureRendererMask;->create(Z)Lorg/wysaid/texUtils/TextureRendererMask;

    move-result-object v0

    .line 226
    .local v0, "drawer":Lorg/wysaid/texUtils/TextureRendererMask;
    sget-boolean v1, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Drawer Create Failed!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .end local v0    # "drawer":Lorg/wysaid/texUtils/TextureRendererMask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 227
    .restart local v0    # "drawer":Lorg/wysaid/texUtils/TextureRendererMask;
    :cond_2
    :try_start_2
    invoke-virtual {v0, p1}, Lorg/wysaid/texUtils/TextureRendererMask;->setMaskTexture(I)V

    .line 228
    iput-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    .line 230
    .end local v0    # "drawer":Lorg/wysaid/texUtils/TextureRendererMask;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mIsUsingMask:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setOnCreateCallback(Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;)V
    .locals 2
    .param p1, "callback"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;

    .prologue
    .line 253
    sget-boolean v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "\u65e0\u610f\u4e49\u64cd\u4f5c!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    if-nez v0, :cond_1

    .line 256
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mOnCreateCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;

    .line 266
    :goto_0
    return-void

    .line 259
    :cond_1
    new-instance v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$3;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$3;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setPlayerInitializeCallback(Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayerInitializeCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayerInitializeCallback;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayerInitCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayerInitializeCallback;

    .line 99
    return-void
.end method

.method public setTextureRenderer(Lorg/wysaid/texUtils/TextureRenderer;)V
    .locals 2
    .param p1, "drawer"    # Lorg/wysaid/texUtils/TextureRenderer;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    if-nez v0, :cond_1

    .line 42
    const-string v0, "libCGE_java"

    const-string v1, "Invalid Drawer!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    if-eq v0, p1, :cond_0

    .line 47
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRenderer;->release()V

    .line 48
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    .line 49
    invoke-direct {p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->calcViewport()V

    goto :goto_0
.end method

.method public declared-synchronized setVideoUri(Landroid/net/Uri;Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "preparedCallback"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;
    .param p3, "completionCallback"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mVideoUri:Landroid/net/Uri;

    .line 133
    iput-object p2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPreparedCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;

    .line 134
    iput-object p3, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    .line 136
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;

    invoke-direct {v0, p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takeShot(Lorg/wysaid/view/SimplePlayerGLSurfaceView$TakeShotCallback;)V
    .locals 2
    .param p1, "callback"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView$TakeShotCallback;

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "callback must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 584
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mDrawer:Lorg/wysaid/texUtils/TextureRenderer;

    if-nez v0, :cond_1

    .line 585
    const-string v0, "libCGE_java"

    const-string v1, "Drawer not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$TakeShotCallback;->takeShotOK(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    :goto_0
    monitor-exit p0

    return-void

    .line 590
    :cond_1
    :try_start_2
    new-instance v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$10;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$10;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Lorg/wysaid/view/SimplePlayerGLSurfaceView$TakeShotCallback;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
