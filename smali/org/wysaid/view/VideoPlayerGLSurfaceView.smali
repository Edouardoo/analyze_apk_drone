.class public Lorg/wysaid/view/VideoPlayerGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;,
        Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;,
        Lorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;,
        Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;,
        Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;,
        Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayerInitializeCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"


# instance fields
.field private mFitFullView:Z

.field private mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

.field private mFramesCount2:J

.field private mIsUsingMask:Z

.field private mLastTimestamp2:J

.field private mMaskAspectRatio:F

.field private mOnCreateCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;

.field mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

.field private mPlayer:Landroid/media/MediaPlayer;

.field mPlayerInitCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayerInitializeCallback;

.field mPreparedCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;

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
    .line 30
    const-class v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    const/16 v2, 0x3e8

    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 242
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    invoke-direct {v0}, Lorg/wysaid/texUtils/TextureRenderer$Viewport;-><init>()V

    iput-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mTransformMatrix:[F

    .line 41
    iput-boolean v6, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mIsUsingMask:Z

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mMaskAspectRatio:F

    .line 49
    iput v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewWidth:I

    .line 50
    iput v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewHeight:I

    .line 60
    iput v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoWidth:I

    .line 61
    iput v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoHeight:I

    .line 63
    iput-boolean v6, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFitFullView:Z

    .line 366
    iput-wide v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mTimeCount2:J

    .line 367
    iput-wide v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFramesCount2:J

    .line 368
    iput-wide v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mLastTimestamp2:J

    .line 244
    const-string v0, "libCGE_java"

    const-string v2, "MyGLSurfaceView Construct..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setEGLContextClientVersion(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 247
    invoke-virtual/range {v0 .. v6}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 248
    invoke-virtual {p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 249
    invoke-virtual {p0, p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 250
    invoke-virtual {p0, v6}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setRenderMode(I)V

    .line 251
    invoke-virtual {p0, v7}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setZOrderOnTop(Z)V

    .line 253
    const-string v0, "libCGE_java"

    const-string v1, "MyGLSurfaceView Construct OK..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method private _useUri()V
    .locals 6

    .prologue
    .line 432
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 435
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 442
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 443
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayerInitCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayerInitializeCallback;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayerInitCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayerInitializeCallback;

    iget-object v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayerInitializeCallback;->initPlayer(Landroid/media/MediaPlayer;)V

    .line 467
    :cond_0
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lorg/wysaid/view/VideoPlayerGLSurfaceView$8;

    invoke-direct {v2, p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$8;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 477
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;

    invoke-direct {v2, p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$9;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 513
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lorg/wysaid/view/VideoPlayerGLSurfaceView$10;

    invoke-direct {v2, p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$10;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 524
    :try_start_1
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    :cond_1
    :goto_1
    return-void

    .line 438
    :cond_2
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    const-string v1, "libCGE_java"

    const-string v2, "useUri failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    if-eqz v1, :cond_1

    .line 450
    new-instance v1, Lorg/wysaid/view/VideoPlayerGLSurfaceView$7;

    invoke-direct {v1, p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$7;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    invoke-virtual {p0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 526
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

    .line 527
    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    if-eqz v1, :cond_1

    .line 528
    new-instance v1, Lorg/wysaid/view/VideoPlayerGLSurfaceView$11;

    invoke-direct {v1, p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$11;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    invoke-virtual {p0, v1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$002(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 30
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 30
    iget v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoTextureID:I

    return v0
.end method

.method static synthetic access$1000(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer$Viewport;
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    return-object v0
.end method

.method static synthetic access$102(Lorg/wysaid/view/VideoPlayerGLSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoTextureID:I

    return p1
.end method

.method static synthetic access$200(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->_useUri()V

    return-void
.end method

.method static synthetic access$300(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Lorg/wysaid/nativePort/CGEFrameRenderer;
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    return-object v0
.end method

.method static synthetic access$302(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Lorg/wysaid/nativePort/CGEFrameRenderer;)Lorg/wysaid/nativePort/CGEFrameRenderer;
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;
    .param p1, "x1"    # Lorg/wysaid/nativePort/CGEFrameRenderer;

    .prologue
    .line 30
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    return-object p1
.end method

.method static synthetic access$402(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mIsUsingMask:Z

    return p1
.end method

.method static synthetic access$500(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->calcViewport()V

    return-void
.end method

.method static synthetic access$602(Lorg/wysaid/view/VideoPlayerGLSurfaceView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mMaskAspectRatio:F

    return p1
.end method

.method static synthetic access$700(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$702(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 30
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$800(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 30
    iget v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$802(Lorg/wysaid/view/VideoPlayerGLSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$900(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 30
    iget v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$902(Lorg/wysaid/view/VideoPlayerGLSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoHeight:I

    return p1
.end method

.method private calcViewport()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 392
    iget-boolean v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mIsUsingMask:Z

    if-eqz v5, :cond_0

    .line 393
    iget v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mMaskAspectRatio:F

    .line 398
    .local v2, "scaling":F
    :goto_0
    iget v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    iget v6, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewHeight:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 399
    .local v3, "viewRatio":F
    div-float v1, v2, v3

    .line 403
    .local v1, "s":F
    iget-boolean v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFitFullView:Z

    if-eqz v5, :cond_2

    .line 405
    float-to-double v6, v1

    cmpl-double v5, v6, v8

    if-lez v5, :cond_1

    .line 406
    iget v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 407
    .local v4, "w":I
    iget v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewHeight:I

    .line 423
    .local v0, "h":I
    :goto_1
    iget-object v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iput v4, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    .line 424
    iget-object v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iput v0, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    .line 425
    iget-object v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v6, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewWidth:I

    iget-object v7, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v7, v7, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    .line 426
    iget-object v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v6, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewHeight:I

    iget-object v7, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v7, v7, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    .line 427
    const-string v5, "libCGE_java"

    const-string v6, "View port: %d, %d, %d, %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v9, v9, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void

    .line 395
    .end local v0    # "h":I
    .end local v1    # "s":F
    .end local v2    # "scaling":F
    .end local v3    # "viewRatio":F
    .end local v4    # "w":I
    :cond_0
    iget v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoWidth:I

    int-to-float v5, v5

    iget v6, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoHeight:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .restart local v2    # "scaling":F
    goto :goto_0

    .line 409
    .restart local v1    # "s":F
    .restart local v3    # "viewRatio":F
    :cond_1
    iget v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewWidth:I

    .line 410
    .restart local v4    # "w":I
    iget v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v0, v5

    .restart local v0    # "h":I
    goto :goto_1

    .line 414
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_2
    float-to-double v6, v1

    cmpl-double v5, v6, v8

    if-lez v5, :cond_3

    .line 415
    iget v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewWidth:I

    .line 416
    .restart local v4    # "w":I
    iget v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v0, v5

    .restart local v0    # "h":I
    goto :goto_1

    .line 418
    .end local v0    # "h":I
    .end local v4    # "w":I
    :cond_3
    iget v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewHeight:I

    .line 419
    .restart local v0    # "h":I
    iget v5, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .restart local v4    # "w":I
    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized getPlayer()Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "libCGE_java"

    const-string v1, "Player is not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewWidth:I

    return v0
.end method

.method public getViewheight()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewHeight:I

    return v0
.end method

.method public isUsingMask()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mIsUsingMask:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v5, 0xbe2

    .line 342
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 348
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 353
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    iget v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoTextureID:I

    iget-object v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mTransformMatrix:[F

    invoke-virtual {v0, v1, v2}, Lorg/wysaid/nativePort/CGEFrameRenderer;->update(I[F)V

    .line 355
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEFrameRenderer;->runProc()V

    .line 357
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 358
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 360
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 361
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    iget-object v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v1, v1, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->x:I

    iget-object v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v2, v2, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->y:I

    iget-object v3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v3, v3, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->width:I

    iget-object v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mRenderViewport:Lorg/wysaid/texUtils/TextureRenderer$Viewport;

    iget v4, v4, Lorg/wysaid/texUtils/TextureRenderer$Viewport;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/wysaid/nativePort/CGEFrameRenderer;->render(IIII)V

    .line 362
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 12
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const-wide/16 v10, 0x0

    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 372
    invoke-virtual {p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->requestRender()V

    .line 374
    iget-wide v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mLastTimestamp2:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mLastTimestamp2:J

    .line 377
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 379
    .local v0, "currentTimestamp":J
    iget-wide v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFramesCount2:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFramesCount2:J

    .line 380
    iget-wide v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mTimeCount2:J

    iget-wide v4, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mLastTimestamp2:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mTimeCount2:J

    .line 381
    iput-wide v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mLastTimestamp2:J

    .line 382
    iget-wide v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mTimeCount2:J

    long-to-double v2, v2

    cmpl-double v2, v2, v8

    if-ltz v2, :cond_1

    .line 383
    const-string v2, "libCGE_java"

    const-string v3, "\u64ad\u653e\u5e27\u7387: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFramesCount2:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-wide v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mTimeCount2:J

    long-to-double v2, v2

    sub-double/2addr v2, v8

    double-to-long v2, v2

    iput-wide v2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mTimeCount2:J

    .line 385
    iput-wide v10, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFramesCount2:J

    .line 387
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "libCGE_java"

    const-string v1, "surfaceview onPause ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 337
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 280
    iput p2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewWidth:I

    .line 281
    iput p3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mViewHeight:I

    .line 283
    invoke-direct {p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->calcViewport()V

    .line 284
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 259
    const-string v0, "libCGE_java"

    const-string v1, "video player onSurfaceCreated..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 262
    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 264
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mOnCreateCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mOnCreateCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;

    invoke-interface {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;->createOK()V

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoTextureID:I

    if-nez v0, :cond_2

    .line 269
    :cond_1
    invoke-static {}, Lorg/wysaid/common/Common;->genSurfaceTextureID()I

    move-result v0

    iput v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoTextureID:I

    .line 270
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoTextureID:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 271
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 272
    invoke-direct {p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->_useUri()V

    .line 274
    :cond_2
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 289
    const-string v0, "libCGE_java"

    const-string v1, "Video player view release..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;

    invoke-direct {v0, p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$6;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 330
    :cond_0
    return-void
.end method

.method public setFilterIntensity(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 153
    new-instance v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$3;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$3;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;F)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public declared-synchronized setFilterWithConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$2;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$2;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFitFullView(Z)V
    .locals 1
    .param p1, "fit"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFitFullView:Z

    .line 67
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->calcViewport()V

    .line 69
    :cond_0
    return-void
.end method

.method public setMaskBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "shouldRecycle"    # Z

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setMaskBitmap(Landroid/graphics/Bitmap;ZLorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;)V

    .line 171
    return-void
.end method

.method public setMaskBitmap(Landroid/graphics/Bitmap;ZLorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "shouldRecycle"    # Z
    .param p3, "callback"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;

    .prologue
    .line 176
    new-instance v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$4;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Landroid/graphics/Bitmap;Lorg/wysaid/view/VideoPlayerGLSurfaceView$SetMaskBitmapCallback;Z)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public setOnCreateCallback(Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;)V
    .locals 2
    .param p1, "callback"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;

    .prologue
    .line 226
    sget-boolean v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "\u65e0\u610f\u4e49\u64cd\u4f5c!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-nez v0, :cond_1

    .line 229
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mOnCreateCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_1
    new-instance v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$5;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$5;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setPlayerInitializeCallback(Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayerInitializeCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayerInitializeCallback;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayerInitCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayerInitializeCallback;

    .line 83
    return-void
.end method

.method public declared-synchronized setVideoUri(Landroid/net/Uri;Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "preparedCallback"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;
    .param p3, "completionCallback"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mVideoUri:Landroid/net/Uri;

    .line 117
    iput-object p2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPreparedCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayPreparedCallback;

    .line 118
    iput-object p3, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$PlayCompletionCallback;

    .line 120
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;

    invoke-direct {v0, p0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$1;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takeShot(Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;)V
    .locals 2
    .param p1, "callback"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->$assertionsDisabled:Z

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

    .line 550
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->mFrameRenderer:Lorg/wysaid/nativePort/CGEFrameRenderer;

    if-nez v0, :cond_1

    .line 551
    const-string v0, "libCGE_java"

    const-string v1, "Drawer not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;->takeShotOK(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    :goto_0
    monitor-exit p0

    return-void

    .line 556
    :cond_1
    :try_start_2
    new-instance v0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;

    invoke-direct {v0, p0, p1}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$12;-><init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Lorg/wysaid/view/VideoPlayerGLSurfaceView$TakeShotCallback;)V

    invoke-virtual {p0, v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
