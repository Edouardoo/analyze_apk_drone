.class public Lcom/hfufo/rxdrone/PlayVideoActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PlayVideoActivity.java"


# static fields
.field private static final MSG_HIDE_BAR_UI:I = 0xb1

.field private static final MSG_ONE_TIME:I = 0xb5

.field private static final MSG_UPDATE_PROGRESS:I = 0xb2

.field private static final MSG_VIDEO_PAUSE:I = 0xb3

.field private static final MSG_VIDEO_RESUME:I = 0xb4

.field public static final OP_DOWN:I = 0xedf2

.field public static final OP_UP:I = 0xedf1

.field private static final TIME_UPDATE:J = 0xc8L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private back:Landroid/widget/ImageView;

.field private bottomBar:Landroid/widget/RelativeLayout;

.field private brightnessToast:Lcom/fh/lib/BrightnessToast;

.field private delet:Landroid/widget/ImageView;

.field private index:I

.field private isClick:Z

.field private isDel:Z

.field private isFastPlay:Z

.field private isPausing:Z

.field private isPreparing:Z

.field private ivPlayOrPause:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private name:Ljava/lang/String;

.field private pauseTime:I

.field private playerSupport:Z

.field private saveBrightness:I

.field private sbProgress:Landroid/widget/SeekBar;

.field private screenHeight:I

.field private screenWidth:I

.field private share:Landroid/widget/ImageView;

.field private startX:I

.field private startY:I

.field private threshold:I

.field private topBar:Landroid/widget/RelativeLayout;

.field private tvCurrentTime:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvTotalTime:Landroid/widget/TextView;

.field private videoPath:Ljava/lang/String;

.field private videoProgressToast:Lcom/fh/lib/VideoProgressToast;

.field private videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

.field private volumeToast:Lcom/fh/lib/VolumeToast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 43
    const-string v0, "PlayVideoActivity"

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->name:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isClick:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->index:I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isDel:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/rxdrone/PlayVideoActivity$1;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/PlayVideoActivity$1;-><init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    .line 498
    new-instance v0, Lcom/hfufo/rxdrone/PlayVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/PlayVideoActivity$5;-><init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 531
    new-instance v0, Lcom/hfufo/rxdrone/PlayVideoActivity$6;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/PlayVideoActivity$6;-><init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 566
    new-instance v0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/PlayVideoActivity$7;-><init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/rxdrone/PlayVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->showOrHideBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPreparing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/hfufo/rxdrone/PlayVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->playOrPause()V

    return-void
.end method

.method static synthetic access$1200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->back:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->share:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/hfufo/rxdrone/PlayVideoActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->shareFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->delet:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isDel:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isDel:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/hfufo/rxdrone/PlayVideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->index:I

    return v0
.end method

