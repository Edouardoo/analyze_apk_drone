.class public Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
.super Landroid/widget/FrameLayout;
.source "IjkVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final s_allAspectRatio:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAllRenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentAspectRatioIndex:I

.field private mCurrentBufferPercentage:I

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

.field private mCurrentState:I

.field private mEnableBackgroundPlay:Z

.field private mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mPrepareEndTime:J

.field private mPrepareStartTime:J

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

.field mSHCallback:Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field private mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private subtitleDisplay:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->s_allAspectRatio:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->TAG:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 80
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 83
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceHolder:Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    .line 84
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 98
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanPause:Z

    .line 99
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekBack:Z

    .line 100
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekForward:Z

    .line 116
    iput-wide v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareStartTime:J

    .line 117
    iput-wide v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareEndTime:J

    .line 368
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 386
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 441
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 455
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$4;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 506
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 558
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 565
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$7;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 573
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 637
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSHCallback:Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

    .line 889
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 890
    sget-object v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 923
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    .line 924
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRender:I

    .line 1071
    iput-boolean v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 123
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->TAG:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 80
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 83
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceHolder:Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    .line 84
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 98
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanPause:Z

    .line 99
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekBack:Z

    .line 100
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekForward:Z

    .line 116
    iput-wide v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareStartTime:J

    .line 117
    iput-wide v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareEndTime:J

    .line 368
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 386
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 441
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 455
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$4;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 506
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 558
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 565
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$7;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 573
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 637
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSHCallback:Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

    .line 889
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 890
    sget-object v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 923
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    .line 924
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRender:I

    .line 1071
    iput-boolean v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 128
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->TAG:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 80
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 83
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceHolder:Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    .line 84
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 98
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanPause:Z

    .line 99
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekBack:Z

    .line 100
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekForward:Z

    .line 116
    iput-wide v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareStartTime:J

    .line 117
    iput-wide v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareEndTime:J

    .line 368
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 386
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 441
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 455
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$4;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 506
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 558
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 565
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$7;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 573
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 637
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSHCallback:Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

    .line 889
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 890
    sget-object v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 923
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    .line 924
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRender:I

    .line 1071
    iput-boolean v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 133
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->TAG:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 80
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 83
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceHolder:Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    .line 84
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 98
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanPause:Z

    .line 99
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekBack:Z

    .line 100
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekForward:Z

    .line 116
    iput-wide v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareStartTime:J

    .line 117
    iput-wide v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareEndTime:J

    .line 368
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 386
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 441
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 455
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$4;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 506
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 558
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 565
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$7;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 573
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 637
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSHCallback:Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

    .line 889
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 890
    sget-object v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 923
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    .line 924
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRender:I

    .line 1071
    iput-boolean v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 139
    invoke-direct {p0, p1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$102(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1102(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1200(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1202(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$1800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$2002(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$202(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$2100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceHolder:Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "x2"    # Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$302(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareEndTime:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$700(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v1, p0}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 361
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 363
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v1, v0}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 364
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->setEnabled(Z)V

    .line 366
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 362
    goto :goto_0
.end method

.method private bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "holder"    # Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 629
    :cond_0
    if-nez p2, :cond_1

    .line 630
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 634
    :cond_1
    invoke-interface {p2, p1}, Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0
.end method

.method private buildLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    const-string p1, "und"

    .line 1218
    .end local p1    # "language":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private buildResolution(IIII)Ljava/lang/String;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sarNum"    # I
    .param p4, "sarDen"    # I

    .prologue
    const/4 v2, 0x1

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1165
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1168
    if-gt p3, v2, :cond_0

    if-le p4, v2, :cond_1

    .line 1169
    :cond_0
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1171
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1173
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildTimeMilli(J)Ljava/lang/String;
    .locals 13
    .param p1, "duration"    # J

    .prologue
    .line 1180
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 1181
    .local v6, "total_seconds":J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 1182
    .local v0, "hours":J
    const-wide/16 v8, 0xe10

    rem-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long v2, v8, v10

    .line 1183
    .local v2, "minutes":J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 1184
    .local v4, "seconds":J
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gtz v8, :cond_0

    .line 1185
    const-string v8, "--:--"

    .line 1192
    :goto_0
    return-object v8

    .line 1187
    :cond_0
    const-wide/16 v8, 0x64

    cmp-long v8, v0, v8

    if-ltz v8, :cond_1

    .line 1188
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1189
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_2

    .line 1190
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1192
    :cond_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private buildTrackType(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1198
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 1211
    sget v1, Lcom/jieli/jl_player/R$string;->TrackType_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1200
    :pswitch_0
    sget v1, Lcom/jieli/jl_player/R$string;->TrackType_video:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1202
    :pswitch_1
    sget v1, Lcom/jieli/jl_player/R$string;->TrackType_audio:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1204
    :pswitch_2
    sget v1, Lcom/jieli/jl_player/R$string;->TrackType_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1206
    :pswitch_3
    sget v1, Lcom/jieli/jl_player/R$string;->TrackType_timedtext:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1208
    :pswitch_4
    sget v1, Lcom/jieli/jl_player/R$string;->TrackType_metadata:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static getPlayerText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 987
    packed-switch p1, :pswitch_data_0

    .line 998
    sget v1, Lcom/jieli/jl_player/R$string;->N_A:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 989
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_player_AndroidMediaPlayer:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 990
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 992
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_player_IjkMediaPlayer:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 993
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 995
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_player_IjkExoMediaPlayer:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 996
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 987
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getRenderText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "render"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 954
    packed-switch p1, :pswitch_data_0

    .line 965
    sget v1, Lcom/jieli/jl_player/R$string;->N_A:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 956
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_render_none:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 957
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 959
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_render_surface_view:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 962
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_render_texture_view:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 963
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initBackground()V
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/Settings;->getEnableBackgroundPlay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 1075
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mEnableBackgroundPlay:Z

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/services/MediaPlayerService;->intentToStart(Landroid/content/Context;)V

    .line 1077
    invoke-static {}, Lcom/jieli/jl_player/ijkplayer/services/MediaPlayerService;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1079
    :cond_0
    return-void
.end method

.method private initRenders()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 927
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 929
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/Settings;->getEnableSurfaceView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/Settings;->getEnableTextureView()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 932
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/Settings;->getEnableNoView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 937
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_3
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRender:I

    .line 939
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setRender(I)V

    .line 940
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAppContext:Landroid/content/Context;

    .line 149
    new-instance v1, Lcom/jieli/jl_player/ijkplayer/Settings;

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/jieli/jl_player/ijkplayer/Settings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    .line 151
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->initBackground()V

    .line 152
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->initRenders()V

    .line 154
    iput v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoWidth:I

    .line 155
    iput v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoHeight:I

    .line 158
    invoke-virtual {p0, v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setFocusable(Z)V

    .line 159
    invoke-virtual {p0, v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setFocusableInTouchMode(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->requestFocus()Z

    .line 162
    iput v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 163
    iput v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 165
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 167
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 168
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 172
    .local v0, "layoutParams_txt":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 843
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 288
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceHolder:Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    if-nez v4, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0, v5}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->release(Z)V

    .line 296
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 297
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v7, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 300
    :try_start_0
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v4}, Lcom/jieli/jl_player/ijkplayer/Settings;->getPlayer()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 304
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 308
    .local v1, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 309
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 310
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 311
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 312
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 313
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 314
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 315
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    .line 316
    const/4 v4, 0x0

    iput v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentBufferPercentage:I

    .line 317
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "scheme":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_2

    .line 319
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAppContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 323
    :goto_1
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSurfaceHolder:Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v4, v5}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)V

    .line 324
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 325
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mPrepareStartTime:J

    .line 327
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 333
    const/4 v4, 0x1

    iput v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 334
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 335
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 336
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const/4 v4, -0x1

    iput v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 338
    const/4 v4, -0x1

    iput v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 339
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 345
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    throw v4

    .line 321
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "scheme":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 340
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "scheme":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 341
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    const/4 v4, -0x1

    iput v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 343
    const/4 v4, -0x1

    iput v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 344
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mUri:Landroid/net/Uri;

    .line 265
    iput-object p2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mHeaders:Ljava/util/Map;

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSeekWhenPrepared:I

    .line 267
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->openVideo()V

    .line 268
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->requestLayout()V

    .line 269
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->invalidate()V

    .line 270
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v0}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v0}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->hide()V

    .line 772
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v0}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 856
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public changeAspecRatio(I)V
    .locals 4
    .param p1, "scaceType"    # I

    .prologue
    .line 893
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->s_allAspectRatio:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 894
    sget-object v2, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v2, v1

    .line 895
    .local v0, "aspecRatio":I
    if-ne v0, p1, :cond_1

    .line 896
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    .line 897
    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    .line 898
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    if-eqz v2, :cond_0

    .line 899
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    iget v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {v2, v3}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setAspectRatio(I)V

    .line 903
    .end local v0    # "aspecRatio":I
    :cond_0
    return-void

    .line 893
    .restart local v0    # "aspecRatio":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 14
    .param p1, "playerType"    # I

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v10, 0x0

    const/4 v8, 0x4

    .line 1005
    const/4 v2, 0x0

    .line 1007
    .local v2, "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    packed-switch p1, :pswitch_data_0

    .line 1015
    const/4 v1, 0x0

    .line 1016
    .local v1, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 1017
    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .end local v1    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    invoke-direct {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    .line 1018
    .restart local v1    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    const/4 v5, 0x3

    invoke-static {v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 1020
    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v5}, Lcom/jieli/jl_player/ijkplayer/Settings;->getUsingMediaCodec()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1021
    const-string v5, "mediacodec"

    invoke-virtual {v1, v8, v5, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1022
    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v5}, Lcom/jieli/jl_player/ijkplayer/Settings;->getUsingMediaCodecAutoRotate()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1023
    const-string v5, "mediacodec-auto-rotate"

    invoke-virtual {v1, v8, v5, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1027
    :goto_0
    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v5}, Lcom/jieli/jl_player/ijkplayer/Settings;->getMediaCodecHandleResolutionChange()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1028
    const-string v5, "mediacodec-handle-resolution-change"

    invoke-virtual {v1, v8, v5, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1036
    :goto_1
    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v5}, Lcom/jieli/jl_player/ijkplayer/Settings;->getUsingOpenSLES()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1037
    const-string v5, "opensles"

    invoke-virtual {v1, v8, v5, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1042
    :goto_2
    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v5}, Lcom/jieli/jl_player/ijkplayer/Settings;->getPixelFormat()Ljava/lang/String;

    move-result-object v4

    .line 1043
    .local v4, "pixelFormat":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1044
    const-string v5, "overlay-format"

    const-wide/32 v6, 0x32335652

    invoke-virtual {v1, v8, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1048
    :goto_3
    const-string v5, "framedrop"

    invoke-virtual {v1, v8, v5, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1049
    const-string v5, "start-on-prepared"

    invoke-virtual {v1, v8, v5, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1051
    const/4 v5, 0x1

    const-string v6, "http-detect-range-support"

    invoke-virtual {v1, v5, v6, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1053
    const/4 v5, 0x2

    const-string v6, "skip_loop_filter"

    const-wide/16 v8, 0x30

    invoke-virtual {v1, v5, v6, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1055
    .end local v4    # "pixelFormat":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 1060
    .end local v1    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :goto_4
    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v5}, Lcom/jieli/jl_player/ijkplayer/Settings;->getEnableDetachedSurfaceTextureView()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1061
    new-instance v3, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    invoke-direct {v3, v2}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .end local v2    # "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .local v3, "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    move-object v2, v3

    .line 1064
    .end local v3    # "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .restart local v2    # "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_1
    return-object v2

    .line 1009
    :pswitch_0
    new-instance v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    .line 1010
    .local v0, "androidMediaPlayer":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    move-object v2, v0

    .line 1012
    goto :goto_4

    .line 1025
    .end local v0    # "androidMediaPlayer":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    .restart local v1    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :cond_2
    const-string v5, "mediacodec-auto-rotate"

    invoke-virtual {v1, v8, v5, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    .line 1030
    :cond_3
    const-string v5, "mediacodec-handle-resolution-change"

    invoke-virtual {v1, v8, v5, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 1033
    :cond_4
    const-string v5, "mediacodec"

    invoke-virtual {v1, v8, v5, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 1039
    :cond_5
    const-string v5, "opensles"

    invoke-virtual {v1, v8, v5, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_2

    .line 1046
    .restart local v4    # "pixelFormat":Ljava/lang/String;
    :cond_6
    const-string v5, "overlay-format"

    invoke-virtual {v1, v8, v5, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->deselectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 1234
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 837
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentBufferPercentage:I

    .line 839
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 816
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 808
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "trackType"    # I

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v0

    return v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_0

    .line 1223
    const/4 v0, 0x0

    .line 1225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public isBackgroundPlayEnabled()Z
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mEnableBackgroundPlay:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 727
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 734
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    if-eqz v2, :cond_8

    .line 735
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 737
    :cond_0
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 738
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->pause()V

    .line 739
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v2}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->show()V

    .line 763
    :cond_1
    :goto_1
    return v1

    .line 727
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 741
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    .line 742
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v2}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->hide()V

    goto :goto_1

    .line 745
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 746
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 747
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    .line 748
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v2}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->hide()V

    goto :goto_1

    .line 751
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 753
    :cond_6
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->pause()V

    .line 755
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v2}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->show()V

    goto :goto_1

    .line 759
    :cond_7
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 763
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    if-eqz v0, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 714
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    if-eqz v0, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 722
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 785
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 788
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 791
    :cond_0
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 792
    return-void
.end method

.method public release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 695
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 697
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 698
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 700
    iput v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 701
    if-eqz p1, :cond_0

    .line 702
    iput v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 705
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 707
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 689
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->openVideo()V

    .line 800
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "msec"    # I

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 823
    const/4 v0, 0x0

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSeekWhenPrepared:I

    .line 827
    :goto_0
    return-void

    .line 825
    :cond_0
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->selectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 1230
    return-void
.end method

.method public setMediaController(Lcom/jieli/jl_player/ijkplayer/IMediaController;)V
    .locals 1
    .param p1, "controller"    # Lcom/jieli/jl_player/ijkplayer/IMediaController;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    invoke-interface {v0}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->hide()V

    .line 354
    :cond_0
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaController:Lcom/jieli/jl_player/ijkplayer/IMediaController;

    .line 355
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->attachMediaController()V

    .line 356
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 600
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 612
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 622
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 590
    return-void
.end method

.method public setRender(I)V
    .locals 7
    .param p1, "render"    # I

    .prologue
    .line 209
    packed-switch p1, :pswitch_data_0

    .line 230
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "invalid render %d\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 211
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setRenderView(Lcom/jieli/jl_player/ijkplayer/IRenderView;)V

    goto :goto_0

    .line 214
    :pswitch_1
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;

    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "renderView":Lcom/jieli/jl_player/ijkplayer/TextureRenderView;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;->getSurfaceHolder()Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 217
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;->setVideoSize(II)V

    .line 218
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 219
    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    invoke-virtual {v0, v1}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;->setAspectRatio(I)V

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setRenderView(Lcom/jieli/jl_player/ijkplayer/IRenderView;)V

    goto :goto_0

    .line 225
    .end local v0    # "renderView":Lcom/jieli/jl_player/ijkplayer/TextureRenderView;
    :pswitch_2
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/SurfaceRenderView;

    invoke-virtual {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jieli/jl_player/ijkplayer/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "renderView":Lcom/jieli/jl_player/ijkplayer/SurfaceRenderView;
    invoke-virtual {p0, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setRenderView(Lcom/jieli/jl_player/ijkplayer/IRenderView;)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setRenderView(Lcom/jieli/jl_player/ijkplayer/IRenderView;)V
    .locals 6
    .param p1, "renderView"    # Lcom/jieli/jl_player/ijkplayer/IRenderView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 176
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    invoke-interface {v2}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, "renderUIView":Landroid/view/View;
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    iget-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSHCallback:Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->removeRenderCallback(Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;)V

    .line 182
    iput-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    .line 183
    invoke-virtual {p0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->removeView(Landroid/view/View;)V

    .line 186
    .end local v1    # "renderUIView":Landroid/view/View;
    :cond_1
    if-nez p1, :cond_2

    .line 206
    :goto_0
    return-void

    .line 189
    :cond_2
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    .line 190
    iget v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v2}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setAspectRatio(I)V

    .line 191
    iget v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoWidth:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoHeight:I

    if-lez v2, :cond_3

    .line 192
    iget v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoWidth:I

    iget v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoHeight:I

    invoke-interface {p1, v2, v3}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setVideoSize(II)V

    .line 193
    :cond_3
    iget v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarNum:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarDen:I

    if-lez v2, :cond_4

    .line 194
    iget v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarNum:I

    iget v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarDen:I

    invoke-interface {p1, v2, v3}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 196
    :cond_4
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    invoke-interface {v2}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 197
    .restart local v1    # "renderUIView":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 201
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->addView(Landroid/view/View;)V

    .line 204
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    iget-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSHCallback:Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->addRenderCallback(Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;)V

    .line 205
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    iget v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoRotationDegree:I

    invoke-interface {v2, v3}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setVideoRotation(I)V

    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 242
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 251
    return-void
.end method

.method public showMediaInfo()V
    .locals 20

    .prologue
    .line 1097
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v12, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1100
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v8

    .line 1101
    .local v8, "selectedVideoTrack":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v6

    .line 1102
    .local v6, "selectedAudioTrack":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v7

    .line 1104
    .local v7, "selectedSubtitleTrack":I
    new-instance v3, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;-><init>(Landroid/content/Context;)V

    .line 1105
    .local v3, "builder":Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;
    sget v12, Lcom/jieli/jl_player/R$string;->mi_player:I

    invoke-virtual {v3, v12}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 1106
    sget v12, Lcom/jieli/jl_player/R$string;->mi_player:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v13}, Lcom/jieli/jl_player/ijkplayer/MediaPlayerCompat;->getName(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1107
    sget v12, Lcom/jieli/jl_player/R$string;->mi_media:I

    invoke-virtual {v3, v12}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 1108
    sget v12, Lcom/jieli/jl_player/R$string;->mi_resolution:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarNum:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mVideoSarDen:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->buildResolution(IIII)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1109
    sget v12, Lcom/jieli/jl_player/R$string;->mi_length:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v13}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->buildTimeMilli(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v12}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v10

    .line 1112
    .local v10, "trackInfos":[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    if-eqz v10, :cond_6

    .line 1113
    const/4 v4, -0x1

    .line 1114
    .local v4, "index":I
    array-length v13, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_6

    aget-object v9, v10, v12

    .line 1115
    .local v9, "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    add-int/lit8 v4, v4, 0x1

    .line 1117
    invoke-interface {v9}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v11

    .line 1118
    .local v11, "trackType":I
    if-ne v4, v8, :cond_2

    .line 1119
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/jieli/jl_player/R$string;->mi_stream_fmt1:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/jieli/jl_player/R$string;->mi__selected_video_track:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    .line 1127
    :goto_2
    sget v14, Lcom/jieli/jl_player/R$string;->mi_type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->buildTrackType(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1128
    sget v14, Lcom/jieli/jl_player/R$string;->mi_language:I

    invoke-interface {v9}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->buildLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1130
    invoke-interface {v9}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getFormat()Ltv/danmaku/ijk/media/player/misc/IMediaFormat;

    move-result-object v5

    .line 1131
    .local v5, "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    if-nez v5, :cond_5

    .line 1114
    :cond_1
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1120
    .end local v5    # "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    :cond_2
    if-ne v4, v6, :cond_3

    .line 1121
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/jieli/jl_player/R$string;->mi_stream_fmt1:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/jieli/jl_player/R$string;->mi__selected_audio_track:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    goto :goto_2

    .line 1122
    :cond_3
    if-ne v4, v7, :cond_4

    .line 1123
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/jieli/jl_player/R$string;->mi_stream_fmt1:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/jieli/jl_player/R$string;->mi__selected_subtitle_track:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    goto/16 :goto_2

    .line 1125
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/jieli/jl_player/R$string;->mi_stream_fmt1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    goto/16 :goto_2

    .line 1132
    .restart local v5    # "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    :cond_5
    instance-of v14, v5, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    if-eqz v14, :cond_1

    .line 1133
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_3

    .line 1135
    :pswitch_0
    sget v14, Lcom/jieli/jl_player/R$string;->mi_codec:I

    const-string v15, "ijk-codec-long-name-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1136
    sget v14, Lcom/jieli/jl_player/R$string;->mi_profile_level:I

    const-string v15, "ijk-profile-level-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1137
    sget v14, Lcom/jieli/jl_player/R$string;->mi_pixel_format:I

    const-string v15, "ijk-pixel-format-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1138
    sget v14, Lcom/jieli/jl_player/R$string;->mi_resolution:I

    const-string v15, "ijk-resolution-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1139
    sget v14, Lcom/jieli/jl_player/R$string;->mi_frame_rate:I

    const-string v15, "ijk-frame-rate-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1140
    sget v14, Lcom/jieli/jl_player/R$string;->mi_bit_rate:I

    const-string v15, "ijk-bit-rate-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    goto/16 :goto_3

    .line 1143
    :pswitch_1
    sget v14, Lcom/jieli/jl_player/R$string;->mi_codec:I

    const-string v15, "ijk-codec-long-name-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1144
    sget v14, Lcom/jieli/jl_player/R$string;->mi_profile_level:I

    const-string v15, "ijk-profile-level-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1145
    sget v14, Lcom/jieli/jl_player/R$string;->mi_sample_rate:I

    const-string v15, "ijk-sample-rate-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1146
    sget v14, Lcom/jieli/jl_player/R$string;->mi_channels:I

    const-string v15, "ijk-channel-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1147
    sget v14, Lcom/jieli/jl_player/R$string;->mi_bit_rate:I

    const-string v15, "ijk-bit-rate-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    goto/16 :goto_3

    .line 1156
    .end local v4    # "index":I
    .end local v5    # "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    .end local v9    # "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .end local v11    # "trackType":I
    :cond_6
    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/TableLayoutBinder;->buildAlertDialogBuilder()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 1157
    .local v2, "adBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    sget v12, Lcom/jieli/jl_player/R$string;->media_information:I

    invoke-virtual {v2, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1158
    sget v12, Lcom/jieli/jl_player/R$string;->close:I

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1159
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 776
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 778
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 780
    :cond_0
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 781
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 276
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 278
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 279
    iput-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 280
    iput v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentState:I

    .line 281
    iput v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mTargetState:I

    .line 282
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 283
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 285
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->release(Z)V

    .line 796
    return-void
.end method

.method public toggleAspectRatio()I
    .locals 2

    .prologue
    .line 906
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatioIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 907
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatioIndex:I

    sget-object v1, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->s_allAspectRatio:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 909
    sget-object v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->s_allAspectRatio:[I

    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatioIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    .line 910
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setAspectRatio(I)V

    .line 912
    :cond_0
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentAspectRatio:I

    return v0
.end method

.method public togglePlayer()I
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mRenderView:Lcom/jieli/jl_player/ijkplayer/IRenderView;

    invoke-interface {v0}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 980
    :cond_1
    invoke-direct {p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->openVideo()V

    .line 981
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mSettings:Lcom/jieli/jl_player/ijkplayer/Settings;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/Settings;->getPlayer()I

    move-result v0

    return v0
.end method

.method public toggleRender()I
    .locals 2

    .prologue
    .line 943
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    .line 944
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    .line 946
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRender:I

    .line 947
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->setRender(I)V

    .line 948
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->mCurrentRender:I

    return v0
.end method
