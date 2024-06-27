.class public final Lcom/jieli/lib/dv/control/player/PlaybackStream;
.super Lcom/jieli/lib/dv/control/player/Stream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/player/PlaybackStream$Mode;,
        Lcom/jieli/lib/dv/control/player/PlaybackStream$BufferingState;
    }
.end annotation


# static fields
.field private static DEFAULT_CHANNEL:I = 0x0

.field static final tag:Ljava/lang/String; = "PlaybackStream"


# instance fields
.field private mCurrentFrames:I

.field private mCurrentMode:I

.field private final mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

.field private mDownloadDuration:F

.field private mFileStartTime:J

.field private mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

.field private mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

.field private mNativeContext:J

.field private mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

.field private mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

.field private mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

.field private mPlaybackListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/jieli/lib/dv/control/player/OnPlaybackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/Stream;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mFileStartTime:J

    .line 16
    sget-object v0, Lcom/jieli/lib/dv/control/base/AbstractClient;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/base/AbstractClient;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 17
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeInit()Z

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    .line 19
    new-instance v0, Lcom/jieli/lib/dv/control/gps/GpsParser;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/gps/GpsParser;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/jieli/lib/dv/control/player/PlaybackStream;I)I
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/jieli/lib/dv/control/player/PlaybackStream;)F
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    return v0
.end method

