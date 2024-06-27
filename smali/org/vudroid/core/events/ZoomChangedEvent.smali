.class public Lorg/vudroid/core/events/ZoomChangedEvent;
.super Lorg/vudroid/core/events/SafeEvent;
.source "ZoomChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/vudroid/core/events/SafeEvent",
        "<",
        "Lorg/vudroid/core/events/ZoomListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final newZoom:F

.field private final oldZoom:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "newZoom"    # F
    .param p2, "oldZoom"    # F

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/vudroid/core/events/SafeEvent;-><init>()V

    .line 10
    iput p1, p0, Lorg/vudroid/core/events/ZoomChangedEvent;->newZoom:F

    .line 11
    iput p2, p0, Lorg/vudroid/core/events/ZoomChangedEvent;->oldZoom:F

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic dispatchSafely(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Lorg/vudroid/core/events/ZoomListener;

    invoke-virtual {p0, p1}, Lorg/vudroid/core/events/ZoomChangedEvent;->dispatchSafely(Lorg/vudroid/core/events/ZoomListener;)V

    return-void
.end method

.method public dispatchSafely(Lorg/vudroid/core/events/ZoomListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/vudroid/core/events/ZoomListener;

    .prologue
    .line 17
    iget v0, p0, Lorg/vudroid/core/events/ZoomChangedEvent;->newZoom:F

    iget v1, p0, Lorg/vudroid/core/events/ZoomChangedEvent;->oldZoom:F

    invoke-interface {p1, v0, v1}, Lorg/vudroid/core/events/ZoomListener;->zoomChanged(FF)V

    .line 18
    return-void
.end method
