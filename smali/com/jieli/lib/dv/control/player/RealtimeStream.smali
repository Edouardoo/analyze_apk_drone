.class public final Lcom/jieli/lib/dv/control/player/RealtimeStream;
.super Lcom/jieli/lib/dv/control/player/Stream;
.source "SourceFile"


# static fields
.field private static tag:Ljava/lang/String; = "RealtimeStream"


# instance fields
.field private mStream:Lcom/jieli/lib/dv/control/player/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 2
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/Stream;-><init>()V

    if-nez p1, :cond_0

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    .line 6
    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    goto :goto_0
.end method


# virtual methods
.method public close()Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/IStreamClient;->close()Z

    move-result v0

    return v0
.end method

.method public configure(II)Z
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/Stream;->configure(II)Z

    move-result v0

    return v0
.end method

.method public configure([I[I)Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/Stream;->configure([I[I)Z

    move-result v0

    return v0
.end method

.method public create(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public create(ILjava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected create(ILjava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jieli/lib/dv/control/player/IStreamClient;->create(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isReceiving()Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/IStreamClient;->isReceiving()Z

    move-result v0

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onFrameReceived(I[BJJ)V
    .locals 0

    return-void
.end method

.method protected onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public registerPlayerListener(Lcom/jieli/lib/dv/control/player/OnRealTimeListener;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    return-void
.end method

.method public registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/IStreamClient;->registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    return-void
.end method

.method public release()Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/Stream;->release()Z

    move-result v0

    return v0
.end method

.method public setFrameRate(I)Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/IStreamClient;->setFrameRate(I)Z

    move-result v0

    return v0
.end method

.method public setMute(Z)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->setMute(Z)V

    return-void
.end method

.method public setResolution(II)Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/IStreamClient;->setResolution(II)Z

    move-result v0

    return v0
.end method

.method public setSampleRate(I)Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/IStreamClient;->setSampleRate(I)Z

    move-result v0

    return v0
.end method

.method public setSoTimeout(I)Z
    .locals 3

    .prologue
    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->setSoTimeout(I)Z

    move-result v0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout can\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterPlayerListener(Lcom/jieli/lib/dv/control/player/OnRealTimeListener;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    return-void
.end method

.method public unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/IStreamClient;->unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    return-void
.end method

.method public useDeviceTimestamp(Z)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/RealtimeStream;->mStream:Lcom/jieli/lib/dv/control/player/Stream;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/Stream;->useDeviceTimestamp(Z)V

    return-void
.end method
