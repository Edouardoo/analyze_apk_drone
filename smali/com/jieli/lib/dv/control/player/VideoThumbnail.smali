.class public Lcom/jieli/lib/dv/control/player/VideoThumbnail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

.field private mNativeContext:J

.field private mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

.field private mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->tag:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    .line 5
    iput-object v1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    .line 6
    iput-object v1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 8
    sget-object v0, Lcom/jieli/lib/dv/control/base/AbstractClient;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/base/AbstractClient;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 9
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeInit()Z

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/lib/dv/control/player/VideoThumbnail;)Lcom/jieli/lib/dv/control/player/OnCompletedListener;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    return-object v0
.end method

.method private native nativeCloseClient()Z
.end method

.method private native nativeCreateClient(ILjava/lang/String;)Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeIsReceiving()Z
.end method

.method private native nativeRelease()V
.end method

.method private onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    .prologue
    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 3
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeCloseClient()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public create(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/model/PictureInfo;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeCreateClient(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    .line 2
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    .line 3
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 4
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mNativeContext:J

    return-void
.end method

.method public isReceiving()Z
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeIsReceiving()Z

    move-result v0

    return v0
.end method

.method protected onFrameReceived(I[B)V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    .line 2
    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, p2, v1}, Lcom/jieli/lib/dv/control/player/OnFrameListener;->onFrame([BLcom/jieli/lib/dv/control/model/PictureInfo;)V

    :cond_0
    return-void
.end method

.method protected onMediaMetaUpdate(IIIIILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/model/PictureInfo;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setWidth(I)V

    .line 5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {v0, p2}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setHeight(I)V

    .line 6
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {v0, p6}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setPath(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {v0, p3}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setFrameRate(I)V

    .line 8
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {v0, p4}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setSampleRate(I)V

    .line 9
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    invoke-virtual {v0, p5}, Lcom/jieli/lib/dv/control/model/MediaInfo;->setDuration(I)V

    return-void
.end method

.method protected onThumbnailEnd()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/jieli/lib/dv/control/player/VideoThumbnail$1;

    invoke-direct {v0, p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail$1;-><init>(Lcom/jieli/lib/dv/control/player/VideoThumbnail;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
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
    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mMediaInfo:Lcom/jieli/lib/dv/control/model/PictureInfo;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jieli/lib/dv/control/model/PictureInfo;->setTime(J)V

    :cond_0
    return-void
.end method

.method public release()Z
    .locals 2

    .prologue
    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    .line 4
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->nativeRelease()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mNativeContext:J

    const/4 v0, 0x1

    .line 6
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnCompletedListener(Lcom/jieli/lib/dv/control/player/OnCompletedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnCompletedListener:Lcom/jieli/lib/dv/control/player/OnCompletedListener;

    return-void
.end method

.method public setOnFrameListener(Lcom/jieli/lib/dv/control/player/OnFrameListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->mOnFrameListener:Lcom/jieli/lib/dv/control/player/OnFrameListener;

    return-void
.end method
