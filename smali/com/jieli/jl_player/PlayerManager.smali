.class public Lcom/jieli/jl_player/PlayerManager;
.super Ljava/lang/Object;
.source "PlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;,
        Lcom/jieli/jl_player/PlayerManager$Query;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final STATUS_COMPLETED:I

.field private final STATUS_ERROR:I

.field private final STATUS_IDLE:I

.field private final STATUS_LOADING:I

.field private final STATUS_PAUSE:I

.field private final STATUS_PLAYING:I

.field private final activity:Landroid/app/Activity;

.field private final audioManager:Landroid/media/AudioManager;

.field private brightness:F

.field private currentPosition:I

.field private defaultRetryTime:J

.field private fullScreenOnly:Z

.field public gestureDetector:Landroid/view/GestureDetector;

.field private isLive:Z

.field private mMaxVolume:I

.field private newPosition:J

.field private onCompleteListener:Lcom/jieli/jl_player/interfaces/OnCompleteListener;

.field private onControlPanelVisibilityChangeListener:Lcom/jieli/jl_player/interfaces/OnControlPanelVisibilityChangeListener;

.field private onErrorListener:Lcom/jieli/jl_player/interfaces/OnErrorListener;

.field private onInfoListener:Lcom/jieli/jl_player/interfaces/OnInfoListener;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private pauseTime:J

.field private playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

.field private playerSupport:Z

.field private portrait:Z

.field private screenWidthPixels:I

.field private status:I

.field private url:Ljava/lang/String;

.field private final videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

