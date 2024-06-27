.class public Lcom/jieli/lib/stream/tools/StreamPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/stream/util/ICommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/stream/tools/StreamPlayer$a;,
        Lcom/jieli/lib/stream/tools/StreamPlayer$PlayState;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static c:I

.field private static g:Lcom/jieli/lib/stream/tools/StreamPlayer$a;


# instance fields
.field private b:Z

.field private volatile d:F

.field private volatile e:Z

.field private volatile f:Z

.field private h:Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;

.field private i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

.field private j:J

.field private final k:J

.field private volatile l:J

.field private m:Lcom/jieli/lib/stream/interfaces/OnDownloadListener;

.field private volatile n:Z

.field private final o:Ljava/util/concurrent/atomic/AtomicLong;

.field private p:Lcom/jieli/lib/stream/interfaces/OnBufferingListener;

.field private q:Lcom/jieli/lib/stream/interfaces/OnConnectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-class v0, Lcom/jieli/lib/stream/tools/StreamPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->c:I

    .line 79
    const-string v0, "avplayer_tcp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/jieli/lib/stream/tools/StreamPlayer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jieli/lib/stream/tools/StreamPlayer$a;-><init>(Lcom/jieli/lib/stream/tools/StreamPlayer$1;)V

    sput-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->g:Lcom/jieli/lib/stream/tools/StreamPlayer$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v2, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->d:F

    .line 96
    iput-boolean v2, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    .line 97
    iput-boolean v2, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->f:Z

    .line 346
    iput-wide v4, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->j:J

    .line 347
    const-wide/16 v0, 0x2d

    iput-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->k:J

    .line 348
    iput-wide v4, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->l:J

    .line 418
    iput-boolean v2, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->n:Z

    .line 476
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerNew()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    .line 85
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "Create AVPlayerTCP success."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "Create AVPlayerTCP fail."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/jieli/lib/stream/tools/AVPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVPlayerException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(F)F
    .locals 2

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 99
    mul-float v0, p0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->c:I

    return v0
.end method

.method static synthetic a(Lcom/jieli/lib/stream/tools/StreamPlayer;)Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->h:Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;

    return-object v0
.end method

.method static synthetic b(Lcom/jieli/lib/stream/tools/StreamPlayer;)Lcom/jieli/lib/stream/interfaces/OnConnectionListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->q:Lcom/jieli/lib/stream/interfaces/OnConnectionListener;

    return-object v0
.end method

.method private native playerConnect(ILjava/lang/String;I)Z
.end method

.method private native playerDestroy()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/AVPlayerException;
        }
    .end annotation
.end method

.method private native playerDisconnect()Z
.end method

.method private native playerIsOpenBuffer()Z
.end method

.method private native playerIsPaused()Z
.end method

.method private native playerIsPlaying()Z
.end method

.method private native playerNew()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/AVPlayerException;
        }
    .end annotation
.end method

.method private native playerSetPause()V
.end method

.method private native playerSetPlay()V
.end method

.method private native playerToggleBuffer(I)V
.end method

.method private native thumbnailClientRequestClose()V
.end method

.method private native thumbnailClientRequestConnect(Ljava/lang/String;I)Z
.end method


# virtual methods
.method protected closeThumbnailClient()V
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->thumbnailClientRequestClose()V

    .line 331
    :cond_0
    return-void
.end method

.method public connect(ILjava/lang/String;I)Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerConnect(ILjava/lang/String;I)Z

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    goto :goto_0
.end method

