.class public Lorg/vudroid/core/models/ZoomModel;
.super Lorg/vudroid/core/events/EventDispatcher;
.source "ZoomModel.java"


# static fields
.field private static final INCREMENT_DELTA:F = 0.05f


# instance fields
.field private horizontalScrollEnabled:Z

.field private isCommited:Z

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/vudroid/core/events/EventDispatcher;-><init>()V

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/vudroid/core/models/ZoomModel;->zoom:F

    return-void
.end method


# virtual methods
.method public canDecrement()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lorg/vudroid/core/models/ZoomModel;->zoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/vudroid/core/models/ZoomModel;->isCommited:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/vudroid/core/models/ZoomModel;->isCommited:Z

    .line 67
    new-instance v0, Lorg/vudroid/core/events/ZoomListener$CommitZoomEvent;

    invoke-direct {v0}, Lorg/vudroid/core/events/ZoomListener$CommitZoomEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/models/ZoomModel;->dispatch(Lorg/vudroid/core/events/Event;)V

    .line 69
    :cond_0
    return-void
.end method

.method public decreaseZoom()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/vudroid/core/models/ZoomModel;->setZoom(F)V

    .line 40
    return-void
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/vudroid/core/models/ZoomModel;->zoom:F

    return v0
.end method

.method public increaseZoom()V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/vudroid/core/models/ZoomModel;->setZoom(F)V

    .line 35
    return-void
.end method

.method public isHorizontalScrollEnabled()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/vudroid/core/models/ZoomModel;->horizontalScrollEnabled:Z

    return v0
.end method

.method public setHorizontalScrollEnabled(Z)V
    .locals 0
    .param p1, "horizontalScrollEnabled"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/vudroid/core/models/ZoomModel;->horizontalScrollEnabled:Z

    .line 50
    return-void
.end method

.method public setZoom(F)V
    .locals 2
    .param p1, "zoom"    # F

    .prologue
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 18
    iget v1, p0, Lorg/vudroid/core/models/ZoomModel;->zoom:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 20
    iget v0, p0, Lorg/vudroid/core/models/ZoomModel;->zoom:F

    .line 21
    .local v0, "oldZoom":F
    iput p1, p0, Lorg/vudroid/core/models/ZoomModel;->zoom:F

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/vudroid/core/models/ZoomModel;->isCommited:Z

    .line 23
    new-instance v1, Lorg/vudroid/core/events/ZoomChangedEvent;

    invoke-direct {v1, p1, v0}, Lorg/vudroid/core/events/ZoomChangedEvent;-><init>(FF)V

    invoke-virtual {p0, v1}, Lorg/vudroid/core/models/ZoomModel;->dispatch(Lorg/vudroid/core/events/Event;)V

    .line 25
    .end local v0    # "oldZoom":F
    :cond_0
    return-void
.end method

.method public toggleZoomControls()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/vudroid/core/events/BringUpZoomControlsEvent;

    invoke-direct {v0}, Lorg/vudroid/core/events/BringUpZoomControlsEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/models/ZoomModel;->dispatch(Lorg/vudroid/core/events/Event;)V

    .line 45
    return-void
.end method
