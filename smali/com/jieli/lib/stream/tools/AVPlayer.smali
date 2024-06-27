.class public Lcom/jieli/lib/stream/tools/AVPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/stream/util/ICommon;


# static fields
.field public static final RTS_CHANNEL_FRONT:I = 0x1

.field public static final RTS_CHANNEL_REAR:I = 0x2

.field public static final TYPE_REAR_RESOLUTION_720P:I = 0x7

.field public static final TYPE_REAR_RESOLUTION_VGA:I = 0x6

.field public static final TYPE_RESOLUTION_720P:I = 0x5

.field public static final TYPE_RESOLUTION_DEFAULT:I = 0x2

.field public static final TYPE_RESOLUTION_VGA:I = 0x4

.field public static final TYPE_RT_AUDIO:I = 0x1

.field public static final TYPE_RT_PHOTO:I = 0x3

.field public static final TYPE_RT_VIDEO:I = 0x2

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/jieli/lib/stream/tools/AVPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/stream/tools/AVPlayer;->a:Ljava/lang/String;

    .line 41
    :try_start_0
    const-string v0, "av_stream"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->b:J

    .line 48
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/AVPlayer;->initNativeID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/jieli/lib/stream/tools/AVPlayer;->a:Ljava/lang/String;

    const-string v1, "Initialize native FieldID and MethodID success."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/jieli/lib/stream/tools/AVPlayer;->a:Ljava/lang/String;

    const-string v1, "Initialize native FieldID and MethodID fail. Native callback will be not working."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native DVPlayerClearCache(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/AVPlayerException;
        }
    .end annotation
.end method

.method private native DVPlayerDestroy(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/AVPlayerException;
        }
    .end annotation
.end method

.method private native DVPlayerNew(IILjava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/AVPlayerException;
        }
    .end annotation
.end method

.method private native DVPlayerStartProcess(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/AVPlayerException;
        }
    .end annotation
.end method

.method private native initNativeID()Z
.end method

.method private native setQueueMaxElemsNumber(JIII)Z
.end method


# virtual methods
.method public clearCache()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/AVPlayerException;
        }
    .end annotation

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->b:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/stream/tools/AVPlayer;->DVPlayerClearCache(J)V

    .line 95
    return-void
.end method

.method public createSocket(IILjava/lang/String;I)Z
    .locals 2

    .prologue
    .line 57
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jieli/lib/stream/tools/AVPlayer;->DVPlayerNew(IILjava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->b:J
    :try_end_0
    .catch Lcom/jieli/lib/stream/tools/AVPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVPlayerException;->printStackTrace()V

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/AVPlayerException;
        }
    .end annotation

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->b:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/stream/tools/AVPlayer;->DVPlayerDestroy(J)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->c:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    .line 88
    return-void
.end method

.method public isFrontStreamPlaying()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->a()Z

    move-result v0

    return v0
.end method

.method public isRearStreamPlaying()Z
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->b()Z

    move-result v0

    return v0
.end method

.method protected onRTStreamReceive(III[B)V
    .locals 3

    .prologue
    .line 106
    packed-switch p3, :pswitch_data_0

    .line 128
    sget-object v0, Lcom/jieli/lib/stream/tools/AVPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown resolution type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->c:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->c:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    invoke-interface {v0, p4, p3, p1}, Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;->onVideo([BII)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->c:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->c:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    invoke-interface {v0, p4}, Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;->onAudio([B)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->c:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->c:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    invoke-interface {v0, p4}, Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;->onPhoto([B)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnRTStreamListener(Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;)V
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/jieli/lib/stream/tools/AVPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnRTStreamListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->c:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    .line 101
    return-void
.end method

.method public setQueueMax(III)Z
    .locals 7

    .prologue
    .line 72
    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->b:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jieli/lib/stream/tools/AVPlayer;->setQueueMaxElemsNumber(JIII)Z

    move-result v0

    return v0
.end method

.method public startListening()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/stream/tools/AVPlayerException;
        }
    .end annotation

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/AVPlayer;->b:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/stream/tools/AVPlayer;->DVPlayerStartProcess(J)V

    .line 80
    return-void
.end method
