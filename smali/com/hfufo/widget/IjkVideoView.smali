.class public Lcom/hfufo/widget/IjkVideoView;
.super Landroid/widget/FrameLayout;
.source "IjkVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static final RENDER_GLSURFACE_VIEW:I = 0x3

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

.field public static useGL:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private isRealTime:Z

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

.field private mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/hfufo/widget/media/IMediaController;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mPrepareEndTime:J

.field private mPrepareStartTime:J

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Lcom/hfufo/widget/media/IRenderView;

.field mSHCallback:Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekEndTime:J

.field private mSeekStartTime:J

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

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
    .line 1046
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hfufo/widget/IjkVideoView;->s_allAspectRatio:[I

    .line 1069
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hfufo/widget/IjkVideoView;->useGL:Z

    return-void

    .line 1046
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 98
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 101
    iput-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHolder:Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    .line 102
    iput-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 116
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanPause:Z

    .line 117
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekBack:Z

    .line 118
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekForward:Z

    .line 119
    iput-boolean v1, p0, Lcom/hfufo/widget/IjkVideoView;->isRealTime:Z

    .line 136
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareStartTime:J

    .line 137
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareEndTime:J

    .line 139
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekStartTime:J

    .line 140
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekEndTime:J

    .line 544
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$3;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 562
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$4;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 620
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$5;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 634
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$6;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 685
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$7;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 714
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$8;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 721
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$9;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 732
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$10;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$10;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 798
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$11;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$11;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSHCallback:Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 1053
    sget-object v0, Lcom/hfufo/widget/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentAspectRatio:I

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 1072
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRenderIndex:I

    .line 1073
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRender:I

    .line 1195
    iput-boolean v1, p0, Lcom/hfufo/widget/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 146
    invoke-direct {p0, p1}, Lcom/hfufo/widget/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 98
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 101
    iput-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHolder:Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    .line 102
    iput-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 116
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanPause:Z

    .line 117
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekBack:Z

    .line 118
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekForward:Z

    .line 119
    iput-boolean v1, p0, Lcom/hfufo/widget/IjkVideoView;->isRealTime:Z

    .line 136
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareStartTime:J

    .line 137
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareEndTime:J

    .line 139
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekStartTime:J

    .line 140
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekEndTime:J

    .line 544
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$3;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 562
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$4;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 620
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$5;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 634
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$6;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 685
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$7;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 714
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$8;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 721
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$9;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 732
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$10;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$10;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 798
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$11;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$11;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSHCallback:Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 1053
    sget-object v0, Lcom/hfufo/widget/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentAspectRatio:I

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 1072
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRenderIndex:I

    .line 1073
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRender:I

    .line 1195
    iput-boolean v1, p0, Lcom/hfufo/widget/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 151
    invoke-direct {p0, p1}, Lcom/hfufo/widget/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 98
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 101
    iput-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHolder:Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    .line 102
    iput-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 116
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanPause:Z

    .line 117
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekBack:Z

    .line 118
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekForward:Z

    .line 119
    iput-boolean v1, p0, Lcom/hfufo/widget/IjkVideoView;->isRealTime:Z

    .line 136
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareStartTime:J

    .line 137
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareEndTime:J

    .line 139
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekStartTime:J

    .line 140
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekEndTime:J

    .line 544
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$3;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 562
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$4;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 620
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$5;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 634
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$6;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 685
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$7;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 714
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$8;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 721
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$9;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 732
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$10;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$10;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 798
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$11;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$11;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSHCallback:Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 1053
    sget-object v0, Lcom/hfufo/widget/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentAspectRatio:I

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 1072
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRenderIndex:I

    .line 1073
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRender:I

    .line 1195
    iput-boolean v1, p0, Lcom/hfufo/widget/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 156
    invoke-direct {p0, p1}, Lcom/hfufo/widget/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 157
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 98
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 101
    iput-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHolder:Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    .line 102
    iput-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 116
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanPause:Z

    .line 117
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekBack:Z

    .line 118
    iput-boolean v4, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekForward:Z

    .line 119
    iput-boolean v1, p0, Lcom/hfufo/widget/IjkVideoView;->isRealTime:Z

    .line 136
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareStartTime:J

    .line 137
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareEndTime:J

    .line 139
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekStartTime:J

    .line 140
    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekEndTime:J

    .line 544
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$3;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 562
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$4;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 620
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$5;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 634
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$6;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 685
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$7;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 714
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$8;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 721
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$9;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 732
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$10;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$10;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 798
    new-instance v0, Lcom/hfufo/widget/IjkVideoView$11;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/IjkVideoView$11;-><init>(Lcom/hfufo/widget/IjkVideoView;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSHCallback:Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 1053
    sget-object v0, Lcom/hfufo/widget/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentAspectRatio:I

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 1072
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRenderIndex:I

    .line 1073
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRender:I

    .line 1195
    iput-boolean v1, p0, Lcom/hfufo/widget/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 162
    invoke-direct {p0, p1}, Lcom/hfufo/widget/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/hfufo/widget/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/hfufo/widget/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1300(Lcom/hfufo/widget/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1302(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/hfufo/widget/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1402(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/hfufo/widget/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$200(Lcom/hfufo/widget/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$2000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$2102(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2200(Lcom/hfufo/widget/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekEndTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/hfufo/widget/IjkVideoView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekEndTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/hfufo/widget/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekStartTime:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/hfufo/widget/IjkVideoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/hfufo/widget/IjkVideoView;Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHolder:Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/hfufo/widget/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "x2"    # Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/hfufo/widget/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/hfufo/widget/IjkVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/hfufo/widget/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$302(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hfufo/widget/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareEndTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/hfufo/widget/IjkVideoView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareEndTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/InfoHudViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hfufo/widget/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareStartTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/hfufo/widget/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$900(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 535
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v1, p0}, Lcom/hfufo/widget/media/IMediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 537
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 539
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v1, v0}, Lcom/hfufo/widget/media/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 540
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/hfufo/widget/media/IMediaController;->setEnabled(Z)V

    .line 542
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 538
    goto :goto_0
.end method

.method private bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "holder"    # Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    .prologue
    .line 786
    if-nez p1, :cond_0

    .line 796
    :goto_0
    return-void

    .line 789
    :cond_0
    if-nez p2, :cond_1

    .line 790
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 795
    :cond_1
    invoke-interface {p2, p1}, Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0
.end method

.method private static formatedDurationMilli(J)Ljava/lang/String;
    .locals 6
    .param p0, "duration"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1219
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 1220
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f sec"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d msec"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatedSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 1246
    const-wide/32 v0, 0x186a0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 1247
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f MB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    div-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    :goto_0
    return-object v0

    .line 1248
    :cond_0
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 1249
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f KB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1251
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d B"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatedSpeed(JJ)Ljava/lang/String;
    .locals 10
    .param p0, "bytes"    # J
    .param p2, "elapsed_milli"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    .line 1227
    cmp-long v1, p2, v8

    if-gtz v1, :cond_0

    .line 1228
    const-string v1, "0 B/s"

    .line 1241
    :goto_0
    return-object v1

    .line 1231
    :cond_0
    cmp-long v1, p0, v8

    if-gtz v1, :cond_1

    .line 1232
    const-string v1, "0 B/s"

    goto :goto_0

    .line 1235
    :cond_1
    long-to-float v1, p0

    mul-float/2addr v1, v5

    long-to-float v2, p2

    div-float v0, v1, v2

    .line 1236
    .local v0, "bytes_per_sec":F
    const v1, 0x49742400    # 1000000.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 1237
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.2f MB/s"

    new-array v3, v3, [Ljava/lang/Object;

    div-float v4, v0, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1238
    :cond_2
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_3

    .line 1239
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f KB/s"

    new-array v3, v3, [Ljava/lang/Object;

    div-float v4, v0, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1241
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d B/s"

    new-array v3, v3, [Ljava/lang/Object;

    float-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initBackground()V
    .locals 2

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/hfufo/widget/IjkVideoView;->mEnableBackgroundPlay:Z

    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hfufo/service/hdservice/MediaPlayerService;->intentToStart(Landroid/content/Context;)V

    .line 1200
    invoke-static {}, Lcom/hfufo/service/hdservice/MediaPlayerService;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1201
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1204
    :cond_0
    return-void
.end method

.method private initRenders()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1077
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1079
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    sget-boolean v0, Lcom/hfufo/widget/IjkVideoView;->useGL:Z

    if-eqz v0, :cond_1

    .line 1081
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hfufo/widget/IjkVideoView;->useGL:Z

    .line 1082
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRender:I

    .line 1095
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/IjkVideoView;->setRender(I)V

    .line 1096
    return-void

    .line 1085
    :cond_1
    sput-boolean v1, Lcom/hfufo/widget/IjkVideoView;->useGL:Z

    .line 1086
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mAppContext:Landroid/content/Context;

    .line 173
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->initBackground()V

    .line 174
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->initRenders()V

    .line 176
    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoWidth:I

    .line 177
    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoHeight:I

    .line 180
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/IjkVideoView;->setFocusable(Z)V

    .line 181
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/IjkVideoView;->setFocusableInTouchMode(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->requestFocus()Z

    .line 184
    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 185
    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 187
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    .line 188
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 194
    .local v0, "layoutParams_txt":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/hfufo/widget/IjkVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1007
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 461
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHolder:Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    if-nez v2, :cond_1

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not ready for playback just yet, will try again later"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHolder:Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-virtual {p0, v3}, Lcom/hfufo/widget/IjkVideoView;->release(Z)V

    .line 470
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 471
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->createPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 475
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v3, "openVideo != null"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 478
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 479
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 480
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 481
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 482
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 483
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 484
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    .line 485
    const/4 v2, 0x0

    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentBufferPercentage:I

    .line 486
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 487
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 491
    :goto_1
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mSurfaceHolder:Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v2, v3}, Lcom/hfufo/widget/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V

    .line 492
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v2, :cond_3

    .line 493
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v3, "mMediaPlayer == null"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content:%s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v2, -0x1

    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 514
    const/4 v2, -0x1

    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 515
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 521
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    throw v2

    .line 489
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 516
    :catch_1
    move-exception v1

    .line 517
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content:%s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v2, -0x1

    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 519
    const/4 v2, -0x1

    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 520
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 496
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v3, "mMediaPlayer != null"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 498
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hfufo/widget/IjkVideoView;->mPrepareStartTime:J

    .line 500
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 501
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

    if-eqz v2, :cond_4

    .line 502
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v2, v3}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 509
    :goto_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 510
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->attachMediaController()V

    goto/16 :goto_0

    .line 504
    :cond_4
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v3, "mHudViewHolder != null"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
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
    .line 422
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView;->mUri:Landroid/net/Uri;

    .line 423
    iput-object p2, p0, Lcom/hfufo/widget/IjkVideoView;->mHeaders:Ljava/util/Map;

    .line 424
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekWhenPrepared:I

    .line 425
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->openVideo()V

    .line 426
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->requestLayout()V

    .line 427
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->invalidate()V

    .line 428
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/hfufo/widget/media/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/hfufo/widget/media/IMediaController;->hide()V

    .line 943
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/hfufo/widget/media/IMediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public clearSurfaceCanvas()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/SurfaceRenderView;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/SurfaceRenderView;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 455
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/SurfaceRenderView;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0
.end method

.method public createPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 1099
    const/4 v1, 0x0

    .line 1101
    .local v1, "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    const/4 v0, 0x0

    .line 1102
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1103
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .end local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    .line 1104
    .restart local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    const/16 v2, 0x8

    invoke-static {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 1106
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "hard_codec"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    const-string v2, "mediacodec"

    invoke-virtual {v0, v6, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1114
    :goto_0
    const-string v2, "opensles"

    invoke-virtual {v0, v6, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1115
    const-string v2, "overlay-format"

    const-string v3, "fcc-_es2"

    invoke-virtual {v0, v6, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v2, "http-detect-range-support"

    invoke-virtual {v0, v7, v2, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1121
    const-string v2, "max_cached_duration"

    const-wide/16 v4, 0x708

    invoke-virtual {v0, v7, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1122
    const-string v2, "soundtouch"

    invoke-virtual {v0, v6, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1123
    const-string v2, "fast"

    invoke-virtual {v0, v6, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1129
    const-string v2, "min-frames"

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v6, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1130
    const-string v2, "max-buffer-size"

    const-wide/32 v4, 0x600000

    invoke-virtual {v0, v6, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1131
    const-string v2, "packet-buffering"

    invoke-virtual {v0, v6, v2, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1132
    const-string v2, "skip_frame"

    const-wide/16 v4, 0x10

    invoke-virtual {v0, v12, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1133
    const-string v2, "skip_loop_filter"

    const-wide/16 v4, 0x10

    invoke-virtual {v0, v12, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1134
    const-string v2, "framedrop"

    const-wide/16 v4, 0x3c

    invoke-virtual {v0, v6, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1135
    const-string v2, "probesize"

    const-wide/16 v4, 0x200

    invoke-virtual {v0, v7, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1136
    const-string v2, "analyzeduration"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v7, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1137
    const-string v2, "start-on-prepared"

    invoke-virtual {v0, v6, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1138
    const-string v2, "flush_packets"

    invoke-virtual {v0, v7, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1139
    const-string v2, "sync"

    const-string v3, "ext"

    invoke-virtual {v0, v7, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-boolean v2, p0, Lcom/hfufo/widget/IjkVideoView;->isRealTime:Z

    if-eqz v2, :cond_2

    .line 1152
    const-string v2, "fflags"

    const-string v3, "nobuffer"

    invoke-virtual {v0, v7, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1153
    const-string v2, "find_stream_info"

    invoke-virtual {v0, v6, v2, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1154
    const-string v2, "rtsp_transport"

    const-string v3, "udp"

    invoke-virtual {v0, v7, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v2, "infbuf"

    invoke-virtual {v0, v6, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1186
    :cond_0
    :goto_1
    move-object v1, v0

    .line 1187
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v3, "createPlayer: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-object v1

    .line 1112
    :cond_1
    const-string v2, "mediacodec"

    invoke-virtual {v0, v6, v2, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 1157
    :cond_2
    const-string v2, "find_stream_info"

    invoke-virtual {v0, v6, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1
.end method

.method public endRecord()V
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/GLTextureRenderView;->endRecord()V

    goto :goto_0
.end method

.method public enterBackground()V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0}, Lcom/hfufo/service/hdservice/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1212
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 1001
    iget v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentBufferPercentage:I

    .line 1003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 979
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 971
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getHudView()Lcom/hfufo/widget/media/InfoHudViewHolder;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

    return-object v0
.end method

.method public getInfo()V
    .locals 6

    .prologue
    .line 1256
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 1258
    .local v0, "ijk":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    const-string v1, "ijkppp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1259
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1260
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1261
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1258
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    .end local v0    # "ijk":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :cond_0
    return-void
.end method

.method public getPivotx()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1295
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v1, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return v0

    .line 1296
    :cond_1
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v1, v1, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v1, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/GLTextureRenderView;->getPivotX()F

    move-result v0

    goto :goto_0
.end method

.method public getPivoty()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1302
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v1, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return v0

    .line 1303
    :cond_1
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v1, v1, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v1, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/GLTextureRenderView;->getPivotY()F

    move-result v0

    goto :goto_0
.end method

.method public getRenderView()Lcom/hfufo/widget/media/IRenderView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    return-object v0
.end method

.method public isBackgroundPlayEnabled()Z
    .locals 1

    .prologue
    .line 1207
    iget-boolean v0, p0, Lcom/hfufo/widget/IjkVideoView;->mEnableBackgroundPlay:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

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

    .line 898
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

    .line 905
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    if-eqz v2, :cond_8

    .line 906
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 908
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 909
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->pause()V

    .line 910
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v2}, Lcom/hfufo/widget/media/IMediaController;->show()V

    .line 934
    :cond_1
    :goto_1
    return v1

    .line 898
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 912
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->start()V

    .line 913
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v2}, Lcom/hfufo/widget/media/IMediaController;->hide()V

    goto :goto_1

    .line 916
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 917
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 918
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->start()V

    .line 919
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v2}, Lcom/hfufo/widget/media/IMediaController;->hide()V

    goto :goto_1

    .line 922
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 924
    :cond_6
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->pause()V

    .line 926
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v2}, Lcom/hfufo/widget/media/IMediaController;->show()V

    goto :goto_1

    .line 930
    :cond_7
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 934
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 883
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 885
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 893
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 956
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 959
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 962
    :cond_0
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 963
    return-void
.end method

.method public release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 860
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_2

    .line 861
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 864
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 865
    iput-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 867
    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 868
    if-eqz p1, :cond_1

    .line 869
    iput v2, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 871
    :cond_1
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 872
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 874
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_2
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 854
    :cond_0
    return-void
.end method

.method public requesLayout()V
    .locals 0

    .prologue
    .line 878
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "msec"    # I

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekStartTime:J

    .line 986
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 987
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekWhenPrepared:I

    .line 991
    :goto_0
    return-void

    .line 989
    :cond_0
    iput p1, p0, Lcom/hfufo/widget/IjkVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setAspectRatio(I)V
    .locals 2
    .param p1, "aspectRatio"    # I

    .prologue
    .line 1057
    sget-object v0, Lcom/hfufo/widget/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentAspectRatio:I

    .line 1058
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    iget v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {v0, v1}, Lcom/hfufo/widget/media/IRenderView;->setAspectRatio(I)V

    .line 1060
    :cond_0
    return-void
.end method

.method public setFilter(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView;->setFilter(I)V

    goto :goto_0
.end method

.method public setGLSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/GLTextureRenderView;->setGLSize(II)V

    .line 1313
    const-string v0, "rrrr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGLSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHudView(Landroid/widget/TableLayout;)V
    .locals 2
    .param p1, "tableLayout"    # Landroid/widget/TableLayout;

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    new-instance v0, Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/hfufo/widget/media/InfoHudViewHolder;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

    .line 283
    :cond_0
    return-void
.end method

.method public setMediaController(Lcom/hfufo/widget/media/IMediaController;)V
    .locals 1
    .param p1, "controller"    # Lcom/hfufo/widget/media/IMediaController;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/hfufo/widget/media/IMediaController;->hide()V

    .line 530
    :cond_0
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaController:Lcom/hfufo/widget/media/IMediaController;

    .line 531
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->attachMediaController()V

    .line 532
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 759
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 771
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 781
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 749
    return-void
.end method

.method public setRS(FFFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "tranW"    # F
    .param p4, "tranH"    # F

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hfufo/widget/media/GLTextureRenderView;->setRAS(FFFF)V

    goto :goto_0
.end method

.method public setRealtime(Z)V
    .locals 0
    .param p1, "realtime"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/hfufo/widget/IjkVideoView;->isRealTime:Z

    .line 449
    return-void
.end method

.method public setRecordCallback(Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;Z)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;
    .param p2, "isPhoto"    # Z

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/GLTextureRenderView;->setRenderCallback(Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;Z)V

    goto :goto_0
.end method

.method public setRender(I)V
    .locals 7
    .param p1, "render"    # I

    .prologue
    const/4 v4, 0x1

    .line 236
    packed-switch p1, :pswitch_data_0

    .line 274
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "invalid render %d\n"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 238
    :pswitch_0
    const-string v1, "IJKPLAYVIDEO"

    const-string v2, "setRender-RENDER_NONE: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/hfufo/widget/IjkVideoView;->setRenderView(Lcom/hfufo/widget/media/IRenderView;)V

    goto :goto_0

    .line 243
    :pswitch_1
    const-string v1, "IJKPLAYVIDEO"

    const-string v2, "setRender-RENDER_SURFACE_VIEW: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/hfufo/widget/media/SurfaceRenderView;

    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hfufo/widget/media/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "renderView":Lcom/hfufo/widget/media/SurfaceRenderView;
    invoke-virtual {v0, v4}, Lcom/hfufo/widget/media/SurfaceRenderView;->setZOrderOnTop(Z)V

    .line 246
    invoke-virtual {v0, v4}, Lcom/hfufo/widget/media/SurfaceRenderView;->setZOrderMediaOverlay(Z)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/hfufo/widget/IjkVideoView;->setRenderView(Lcom/hfufo/widget/media/IRenderView;)V

    goto :goto_0

    .line 251
    .end local v0    # "renderView":Lcom/hfufo/widget/media/SurfaceRenderView;
    :pswitch_2
    const-string v1, "IJKPLAYVIDEO"

    const-string v2, "setRender-RENDER_TEXTURE_VIEW: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Lcom/hfufo/widget/media/TextureRenderView;

    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hfufo/widget/media/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, "renderView":Lcom/hfufo/widget/media/TextureRenderView;
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/hfufo/widget/media/TextureRenderView;->getSurfaceHolder()Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 255
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/media/TextureRenderView;->setVideoSize(II)V

    .line 256
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/media/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 257
    iget v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentAspectRatio:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/media/TextureRenderView;->setAspectRatio(I)V

    .line 259
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hfufo/widget/IjkVideoView;->setRenderView(Lcom/hfufo/widget/media/IRenderView;)V

    goto :goto_0

    .line 263
    .end local v0    # "renderView":Lcom/hfufo/widget/media/TextureRenderView;
    :pswitch_3
    new-instance v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {p0}, Lcom/hfufo/widget/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hfufo/widget/media/GLTextureRenderView;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, "renderView":Lcom/hfufo/widget/media/GLTextureRenderView;
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_1

    .line 265
    const-string v1, "IJKPLAYVIDEO"

    const-string v2, "bindSurfaceHolder00: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0}, Lcom/hfufo/widget/media/GLTextureRenderView;->getSurfaceHolder()Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 267
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/media/GLTextureRenderView;->setVideoSize(II)V

    .line 268
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/media/GLTextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 269
    iget v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentAspectRatio:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/media/GLTextureRenderView;->setAspectRatio(I)V

    .line 271
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hfufo/widget/IjkVideoView;->setRenderView(Lcom/hfufo/widget/media/IRenderView;)V

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setRenderView(Lcom/hfufo/widget/media/IRenderView;)V
    .locals 6
    .param p1, "renderView"    # Lcom/hfufo/widget/media/IRenderView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 202
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    invoke-interface {v2}, Lcom/hfufo/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "renderUIView":Landroid/view/View;
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mSHCallback:Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/hfufo/widget/media/IRenderView;->removeRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V

    .line 208
    iput-object v5, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    .line 210
    invoke-virtual {p0, v1}, Lcom/hfufo/widget/IjkVideoView;->removeView(Landroid/view/View;)V

    .line 213
    .end local v1    # "renderUIView":Landroid/view/View;
    :cond_1
    if-nez p1, :cond_2

    .line 233
    :goto_0
    return-void

    .line 216
    :cond_2
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    .line 217
    iget v2, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v2}, Lcom/hfufo/widget/media/IRenderView;->setAspectRatio(I)V

    .line 218
    iget v2, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoWidth:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoHeight:I

    if-lez v2, :cond_3

    .line 219
    iget v2, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoWidth:I

    iget v3, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoHeight:I

    invoke-interface {p1, v2, v3}, Lcom/hfufo/widget/media/IRenderView;->setVideoSize(II)V

    .line 220
    :cond_3
    iget v2, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoSarNum:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoSarDen:I

    if-lez v2, :cond_4

    .line 221
    iget v2, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoSarNum:I

    iget v3, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoSarDen:I

    invoke-interface {p1, v2, v3}, Lcom/hfufo/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 223
    :cond_4
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    invoke-interface {v2}, Lcom/hfufo/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 224
    .restart local v1    # "renderUIView":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 228
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/hfufo/widget/IjkVideoView;->addView(Landroid/view/View;)V

    .line 231
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mSHCallback:Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/hfufo/widget/media/IRenderView;->addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V

    .line 232
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    iget v3, p0, Lcom/hfufo/widget/IjkVideoView;->mVideoRotationDegree:I

    invoke-interface {v2, v3}, Lcom/hfufo/widget/media/IRenderView;->setVideoRotation(I)V

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    invoke-interface {v0, p1}, Lcom/hfufo/widget/media/IRenderView;->setVideoRotation(I)V

    .line 1271
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    invoke-interface {v0}, Lcom/hfufo/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1274
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    invoke-interface {v0}, Lcom/hfufo/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1275
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 400
    return-void
.end method

.method public setVideoSize(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "dstW"    # I
    .param p4, "dstH"    # I

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1360
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hfufo/widget/media/GLTextureRenderView;->setVSize(IIII)V

    goto :goto_0
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hfufo/widget/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 409
    return-void
.end method

.method public setXY(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v0, :cond_0

    .line 1288
    const-string v0, "setPivot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setXY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView;->setPivotX(F)V

    .line 1290
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0, p2}, Lcom/hfufo/widget/media/GLTextureRenderView;->setPivotY(F)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 947
    invoke-direct {p0}, Lcom/hfufo/widget/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 949
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 951
    :cond_0
    iput v1, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 952
    return-void
.end method

.method public startRecord(Lcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1335
    .local p1, "mListener":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Lorg/opencv/core/Mat;>;"
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView;->startRecord(Lcom/jieli/lib/stream/udp/IActionListener;)V

    goto :goto_0
.end method

.method public stopBackgroundPlay()V
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hfufo/service/hdservice/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1216
    return-void
.end method

.method public stopPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 433
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 435
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 436
    iput-object v4, p0, Lcom/hfufo/widget/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 437
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mHudViewHolder:Lcom/hfufo/widget/media/InfoHudViewHolder;

    invoke-virtual {v1, v4}, Lcom/hfufo/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 439
    :cond_0
    iput v3, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentState:I

    .line 440
    iput v3, p0, Lcom/hfufo/widget/IjkVideoView;->mTargetState:I

    .line 441
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 442
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 444
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iput-boolean v3, p0, Lcom/hfufo/widget/IjkVideoView;->isRealTime:Z

    .line 445
    return-void
.end method

.method public take()V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-nez v0, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    instance-of v0, v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/GLTextureRenderView;->take()V

    goto :goto_0
.end method

.method public tryToGetBitmap(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 286
    iget v3, p0, Lcom/hfufo/widget/IjkVideoView;->mCurrentRender:I

    packed-switch v3, :pswitch_data_0

    .line 384
    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v6, "invalid render "

    invoke-static {v3, v6}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v6, " RENDER_NONE"

    invoke-static {v3, v6}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-eqz v3, :cond_0

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 293
    .local v4, "startTime":J
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v2, Lcom/hfufo/widget/media/TextureRenderView;

    .line 294
    .local v2, "renderView":Lcom/hfufo/widget/media/TextureRenderView;
    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v6, "RENDER_TEXTURE_VIEW"

    invoke-static {v3, v6}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 297
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/hfufo/widget/media/TextureRenderView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 299
    const-string v3, "IJKVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryToGetBitmap- time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitmap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/hfufo/widget/IjkVideoView$1;

    invoke-direct {v6, p0, v0}, Lcom/hfufo/widget/IjkVideoView$1;-><init>(Lcom/hfufo/widget/IjkVideoView;Landroid/graphics/Bitmap;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 332
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 336
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "renderView":Lcom/hfufo/widget/media/TextureRenderView;
    .end local v4    # "startTime":J
    :pswitch_2
    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v6, "RENDER_SURFACE_VIEW"

    invoke-static {v3, v6}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :pswitch_3
    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    if-eqz v3, :cond_0

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 342
    .restart local v4    # "startTime":J
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView;->mRenderView:Lcom/hfufo/widget/media/IRenderView;

    check-cast v2, Lcom/hfufo/widget/media/GLTextureRenderView;

    .line 343
    .local v2, "renderView":Lcom/hfufo/widget/media/GLTextureRenderView;
    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v6, "RENDER_TEXTURE_VIEW"

    invoke-static {v3, v6}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Lcom/hfufo/widget/media/GLTextureRenderView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 347
    const-string v3, "IJKVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryToGetBitmap- time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitmap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/hfufo/widget/IjkVideoView$2;

    invoke-direct {v6, p0, v0}, Lcom/hfufo/widget/IjkVideoView$2;-><init>(Lcom/hfufo/widget/IjkVideoView;Landroid/graphics/Bitmap;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 381
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
