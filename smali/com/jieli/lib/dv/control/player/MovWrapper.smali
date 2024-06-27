.class public Lcom/jieli/lib/dv/control/player/MovWrapper;
.super Lcom/jieli/lib/dv/control/player/AbsRecording;
.source "SourceFile"


# static fields
.field public static final TIME_MASTER_SEQUENCE:I = 0x2

.field public static final TIME_MASTER_SYSTEM:I = 0x1


# instance fields
.field private mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

.field private nativeCustomData:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/AbsRecording;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    .line 29
    sget-object v0, Lcom/jieli/lib/dv/control/base/AbstractClient;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/base/AbstractClient;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 30
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    return-void
.end method

.method private native nativeClose(J)Z
.end method

.method private native nativeCreate(Ljava/lang/String;J)Z
.end method

.method private native nativeGetDuration(J)I
.end method

.method private native nativeInit()J
.end method

.method private native nativeSetAudioTrack(IIIJ)Z
.end method

.method private native nativeSetDuration(IJ)Z
.end method

.method private native nativeSetFrameRate(IJ)Z
.end method

.method private native nativeSetResolution(IIJ)Z
.end method

.method private native nativeSetTimeMaster(IJ)Z
.end method

.method private native nativeWrite(I[BIJ)Z
.end method


# virtual methods
.method public close()Z
    .locals 4

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeClose(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    :cond_0
    return v0
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
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    invoke-direct {p0, p1, v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCreate(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public getVideoDuration()I
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeGetDuration(J)I

    move-result v0

    return v0
.end method

.method protected isReceiving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnRecordListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStateChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnRecordListener;->onStateChanged(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method

.method public setAudioTrack(III)Z
    .locals 6

    .prologue
    .line 1
    iget-wide v4, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeSetAudioTrack(IIIJ)Z

    move-result v0

    return v0
.end method

.method public setFrameRate(I)Z
    .locals 2

    .prologue
    if-lez p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    invoke-direct {p0, p1, v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeSetFrameRate(IJ)Z

    move-result v0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FPS cannot <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnRecordListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    return-void
.end method

.method public setResolution(II)Z
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeSetResolution(IIJ)Z

    move-result v0

    return v0
.end method

.method protected setSampleRate(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTimeMaster(I)Z
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    invoke-direct {p0, p1, v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeSetTimeMaster(IJ)Z

    move-result v0

    return v0
.end method

.method public setVideoDuration(I)Z
    .locals 2

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    invoke-direct {p0, p1, v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeSetDuration(IJ)Z

    move-result v0

    return v0
.end method

.method protected unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 0

    return-void
.end method

.method public write(I[B)Z
    .locals 6

    .prologue
    .line 1
    array-length v3, p2

    iget-wide v4, p0, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeCustomData:J

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jieli/lib/dv/control/player/MovWrapper;->nativeWrite(I[BIJ)Z

    move-result v0

    return v0
.end method