.field private volume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "PlayerManager"

    sput-object v0, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    const/4 v6, 0x3

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v4, p0, Lcom/jieli/jl_player/PlayerManager;->STATUS_ERROR:I

    .line 41
    iput v3, p0, Lcom/jieli/jl_player/PlayerManager;->STATUS_IDLE:I

    .line 42
    iput v2, p0, Lcom/jieli/jl_player/PlayerManager;->STATUS_LOADING:I

    .line 43
    const/4 v1, 0x2

    iput v1, p0, Lcom/jieli/jl_player/PlayerManager;->STATUS_PLAYING:I

    .line 44
    iput v6, p0, Lcom/jieli/jl_player/PlayerManager;->STATUS_PAUSE:I

    .line 45
    const/4 v1, 0x4

    iput v1, p0, Lcom/jieli/jl_player/PlayerManager;->STATUS_COMPLETED:I

    .line 53
    iput-boolean v3, p0, Lcom/jieli/jl_player/PlayerManager;->isLive:Z

    .line 57
    iput v3, p0, Lcom/jieli/jl_player/PlayerManager;->mMaxVolume:I

    .line 60
    iput v3, p0, Lcom/jieli/jl_player/PlayerManager;->status:I

    .line 64
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/jieli/jl_player/PlayerManager;->brightness:F

    .line 65
    iput v4, p0, Lcom/jieli/jl_player/PlayerManager;->volume:I

    .line 66
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/jieli/jl_player/PlayerManager;->newPosition:J

    .line 67
    const-wide/16 v4, 0x1388

    iput-wide v4, p0, Lcom/jieli/jl_player/PlayerManager;->defaultRetryTime:J

    .line 76
    new-instance v1, Lcom/jieli/jl_player/PlayerManager$1;

    invoke-direct {v1, p0}, Lcom/jieli/jl_player/PlayerManager$1;-><init>(Lcom/jieli/jl_player/PlayerManager;)V

    iput-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->onErrorListener:Lcom/jieli/jl_player/interfaces/OnErrorListener;

    .line 82
    new-instance v1, Lcom/jieli/jl_player/PlayerManager$2;

    invoke-direct {v1, p0}, Lcom/jieli/jl_player/PlayerManager$2;-><init>(Lcom/jieli/jl_player/PlayerManager;)V

    iput-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->onCompleteListener:Lcom/jieli/jl_player/interfaces/OnCompleteListener;

    .line 88
    new-instance v1, Lcom/jieli/jl_player/PlayerManager$3;

    invoke-direct {v1, p0}, Lcom/jieli/jl_player/PlayerManager$3;-><init>(Lcom/jieli/jl_player/PlayerManager;)V

    iput-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->onInfoListener:Lcom/jieli/jl_player/interfaces/OnInfoListener;

    .line 94
    new-instance v1, Lcom/jieli/jl_player/PlayerManager$4;

    invoke-direct {v1, p0}, Lcom/jieli/jl_player/PlayerManager$4;-><init>(Lcom/jieli/jl_player/PlayerManager;)V

    iput-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->onControlPanelVisibilityChangeListener:Lcom/jieli/jl_player/interfaces/OnControlPanelVisibilityChangeListener;

    .line 110
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 111
    const-string v1, "libijkplayer.so"

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jieli/jl_player/PlayerManager;->playerSupport:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/jieli/jl_player/PlayerManager;->screenWidthPixels:I

    .line 120
    iput-object p2, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .line 121
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    new-instance v4, Lcom/jieli/jl_player/PlayerManager$5;

    invoke-direct {v4, p0}, Lcom/jieli/jl_player/PlayerManager$5;-><init>(Lcom/jieli/jl_player/PlayerManager;)V

    invoke-virtual {v1, v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 128
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    new-instance v4, Lcom/jieli/jl_player/PlayerManager$6;

    invoke-direct {v4, p0}, Lcom/jieli/jl_player/PlayerManager$6;-><init>(Lcom/jieli/jl_player/PlayerManager;)V

    invoke-virtual {v1, v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 136
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    new-instance v4, Lcom/jieli/jl_player/PlayerManager$7;

    invoke-direct {v4, p0}, Lcom/jieli/jl_player/PlayerManager$7;-><init>(Lcom/jieli/jl_player/PlayerManager;)V

    invoke-virtual {v1, v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 159
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 160
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/jieli/jl_player/PlayerManager;->mMaxVolume:I

    .line 163
    :cond_0
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v4, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;

    invoke-direct {v4, p0}, Lcom/jieli/jl_player/PlayerManager$PlayerGestureListener;-><init>(Lcom/jieli/jl_player/PlayerManager;)V

    invoke-direct {v1, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->gestureDetector:Landroid/view/GestureDetector;

    .line 165
    iget-boolean v1, p0, Lcom/jieli/jl_player/PlayerManager;->fullScreenOnly:Z

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/jieli/jl_player/PlayerManager;->getScreenOrientation()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/jieli/jl_player/PlayerManager;->portrait:Z

    .line 170
    iget-boolean v1, p0, Lcom/jieli/jl_player/PlayerManager;->playerSupport:Z

    if-nez v1, :cond_2

    .line 171
    sget-object v1, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u5668\u4e0d\u652f\u6301\u6b64\u8bbe\u5907"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    const-string v4, "loadLibraries error"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    move v1, v3

    .line 168
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/jieli/jl_player/PlayerManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/PlayerManager;->statusChange(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/interfaces/OnCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->onCompleteListener:Lcom/jieli/jl_player/interfaces/OnCompleteListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/interfaces/OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->onErrorListener:Lcom/jieli/jl_player/interfaces/OnErrorListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/interfaces/OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->onInfoListener:Lcom/jieli/jl_player/interfaces/OnInfoListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jieli/jl_player/PlayerManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;

    .prologue
    .line 34
    iget v0, p0, Lcom/jieli/jl_player/PlayerManager;->screenWidthPixels:I

    return v0
.end method

.method static synthetic access$600(Lcom/jieli/jl_player/PlayerManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/jieli/jl_player/PlayerManager;->isLive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/jieli/jl_player/PlayerManager;F)V
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/PlayerManager;->onProgressSlide(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/jieli/jl_player/PlayerManager;F)V
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/PlayerManager;->onVolumeSlide(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/jl_player/PlayerManager;F)V
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/PlayerManager;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/PlayerManager;->onBrightnessSlide(F)V

    return-void
.end method

.method private generateTime(J)Ljava/lang/String;
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 241
    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v3, v4

    .line 242
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 243
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 244
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 245
    .local v0, "hours":I
    if-lez v0, :cond_0

    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getScreenOrientation()I
    .locals 6

    .prologue
    .line 249
    iget-object v5, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 250
    .local v3, "rotation":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 251
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 252
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 253
    .local v4, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 256
    .local v1, "height":I
    if-eqz v3, :cond_0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    :cond_0
    if-gt v1, v4, :cond_3

    :cond_1
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    :cond_2
    if-le v4, v1, :cond_4

    .line 258
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 272
    const/4 v2, 0x1

    .line 297
    .local v2, "orientation":I
    :goto_0
    return v2

    .line 260
    .end local v2    # "orientation":I
    :pswitch_0
    const/4 v2, 0x1

    .line 261
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 263
    .end local v2    # "orientation":I
    :pswitch_1
    const/4 v2, 0x0

    .line 264
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 266
    .end local v2    # "orientation":I
    :pswitch_2
    const/16 v2, 0x9

    .line 267
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 269
    .end local v2    # "orientation":I
    :pswitch_3
    const/16 v2, 0x8

    .line 270
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 279
    .end local v2    # "orientation":I
    :cond_4
    packed-switch v3, :pswitch_data_1

    .line 293
    const/4 v2, 0x0

    .restart local v2    # "orientation":I
    goto :goto_0

    .line 281
    .end local v2    # "orientation":I
    :pswitch_4
    const/4 v2, 0x0

    .line 282
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 284
    .end local v2    # "orientation":I
    :pswitch_5
    const/4 v2, 0x1

    .line 285
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 287
    .end local v2    # "orientation":I
    :pswitch_6
    const/16 v2, 0x8

    .line 288
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 290
    .end local v2    # "orientation":I
    :pswitch_7
    const/16 v2, 0x9

    .line 291
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 279
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onBrightnessSlide(F)V
    .locals 6
    .param p1, "percent"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v4, 0x3c23d70a    # 0.01f

    .line 352
    iget v1, p0, Lcom/jieli/jl_player/PlayerManager;->brightness:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Lcom/jieli/jl_player/PlayerManager;->brightness:F

    .line 354
    iget v1, p0, Lcom/jieli/jl_player/PlayerManager;->brightness:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 355
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/jieli/jl_player/PlayerManager;->brightness:F

    .line 360
    :cond_0
    :goto_0
    sget-object v1, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jieli/jl_player/PlayerManager;->brightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",percent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 362
    .local v0, "lpa":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/jieli/jl_player/PlayerManager;->brightness:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 363
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    .line 364
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 368
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 369
    return-void

    .line 356
    .end local v0    # "lpa":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget v1, p0, Lcom/jieli/jl_player/PlayerManager;->brightness:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 357
    iput v4, p0, Lcom/jieli/jl_player/PlayerManager;->brightness:F

    goto :goto_0

    .line 365
    .restart local v0    # "lpa":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 366
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1
.end method

.method private onProgressSlide(F)V
    .locals 14
    .param p1, "percent"    # F

    .prologue
    .line 327
    iget-object v10, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v10}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v10

    int-to-long v6, v10

    .line 328
    .local v6, "position":J
    iget-object v10, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v10}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v10

    int-to-long v4, v10

    .line 329
    .local v4, "duration":J
    const-wide/32 v10, 0x186a0

    sub-long v12, v4, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 330
    .local v2, "deltaMax":J
    long-to-float v10, v2

    mul-float/2addr v10, p1

    float-to-long v0, v10

    .line 332
    .local v0, "delta":J
    add-long v10, v0, v6

    iput-wide v10, p0, Lcom/jieli/jl_player/PlayerManager;->newPosition:J

    .line 333
    iget-wide v10, p0, Lcom/jieli/jl_player/PlayerManager;->newPosition:J

    cmp-long v10, v10, v4

    if-lez v10, :cond_2

    .line 334
    iput-wide v4, p0, Lcom/jieli/jl_player/PlayerManager;->newPosition:J

    .line 339
    :cond_0
    :goto_0
    long-to-int v10, v0

    div-int/lit16 v8, v10, 0x3e8

    .line 340
    .local v8, "showDelta":I
    if-eqz v8, :cond_1

    .line 341
    if-lez v8, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, "text":Ljava/lang/String;
    :goto_1
    sget-object v10, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onProgressSlide:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v9    # "text":Ljava/lang/String;
    :cond_1
    return-void

    .line 335
    .end local v8    # "showDelta":I
    :cond_2
    iget-wide v10, p0, Lcom/jieli/jl_player/PlayerManager;->newPosition:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    .line 336
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/jieli/jl_player/PlayerManager;->newPosition:J

    .line 337
    neg-long v0, v6

    goto :goto_0

    .line 341
    .restart local v8    # "showDelta":I
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private onVolumeSlide(F)V
    .locals 8
    .param p1, "percent"    # F

    .prologue
    const/4 v5, 0x3

    .line 306
    iget-object v3, p0, Lcom/jieli/jl_player/PlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/jieli/jl_player/PlayerManager;->volume:I

    .line 307
    iget v3, p0, Lcom/jieli/jl_player/PlayerManager;->volume:I

    if-gez v3, :cond_0

    .line 308
    const/4 v3, 0x0

    iput v3, p0, Lcom/jieli/jl_player/PlayerManager;->volume:I

    .line 309
    :cond_0
    iget v3, p0, Lcom/jieli/jl_player/PlayerManager;->mMaxVolume:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iget v4, p0, Lcom/jieli/jl_player/PlayerManager;->volume:I

    add-int v1, v3, v4

    .line 310
    .local v1, "index":I
    iget v3, p0, Lcom/jieli/jl_player/PlayerManager;->mMaxVolume:I

    if-le v1, v3, :cond_3

    .line 311
    iget v1, p0, Lcom/jieli/jl_player/PlayerManager;->mMaxVolume:I

    .line 316
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/jieli/jl_player/PlayerManager;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 318
    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/jieli/jl_player/PlayerManager;->mMaxVolume:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 319
    .local v0, "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "s":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 321
    const-string v2, "off"

    .line 323
    :cond_2
    sget-object v3, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVolumeSlide:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void

    .line 312
    .end local v0    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    if-gez v1, :cond_1

    .line 313
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setFullScreen(Z)V
    .locals 3
    .param p1, "fullScreen"    # Z

    .prologue
    const/16 v2, 0x200

    .line 396
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 398
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 399
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 400
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 401
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 408
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 403
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 404
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 405
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private statusChange(I)V
    .locals 2
    .param p1, "newStatus"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/jieli/jl_player/PlayerManager;->status:I

    .line 177
    iget-boolean v0, p0, Lcom/jieli/jl_player/PlayerManager;->isLive:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 178
    sget-object v0, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "statusChange STATUS_COMPLETED..."

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    invoke-interface {v0}, Lcom/jieli/jl_player/interfaces/PlayerStateListener;->onComplete()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 183
    sget-object v0, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "statusChange STATUS_ERROR..."

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    invoke-interface {v0}, Lcom/jieli/jl_player/interfaces/PlayerStateListener;->onError()V

    goto :goto_0

    .line 187
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    invoke-interface {v0}, Lcom/jieli/jl_player/interfaces/PlayerStateListener;->onLoading()V

    .line 192
    :cond_3
    sget-object v0, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "statusChange STATUS_LOADING..."

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 194
    sget-object v0, Lcom/jieli/jl_player/PlayerManager;->TAG:Ljava/lang/String;

    const-string v1, "statusChange STATUS_PLAYING..."

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    invoke-interface {v0}, Lcom/jieli/jl_player/interfaces/PlayerStateListener;->onPlay()V

    goto :goto_0
.end method

.method private tryFullScreen(Z)V
    .locals 2
    .param p1, "fullScreen"    # Z

    .prologue
    .line 382
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 384
    .local v0, "supportActionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 385
    if-eqz p1, :cond_1

    .line 386
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 392
    .end local v0    # "supportActionBar":Landroid/support/v7/app/ActionBar;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/PlayerManager;->setFullScreen(Z)V

    .line 393
    return-void

    .line 388
    .restart local v0    # "supportActionBar":Landroid/support/v7/app/ActionBar;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_0
.end method


# virtual methods
.method public changeScaleType(I)V
    .locals 1
    .param p1, "scaleType"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0, p1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->changeAspecRatio(I)V

    .line 422
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlayerSupport()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerSupport:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

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

.method public live(Z)Lcom/jieli/jl_player/PlayerManager;
    .locals 0
    .param p1, "isLive"    # Z

    .prologue
    .line 651
    iput-boolean p1, p0, Lcom/jieli/jl_player/PlayerManager;->isLive:Z

    .line 652
    return-object p0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 433
    iget-boolean v1, p0, Lcom/jieli/jl_player/PlayerManager;->fullScreenOnly:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/jieli/jl_player/PlayerManager;->getScreenOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onComplete(Lcom/jieli/jl_player/interfaces/OnCompleteListener;)Lcom/jieli/jl_player/PlayerManager;
    .locals 0
    .param p1, "onCompleteListener"    # Lcom/jieli/jl_player/interfaces/OnCompleteListener;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager;->onCompleteListener:Lcom/jieli/jl_player/interfaces/OnCompleteListener;

    .line 633
    return-object p0
.end method

.method public onControlPanelVisibilityChange(Lcom/jieli/jl_player/interfaces/OnControlPanelVisibilityChangeListener;)Lcom/jieli/jl_player/PlayerManager;
    .locals 0
    .param p1, "listener"    # Lcom/jieli/jl_player/interfaces/OnControlPanelVisibilityChangeListener;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager;->onControlPanelVisibilityChangeListener:Lcom/jieli/jl_player/interfaces/OnControlPanelVisibilityChangeListener;

    .line 643
    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->stopPlayback()V

    .line 230
    return-void
.end method

.method public onError(Lcom/jieli/jl_player/interfaces/OnErrorListener;)Lcom/jieli/jl_player/PlayerManager;
    .locals 0
    .param p1, "onErrorListener"    # Lcom/jieli/jl_player/interfaces/OnErrorListener;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager;->onErrorListener:Lcom/jieli/jl_player/interfaces/OnErrorListener;

    .line 628
    return-object p0
.end method

.method public onInfo(Lcom/jieli/jl_player/interfaces/OnInfoListener;)Lcom/jieli/jl_player/PlayerManager;
    .locals 0
    .param p1, "onInfoListener"    # Lcom/jieli/jl_player/interfaces/OnInfoListener;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager;->onInfoListener:Lcom/jieli/jl_player/interfaces/OnInfoListener;

    .line 638
    return-object p0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/jl_player/PlayerManager;->pauseTime:J

    .line 203
    iget v0, p0, Lcom/jieli/jl_player/PlayerManager;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->pause()V

    .line 205
    iget-boolean v0, p0, Lcom/jieli/jl_player/PlayerManager;->isLive:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/jieli/jl_player/PlayerManager;->currentPosition:I

    .line 209
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jieli/jl_player/PlayerManager;->pauseTime:J

    .line 213
    iget v0, p0, Lcom/jieli/jl_player/PlayerManager;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 214
    iget-boolean v0, p0, Lcom/jieli/jl_player/PlayerManager;->isLive:Z

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->seekTo(I)V

    .line 221
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    .line 223
    :cond_1
    return-void

    .line 217
    :cond_2
    iget v0, p0, Lcom/jieli/jl_player/PlayerManager;->currentPosition:I

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    iget v1, p0, Lcom/jieli/jl_player/PlayerManager;->currentPosition:I

    invoke-virtual {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->seekTo(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->pause()V

    .line 430
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager;->url:Ljava/lang/String;

    .line 234
    iget-boolean v0, p0, Lcom/jieli/jl_player/PlayerManager;->playerSupport:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0, p1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    .line 238
    :cond_0
    return-void
.end method

.method public playInFullScreen(Z)Lcom/jieli/jl_player/PlayerManager;
    .locals 2
    .param p1, "fullScreen"    # Z

    .prologue
    .line 620
    if-eqz p1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 623
    :cond_0
    return-object p0
.end method

.method public setDefaultRetryTime(J)V
    .locals 1
    .param p1, "defaultRetryTime"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/jieli/jl_player/PlayerManager;->defaultRetryTime:J

    .line 106
    return-void
.end method

.method public setFullScreenOnly(Z)V
    .locals 2
    .param p1, "fullScreenOnly"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/jieli/jl_player/PlayerManager;->fullScreenOnly:Z

    .line 373
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/PlayerManager;->tryFullScreen(Z)V

    .line 374
    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->activity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setPlayerStateListener(Lcom/jieli/jl_player/interfaces/PlayerStateListener;)V
    .locals 0
    .param p1, "playerStateListener"    # Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager;->playerStateListener:Lcom/jieli/jl_player/interfaces/PlayerStateListener;

    .line 74
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    .line 426
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->stopPlayback()V

    .line 606
    return-void
.end method

.method public toggleAspectRatio()Lcom/jieli/jl_player/PlayerManager;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager;->videoView:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->toggleAspectRatio()I

    .line 659
    :cond_0
    return-object p0
.end method