.method static synthetic access$400(F)F
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->round(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnBufferingListener;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    return-object v0
.end method

.method private native nativeCloseClient()Z
.end method

.method private native nativeConfigureRtp([I[ILjava/lang/String;)Z
.end method

.method private native nativeCreateClient(ILjava/lang/String;I)Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeIsBuffering()Z
.end method

.method private native nativeIsPausing()Z
.end method

.method private native nativeIsPlaying()Z
.end method

.method private native nativePause()Z
.end method

.method private native nativePlay()Z
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetMode(I)Z
.end method

.method private native nativeSetMute(Z)V
.end method

.method private native nativeSetQueueSize(I)V
.end method

.method private native nativeSetSoTimeout(I)Z
.end method

.method private native nativeToggleBuffer(I)Z
.end method

.method private static round(F)F
    .locals 2

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, p0, v1

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method private setQueueSize(I)V
    .locals 3

    .prologue
    if-lez p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeSetQueueSize(I)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue size error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()Z
    .locals 4

    .prologue
    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    .line 4
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeCloseClient()Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public configure(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 2
    new-array v0, v1, [I

    aput p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->configure([I[I)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public configure([I[I)Z
    .locals 1

    .prologue
    const-string v0, "127.0.0.1"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeConfigureRtp([I[ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected create(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public create(ILjava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->create(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public create(ILjava/lang/String;I)Z
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->create()Z

    .line 4
    :cond_0
    iput p3, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeCreateClient(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public create(ILjava/lang/String;Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    .line 2
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->create(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 4294967295
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->release()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mNativeContext:J

    return-void
.end method

.method public getCurrentMediaInfo()Lcom/jieli/lib/dv/control/model/MediaInfo;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamMode()I
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeIsBuffering()Z

    move-result v0

    return v0
.end method

.method protected isReceiving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreamPausing()Z
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeIsPausing()Z

    move-result v0

    return v0
.end method

.method public isStreamReceiving()Z
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeIsPlaying()Z

    move-result v0

    return v0
.end method

.method protected onBuffering(I)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream$6;

    invoke-direct {v0, p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream$6;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 14
    new-instance v2, Lcom/jieli/lib/dv/control/player/PlaybackStream$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/jieli/lib/dv/control/player/PlaybackStream$2;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;Lcom/jieli/lib/dv/control/player/IPlayerListener;ILjava/lang/String;)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onFileEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->onStateChanged(I)V

    return-void
.end method

.method protected onFrameReceived(I[BJJ)V
    .locals 9

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 4
    :cond_1
    iget v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    if-eq v1, v2, :cond_2

    if-ne v3, v1, :cond_3

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onReceived(I[B)V

    goto :goto_0

    .line 4
    :cond_3
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v3, :cond_4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p2}, Lcom/jieli/lib/dv/control/gps/GpsParser;->parse([B)Z

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 24
    sget v2, Lcom/jieli/lib/dv/control/player/PlaybackStream;->DEFAULT_CHANNEL:I

    move v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onVideo(II[BJJ)V

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 26
    sget v2, Lcom/jieli/lib/dv/control/player/PlaybackStream;->DEFAULT_CHANNEL:I

    move v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onAudio(II[BJJ)V

    goto :goto_2
.end method

.method protected onMediaMetaUpdate(IIIIILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1
    new-instance v1, Lcom/jieli/lib/dv/control/model/MediaInfo;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/model/MediaInfo;-><init>()V

    .line 2
    invoke-virtual {v1, p1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setWidth(I)V

    .line 3
    invoke-virtual {v1, p2}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setHeight(I)V

    .line 4
    invoke-virtual {v1, p6}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setPath(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p3}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setFrameRate(I)V

    .line 6
    invoke-virtual {v1, p4}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setSampleRate(I)V

    .line 7
    invoke-virtual {v1, p5}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setDuration(I)V

    .line 8
    iput-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    .line 10
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_2

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;

    invoke-direct {v0, p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    .line 30
    invoke-interface {v0, v1}, Lcom/jieli/lib/dv/control/player/OnPlaybackListener;->onUpdate(Lcom/jieli/lib/dv/control/model/MediaInfo;)V

    goto :goto_1

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    .line 35
    invoke-interface {v0}, Lcom/jieli/lib/dv/control/player/OnProgressListener;->onStart()V

    goto :goto_0
.end method

.method protected onPlayFileEnd()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/jieli/lib/dv/control/player/OnProgressListener;->onFinish()V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 3

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream$3;

    invoke-direct {v0, p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream$3;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    .line 14
    :cond_0
    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/player/IPlayerListener;

    .line 14
    new-instance v2, Lcom/jieli/lib/dv/control/player/PlaybackStream$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream$4;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;Lcom/jieli/lib/dv/control/player/IPlayerListener;I)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onTimeUpdate(IIIIII)V
    .locals 7

    .prologue
    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    add-int/lit16 v1, p1, 0x7df

    add-int/lit8 v2, p2, -0x1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3
    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentTimeAtomic:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    iget v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v2, v1, :cond_2

    .line 37
    :cond_0
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_4

    .line 40
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    if-eqz v0, :cond_1

    .line 41
    iget v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mProgress:I

    .line 42
    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;

    invoke-direct {v0, p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;-><init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    iget v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    if-nez v1, :cond_3

    .line 31
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mFileStartTime:J

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    if-eqz v1, :cond_1

    .line 34
    iget v2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentFrames:I

    .line 36
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mFileStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v0, v2

    invoke-interface {v1, v0}, Lcom/jieli/lib/dv/control/player/OnProgressListener;->onProgress(I)V

    goto :goto_0

    .line 43
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseStream()Z
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativePause()Z

    move-result v0

    return v0
.end method

.method public playStream()Z
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativePlay()Z

    move-result v0

    return v0
.end method

.method public registerPlayerListener(Lcom/jieli/lib/dv/control/player/OnPlaybackListener;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method

.method public release()Z
    .locals 2

    .prologue
    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    .line 10
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->close()Z

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mNativeContext:J

    const/4 v0, 0x1

    .line 15
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDownloadDuration(I)V
    .locals 3

    .prologue
    if-lez p1, :cond_0

    int-to-float v0, p1

    .line 1
    iput v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mDownloadDuration:F

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setFrameRate(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMute(Z)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeSetMute(Z)V

    return-void
.end method

.method public setOnBufferingListener(Lcom/jieli/lib/dv/control/player/OnBufferingListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    return-void
.end method

.method public setOnDownloadListener(Lcom/jieli/lib/dv/control/player/OnDownloadListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    return-void
.end method

.method public setOnGpsListener(Lcom/jieli/lib/dv/control/gps/OnGpsListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mGpsParser:Lcom/jieli/lib/dv/control/gps/GpsParser;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/gps/GpsParser;->setOnGpsListener(Lcom/jieli/lib/dv/control/gps/OnGpsListener;)V

    :cond_0
    return-void
.end method

.method public setOnProgressListener(Lcom/jieli/lib/dv/control/player/OnProgressListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mOnProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    return-void
.end method

.method protected setResolution(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setSampleRate(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSoTimeout(I)Z
    .locals 2

    .prologue
    if-ltz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeSetSoTimeout(I)Z

    move-result v0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setStreamMode(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1
    iput p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mCurrentMode:I

    .line 2
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeSetMode(I)Z

    move-result v0

    return v0
.end method

.method public toggleBuffering(Z)Z
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeToggleBuffer(I)Z

    move-result v0

    .line 3
    :goto_0
    return v0

    .line 1
    :cond_0
    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->nativeToggleBuffer(I)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterPlayerListener(Lcom/jieli/lib/dv/control/player/OnPlaybackListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->mPlaybackListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method