.method static synthetic access$1900(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->ivPlayOrPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/hfufo/rxdrone/PlayVideoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->pauseTime:I

    return p1
.end method

.method static synthetic access$2100(Lcom/hfufo/rxdrone/PlayVideoActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$2102(Lcom/hfufo/rxdrone/PlayVideoActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mLastMotionX:F

    return p1
.end method

.method static synthetic access$2200(Lcom/hfufo/rxdrone/PlayVideoActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mLastMotionY:F

    return v0
.end method

.method static synthetic access$2202(Lcom/hfufo/rxdrone/PlayVideoActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mLastMotionY:F

    return p1
.end method

.method static synthetic access$2300(Lcom/hfufo/rxdrone/PlayVideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->startX:I

    return v0
.end method

.method static synthetic access$2302(Lcom/hfufo/rxdrone/PlayVideoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->startX:I

    return p1
.end method

.method static synthetic access$2400(Lcom/hfufo/rxdrone/PlayVideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->startY:I

    return v0
.end method

.method static synthetic access$2402(Lcom/hfufo/rxdrone/PlayVideoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->startY:I

    return p1
.end method

.method static synthetic access$2500(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isFastPlay:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isFastPlay:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/hfufo/rxdrone/PlayVideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->threshold:I

    return v0
.end method

.method static synthetic access$2700(Lcom/hfufo/rxdrone/PlayVideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->screenWidth:I

    return v0
.end method

.method static synthetic access$2800(Lcom/hfufo/rxdrone/PlayVideoActivity;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->showBrightnessToast(IF)V

    return-void
.end method

.method static synthetic access$2900(Lcom/hfufo/rxdrone/PlayVideoActivity;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->showVolumeToastUI(IF)V

    return-void
.end method

.method static synthetic access$300(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->sbProgress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/hfufo/rxdrone/PlayVideoActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->showFastForwardToast(F)V

    return-void
.end method

.method static synthetic access$3100(Lcom/hfufo/rxdrone/PlayVideoActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->showFastBackward(F)V

    return-void
.end method

.method static synthetic access$3200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isClick:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isClick:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->tvCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hfufo/rxdrone/PlayVideoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/hfufo/rxdrone/PlayVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->updatePlayingUI()V

    return-void
.end method

.method private formatTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "strs":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 379
    .end local v1    # "strs":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 375
    :cond_0
    move-object v0, p1

    .local v0, "des":Ljava/lang/String;
    goto :goto_0

    .line 379
    .end local v0    # "des":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static goToPlayVideo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "video_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method private initPlayer()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 240
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 241
    const-string v1, "libijkplayer.so"

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 242
    const/4 v1, 0x2

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->playerSupport:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->playerSupport:Z

    if-nez v1, :cond_0

    .line 249
    const-string v1, "PlayVideoActivity"

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->finish()V

    .line 274
    :goto_1
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PlayVideoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibraries error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    new-instance v2, Lcom/hfufo/rxdrone/PlayVideoActivity$2;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/PlayVideoActivity$2;-><init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    invoke-virtual {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 263
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    new-instance v2, Lcom/hfufo/rxdrone/PlayVideoActivity$3;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/PlayVideoActivity$3;-><init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    invoke-virtual {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    goto :goto_1
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 214
    const v0, 0x7f0f014d

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .line 215
    const v0, 0x7f0f014e

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->topBar:Landroid/widget/RelativeLayout;

    .line 216
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->bottomBar:Landroid/widget/RelativeLayout;

    .line 217
    const v0, 0x7f0f014f

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->tvTitle:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0f0155

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->tvCurrentTime:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f0f0157

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->tvTotalTime:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0f0156

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->sbProgress:Landroid/widget/SeekBar;

    .line 221
    const v0, 0x7f0f0154

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->ivPlayOrPause:Landroid/widget/ImageView;

    .line 222
    const v0, 0x7f0f0150

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->back:Landroid/widget/ImageView;

    .line 223
    const v0, 0x7f0f0151

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->share:Landroid/widget/ImageView;

    .line 224
    const v0, 0x7f0f0152

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->delet:Landroid/widget/ImageView;

    .line 226
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->ivPlayOrPause:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->back:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->share:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->delet:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->sbProgress:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 233
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->changeAspecRatio(I)V

    .line 234
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->setRequestedOrientation(I)V

    .line 235
    return-void
.end method

.method private isPausing()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreparing()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPreparing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onResumeVideo()V
    .locals 6

    .prologue
    const/16 v5, 0xb5

    const/16 v2, 0xb4

    const/4 v4, 0x0

    .line 326
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->playerSupport:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    iget v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->pauseTime:I

    invoke-virtual {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->seekTo(I)V

    .line 328
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    .line 329
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing:Z

    .line 330
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/x-msvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->pauseTime:I

    div-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->playerSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->pause()V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing:Z

    .line 316
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->pauseTime:I

    .line 317
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    :cond_0
    return-void
.end method

.method private playOrPause()V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->pauseVideo()V

    goto :goto_0

    .line 347
    :cond_2
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->onResumeVideo()V

    goto :goto_0

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->playVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->playerSupport:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->name:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1, p1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPreparing:Z

    .line 294
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    new-instance v2, Lcom/hfufo/rxdrone/PlayVideoActivity$4;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/PlayVideoActivity$4;-><init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    invoke-virtual {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 309
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private shareFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 658
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "imageIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 660
    .local v1, "uri":Landroid/net/Uri;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 661
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 665
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/Util/FileUtil;->getMediaStoreUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 670
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 672
    const-string v2, "\u5206\u4eab"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 673
    return-void

    .line 668
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private showBrightnessToast(IF)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 399
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->brightnessToast:Lcom/fh/lib/BrightnessToast;

    if-nez v1, :cond_0

    .line 400
    new-instance v1, Lcom/fh/lib/BrightnessToast;

    invoke-direct {v1, p0}, Lcom/fh/lib/BrightnessToast;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->brightnessToast:Lcom/fh/lib/BrightnessToast;

    .line 402
    :cond_0
    const/4 v0, -0x1

    .line 403
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->brightnessToast:Lcom/fh/lib/BrightnessToast;

    invoke-virtual {v1, v0}, Lcom/fh/lib/BrightnessToast;->show(I)V

    .line 412
    return-void

    .line 405
    :pswitch_0
    iget v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->screenHeight:I

    int-to-float v1, v1

    div-float v1, p2, v1

    invoke-static {}, Lcom/fh/lib/BrightnessToast;->getMaxValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v0, v1

    .line 406
    goto :goto_0

    .line 408
    :pswitch_1
    iget v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->screenHeight:I

    int-to-float v1, v1

    div-float v1, p2, v1

    invoke-static {}, Lcom/fh/lib/BrightnessToast;->getMaxValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    neg-int v0, v1

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0xedf1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showFastBackward(F)V
    .locals 7
    .param p1, "x"    # F

    .prologue
    const/16 v6, 0xb5

    const/16 v5, 0xb2

    .line 463
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float v1, p1, v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 466
    .local v0, "progress":I
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v1

    sub-int v0, v1, v0

    .line 467
    if-gtz v0, :cond_0

    .line 468
    const/16 v0, 0x3e8

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->canSeekBackward()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->seekTo(I)V

    .line 472
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iput v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->pauseTime:I

    .line 475
    :cond_1
    div-int/lit16 v0, v0, 0x3e8

    .line 476
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 477
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->tvCurrentTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/fh/util/TimeFormater;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/x-msvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 484
    :goto_0
    const/16 v1, 0x102b

    invoke-static {v0}, Lcom/fh/util/TimeFormater;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->showVideoProgressToast(ILjava/lang/String;)V

    .line 485
    return-void

    .line 482
    :cond_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private showFastForwardToast(F)V
    .locals 7
    .param p1, "x"    # F

    .prologue
    const/16 v6, 0xb5

    const/16 v5, 0xb2

    .line 437
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    iget v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float v1, p1, v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 440
    .local v0, "progress":I
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v1

    add-int/lit16 v0, v1, -0x3e8

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->canSeekForward()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->seekTo(I)V

    .line 446
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    iput v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->pauseTime:I

    .line 449
    :cond_1
    div-int/lit16 v0, v0, 0x3e8

    .line 450
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 451
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->tvCurrentTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/fh/util/TimeFormater;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/x-msvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    :goto_0
    const/16 v1, 0x102a

    invoke-static {v0}, Lcom/fh/util/TimeFormater;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->showVideoProgressToast(ILjava/lang/String;)V

    .line 460
    return-void

    .line 457
    :cond_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private showOrHideBar()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/16 v1, 0xb1

    .line 415
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 420
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 426
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 434
    :cond_0
    :goto_2
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method private showVideoProgressToast(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "timeText"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoProgressToast:Lcom/fh/lib/VideoProgressToast;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/fh/lib/VideoProgressToast;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fh/lib/VideoProgressToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoProgressToast:Lcom/fh/lib/VideoProgressToast;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoProgressToast:Lcom/fh/lib/VideoProgressToast;

    invoke-virtual {v0, p1, p2}, Lcom/fh/lib/VideoProgressToast;->show(ILjava/lang/String;)V

    .line 496
    return-void
.end method

.method private showVolumeToastUI(IF)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 383
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->volumeToast:Lcom/fh/lib/VolumeToast;

    if-nez v1, :cond_0

    .line 384
    new-instance v1, Lcom/fh/lib/VolumeToast;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fh/lib/VolumeToast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->volumeToast:Lcom/fh/lib/VolumeToast;

    .line 386
    :cond_0
    const/4 v0, -0x1

    .line 387
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->volumeToast:Lcom/fh/lib/VolumeToast;

    invoke-virtual {v1, v0}, Lcom/fh/lib/VolumeToast;->show(I)V

    .line 396
    return-void

    .line 389
    :pswitch_0
    iget v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->screenHeight:I

    int-to-float v1, v1

    div-float v1, p2, v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->volumeToast:Lcom/fh/lib/VolumeToast;

    invoke-virtual {v2}, Lcom/fh/lib/VolumeToast;->getMaxVol()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v0, v1

    .line 390
    goto :goto_0

    .line 392
    :pswitch_1
    iget v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->screenHeight:I

    int-to-float v1, v1

    div-float v1, p2, v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->volumeToast:Lcom/fh/lib/VolumeToast;

    invoke-virtual {v2}, Lcom/fh/lib/VolumeToast;->getMaxVol()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    neg-int v0, v1

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0xedf1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .param p0, "m_context"    # Landroid/app/Activity;
    .param p1, "video_url"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 648
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 649
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 650
    const-string v1, "video_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v1, "video_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 653
    return-void
.end method

.method private updatePlayingUI()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->ivPlayOrPause:Landroid/widget/ImageView;

    const v1, 0x7f030069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->requestFocus()Z

    .line 360
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->sbProgress:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 361
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->sbProgress:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 362
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->formatTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->tvCurrentTime:Landroid/widget/TextView;

    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->tvTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/fh/util/TimeFormater;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->setContentView(I)V

    .line 163
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->initView()V

    .line 165
    invoke-static {p0}, Lcom/fh/hdutil/AppUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->screenWidth:I

    .line 166
    invoke-static {p0}, Lcom/fh/hdutil/AppUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->screenHeight:I

    .line 167
    invoke-static {p0}, Lcom/fh/hdutil/AppUtils;->getScreenBrightness(Landroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->saveBrightness:I

    .line 168
    const/16 v1, 0x14

    invoke-static {p0, v1}, Lcom/fh/hdutil/AppUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->threshold:I

    .line 169
    const-string v1, "PlayVideoActivity"

    const-string v2, "oncreate"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->initPlayer()V

    .line 172
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->playerSupport:Z

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 175
    const-string v1, "video_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoPath:Ljava/lang/String;

    .line 176
    const-string v1, "video_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->index:I

    .line 177
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->playVideo(Ljava/lang/String;)V

    .line 182
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 210
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 195
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->pauseVideo()V

    .line 196
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->onResumeVideo()V

    .line 190
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity;->saveBrightness:I

    invoke-static {p0, v0}, Lcom/fh/hdutil/AppUtils;->setBrightness(Landroid/app/Activity;I)V

    .line 201
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 202
    return-void
.end method
