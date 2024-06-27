.class public Lcom/jieli/lib/dv/control/player/AviWrapper;
.super Lcom/jieli/lib/dv/control/player/AbsRecording;
.source "SourceFile"


# instance fields
.field private isRecording:Z

.field private mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

.field private nativeCustomData:J

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/AbsRecording;-><init>()V

    .line 2
    const-class v0, Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    .line 19
    sget-object v0, Lcom/jieli/lib/dv/control/base/AbstractClient;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/base/AbstractClient;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 21
    :try_start_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->tag:Ljava/lang/String;

    const-string v1, "Initialize native FieldID and MethodID failed."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/jieli/lib/dv/control/exception/NativeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private native nativeConfigureAudio(JIII)Z
.end method

.method private native nativeConfigureVideo(JIII)Z
.end method

.method private native nativeCreate(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/dv/control/exception/NativeException;
        }
    .end annotation
.end method

.method private native nativeInit()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jieli/lib/dv/control/exception/NativeException;
        }
    .end annotation
.end method

.method private native nativeRelease(J)Z
.end method

.method private native nativeSetDuration(JJ)Z
.end method

.method private native nativeSetPath(JLjava/lang/String;)Z
.end method

.method private native nativeStartRecording(J)Z
.end method

.method private native nativeStopRecording(J)Z
.end method

.method private native nativeWriteData(JI[BI)Z
.end method


# virtual methods
.method public configureVideo(III)Z
    .locals 7

    .prologue
    .line 1
    iget-wide v2, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeConfigureVideo(JIII)Z

    move-result v0

    return v0
.end method

.method public create()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J
    :try_end_0
    .catch Lcom/jieli/lib/dv/control/exception/NativeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 4
    :goto_0
    return v0

    .line 3
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected create(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected create(ILjava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public create(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J
    :try_end_0
    .catch Lcom/jieli/lib/dv/control/exception/NativeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 8
    :goto_0
    return v0

    .line 7
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    .line 3
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeRelease(J)Z

    move-result v0

    return v0
.end method

.method protected isReceiving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnRecordListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStateChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnRecordListener;->onStateChanged(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 1
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    goto :goto_0
.end method

.method protected registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method

.method public setAudioTrack(III)Z
    .locals 7

    .prologue
    .line 1
    iget-wide v2, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    move-object v1, p0

    move v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeConfigureAudio(JIII)Z

    move-result v0

    return v0
.end method

.method protected setFrameRate(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    return-void
.end method

.method public setPath(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeSetPath(JLjava/lang/String;)Z

    move-result v0

    return v0
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

.method public setVideoDuration(J)Z
    .locals 3

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeSetDuration(JJ)Z

    move-result v0

    return v0
.end method

.method public startRecording()Z
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeStartRecording(J)Z

    move-result v0

    return v0
.end method

.method public stopRecording()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording:Z

    .line 2
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeStopRecording(J)Z

    move-result v0

    return v0
.end method

.method protected unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method

.method public write(I[B)Z
    .locals 7

    .prologue
    .line 1
    iget-wide v2, p0, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeCustomData:J

    array-length v6, p2

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/jieli/lib/dv/control/player/AviWrapper;->nativeWriteData(JI[BI)Z

    move-result v0

    return v0
.end method