.method protected createThumbnailClient(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/stream/tools/StreamPlayer;->thumbnailClientRequestConnect(Ljava/lang/String;I)Z

    move-result v0

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerDisconnect()Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackMode()I
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->c()I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerIsPaused()Z

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerIsPlaying()Z

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    goto :goto_0
.end method

.method protected onAudioReceive([BIJ)V
    .locals 5

    .prologue
    .line 401
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 403
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->l:J

    .line 404
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    iget-boolean v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    invoke-interface {v0, p1, v1}, Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;->onAudio([BZ)V

    .line 408
    :cond_0
    return-void
.end method

.method protected onBufferChanged(ZF)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->p:Lcom/jieli/lib/stream/interfaces/OnBufferingListener;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->p:Lcom/jieli/lib/stream/interfaces/OnBufferingListener;

    invoke-interface {v0, p1}, Lcom/jieli/lib/stream/interfaces/OnBufferingListener;->onBuffering(Z)V

    .line 568
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/jieli/lib/stream/beans/StateInfo;)V
    .locals 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_2

    .line 109
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "stateInfo error."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 114
    invoke-virtual {p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v6

    .line 115
    sget-object v7, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cmdResult=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", param1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/jieli/lib/stream/tools/StreamPlayer;->onPlayerStateChanged(I)V

    goto :goto_0

    .line 116
    :sswitch_0
    const-string v7, "0046"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v7, "0069"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v7, "0043"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v7, "0066"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v7, "0058"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string v7, "0072"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v5

    goto :goto_1

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 124
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->l:J

    .line 126
    iput-boolean v2, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    .line 127
    invoke-virtual {p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt v0, v5, :cond_4

    const-string v0, "0"

    invoke-virtual {p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {p0, v1}, Lcom/jieli/lib/stream/tools/StreamPlayer;->onPlayerStateChanged(I)V

    goto/16 :goto_0

    .line 129
    :cond_4
    invoke-virtual {p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt v0, v5, :cond_1

    const-string v0, "1"

    invoke-virtual {p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iput-boolean v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    .line 131
    iput-boolean v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->f:Z

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->d:F

    goto/16 :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt v0, v3, :cond_1

    .line 139
    const-string v0, "0"

    invoke-virtual {p1}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    iput-boolean v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->n:Z

    goto/16 :goto_0

    .line 142
    :cond_5
    iput-boolean v2, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->n:Z

    goto/16 :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x168c7f -> :sswitch_2
        0x168c82 -> :sswitch_0
        0x168ca3 -> :sswitch_4
        0x168cc0 -> :sswitch_3
        0x168cc3 -> :sswitch_1
        0x168cdb -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onPlayFile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 454
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayFile fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    invoke-interface {v0, p1}, Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;->onPlayFile(Ljava/lang/String;)V

    .line 458
    :cond_0
    return-void
.end method

.method protected declared-synchronized onPlayerStateChanged(I)V
    .locals 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    sput p1, Lcom/jieli/lib/stream/tools/StreamPlayer;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 189
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "START= "

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_1
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->h:Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->g:Lcom/jieli/lib/stream/tools/StreamPlayer$a;

    new-instance v1, Lcom/jieli/lib/stream/tools/StreamPlayer$1;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/tools/StreamPlayer$1;-><init>(Lcom/jieli/lib/stream/tools/StreamPlayer;)V

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/tools/StreamPlayer$a;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "PLAY=="

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :pswitch_2
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "PAUSE=="

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :pswitch_3
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "STOP=="

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :pswitch_4
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "COMPLETION=="

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnPlayStateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->h:Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/jieli/lib/stream/tools/StreamPlayer;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onStateChanged(I)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 494
    packed-switch p1, :pswitch_data_0

    .line 556
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 496
    :pswitch_1
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "status PLAYER_STATUS_STOP sendCommand="

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 508
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "playback is not ready."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :pswitch_2
    const-string v1, "1"

    const-string v2, "0046"

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 512
    :goto_1
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 513
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->q:Lcom/jieli/lib/stream/interfaces/OnConnectionListener;

    if-eqz v0, :cond_0

    .line 514
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->g:Lcom/jieli/lib/stream/tools/StreamPlayer$a;

    new-instance v1, Lcom/jieli/lib/stream/tools/StreamPlayer$2;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/tools/StreamPlayer$2;-><init>(Lcom/jieli/lib/stream/tools/StreamPlayer;)V

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/tools/StreamPlayer$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 504
    :pswitch_3
    const-string v1, "1"

    const-string v2, "0069"

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 525
    :pswitch_4
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "status PLAYER_STATUS_PREPARED"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->q:Lcom/jieli/lib/stream/interfaces/OnConnectionListener;

    if-eqz v0, :cond_0

    .line 527
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->g:Lcom/jieli/lib/stream/tools/StreamPlayer$a;

    new-instance v1, Lcom/jieli/lib/stream/tools/StreamPlayer$3;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/tools/StreamPlayer$3;-><init>(Lcom/jieli/lib/stream/tools/StreamPlayer;)V

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/tools/StreamPlayer$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 536
    :pswitch_5
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "status PLAYER_STATUS_PAUSE"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :pswitch_6
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "status PLAYER_STATUS_PLAYING"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :pswitch_7
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->q:Lcom/jieli/lib/stream/interfaces/OnConnectionListener;

    if-eqz v0, :cond_0

    .line 545
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->g:Lcom/jieli/lib/stream/tools/StreamPlayer$a;

    new-instance v1, Lcom/jieli/lib/stream/tools/StreamPlayer$4;

    invoke-direct {v1, p0}, Lcom/jieli/lib/stream/tools/StreamPlayer$4;-><init>(Lcom/jieli/lib/stream/tools/StreamPlayer;)V

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/tools/StreamPlayer$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 499
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onStreamEnd()V
    .locals 3

    .prologue
    .line 464
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamEnd isDownload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    if-eqz v0, :cond_1

    .line 466
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->onPlayerStateChanged(I)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->m:Lcom/jieli/lib/stream/interfaces/OnDownloadListener;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->m:Lcom/jieli/lib/stream/interfaces/OnDownloadListener;

    invoke-interface {v0}, Lcom/jieli/lib/stream/interfaces/OnDownloadListener;->onCompletion()V

    goto :goto_0
.end method

.method protected onThumbnailReceive([BJZ)V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-interface {v0, p1, v2, v3, p4}, Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;->onThumbnail([BJZ)V

    .line 344
    :cond_0
    return-void
.end method

.method protected onTimeStampReceive(J)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 422
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    if-nez v0, :cond_2

    .line 428
    iget v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->d:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->d:F

    .line 429
    invoke-static {}, Lcom/jieli/lib/stream/tools/VideoManager;->getInstance()Lcom/jieli/lib/stream/tools/VideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/VideoManager;->getTotalTime()J

    move-result-wide v0

    .line 430
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 431
    iget v2, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->d:F

    long-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->a(F)F

    move-result v0

    .line 433
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gtz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->m:Lcom/jieli/lib/stream/interfaces/OnDownloadListener;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->m:Lcom/jieli/lib/stream/interfaces/OnDownloadListener;

    invoke-interface {v1, v0}, Lcom/jieli/lib/stream/interfaces/OnDownloadListener;->onProgress(F)V

    .line 438
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->f:Z

    if-nez v0, :cond_2

    .line 439
    iput-boolean v5, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->f:Z

    .line 440
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->m:Lcom/jieli/lib/stream/interfaces/OnDownloadListener;

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->m:Lcom/jieli/lib/stream/interfaces/OnDownloadListener;

    invoke-interface {v0}, Lcom/jieli/lib/stream/interfaces/OnDownloadListener;->onCompletion()V

    .line 448
    :cond_2
    :goto_0
    return-void

    .line 445
    :cond_3
    sget-object v2, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onVideoReceive(I[BIJ)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x31

    .line 360
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 362
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 363
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->o:Ljava/util/concurrent/atomic/AtomicLong;

    mul-long/2addr v2, p4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 388
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    iget-boolean v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->e:Z

    invoke-interface {v0, p2, v1}, Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;->onVideo([BZ)V

    .line 391
    :cond_1
    return-void

    .line 365
    :cond_2
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->l:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->j:J

    .line 366
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 368
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->j:J

    const-wide/16 v2, 0xf

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 372
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 375
    :cond_3
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->j:J

    const-wide/16 v2, -0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 377
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 378
    :cond_4
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->j:J

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->j:J

    const-wide/16 v2, -0xf

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 380
    const-wide/16 v0, 0x30

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public openBuffer(Z)V
    .locals 3

    .prologue
    .line 307
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playerIsOpenBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerIsOpenBuffer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz p1, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerIsOpenBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerToggleBuffer(I)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerIsOpenBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerToggleBuffer(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerSetPause()V

    .line 215
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerSetPlay()V

    .line 209
    :cond_0
    return-void
.end method

.method public release()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->playerDestroy()Z
    :try_end_0
    .catch Lcom/jieli/lib/stream/tools/AVPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 250
    :goto_0
    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVPlayerException;->printStackTrace()V

    .line 238
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->closeThumbnailClient()V

    .line 244
    iput-object v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    .line 245
    iput-object v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->h:Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;

    .line 246
    iput-object v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->q:Lcom/jieli/lib/stream/interfaces/OnConnectionListener;

    .line 247
    iput-object v1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->p:Lcom/jieli/lib/stream/interfaces/OnBufferingListener;

    .line 248
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->g:Lcom/jieli/lib/stream/tools/StreamPlayer$a;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/tools/StreamPlayer$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    sput-object v1, Lcom/jieli/lib/stream/tools/StreamPlayer;->g:Lcom/jieli/lib/stream/tools/StreamPlayer$a;

    .line 250
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->b:Z

    goto :goto_0
.end method

.method public setOnBufferListener(Lcom/jieli/lib/stream/interfaces/OnBufferingListener;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->p:Lcom/jieli/lib/stream/interfaces/OnBufferingListener;

    .line 573
    return-void
.end method

.method public setOnConnectionListener(Lcom/jieli/lib/stream/interfaces/OnConnectionListener;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->q:Lcom/jieli/lib/stream/interfaces/OnConnectionListener;

    .line 577
    return-void
.end method

.method public setOnDownloadListener(Lcom/jieli/lib/stream/interfaces/OnDownloadListener;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->m:Lcom/jieli/lib/stream/interfaces/OnDownloadListener;

    .line 413
    return-void
.end method

.method public setOnPlayStateListener(Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->h:Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;

    .line 257
    return-void
.end method

.method public setOnPlaybackListener(Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer;->i:Lcom/jieli/lib/stream/interfaces/OnPlaybackListener;

    .line 262
    return-void
.end method

.method public tryToGetVideoThumbnail(Ljava/lang/String;ILcom/jieli/lib/stream/beans/VideoInfo;II)V
    .locals 8

    .prologue
    .line 280
    if-eqz p3, :cond_4

    .line 281
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v0

    invoke-virtual {p3}, Lcom/jieli/lib/stream/beans/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/lib/stream/tools/ParseHelper;->getSelectVideoIndexInTxt(Ljava/lang/String;)I

    move-result v0

    .line 283
    if-lez v0, :cond_3

    .line 284
    const/4 v1, 0x1

    if-gt p4, v1, :cond_0

    .line 285
    const/4 p5, 0x0

    .line 287
    :cond_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/CommandHub;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 288
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "0042"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 289
    invoke-virtual {p3}, Lcom/jieli/lib/stream/beans/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/jieli/lib/stream/beans/VideoInfo;->getTimeOffset()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 288
    invoke-virtual {v1, v2, v3, v4}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/stream/tools/StreamPlayer;->thumbnailClientRequestConnect(Ljava/lang/String;I)Z

    .line 304
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/CommandHub;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 292
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "0065"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 293
    invoke-virtual {p3}, Lcom/jieli/lib/stream/beans/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/jieli/lib/stream/beans/VideoInfo;->getTimeOffset()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 292
    invoke-virtual {v1, v2, v3, v4}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/stream/tools/StreamPlayer;->thumbnailClientRequestConnect(Ljava/lang/String;I)Z

    goto :goto_0

    .line 296
    :cond_2
    sget-object v0, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    const-string v1, "playback mode not ready"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :cond_3
    sget-object v1, Lcom/jieli/lib/stream/tools/StreamPlayer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "videoInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
