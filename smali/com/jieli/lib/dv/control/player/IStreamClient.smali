.class abstract Lcom/jieli/lib/dv/control/player/IStreamClient;
.super Lcom/jieli/lib/dv/control/base/AbstractClient;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/base/AbstractClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract close()Z
.end method

.method protected create()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract create(I)Z
.end method

.method protected abstract create(ILjava/lang/String;)Z
.end method

.method protected abstract create(ILjava/lang/String;Z)Z
.end method

.method protected abstract isReceiving()Z
.end method

.method protected abstract onError(ILjava/lang/String;)V
.end method

.method protected abstract onStateChanged(I)V
.end method

.method protected abstract registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
.end method

.method protected abstract setFrameRate(I)Z
.end method

.method protected abstract setResolution(II)Z
.end method

.method protected abstract setSampleRate(I)Z
.end method

.method protected abstract unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V
.end method
