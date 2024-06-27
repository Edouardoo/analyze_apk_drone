.class public Lorg/vudroid/core/events/BringUpZoomControlsEvent;
.super Lorg/vudroid/core/events/SafeEvent;
.source "BringUpZoomControlsEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/vudroid/core/events/SafeEvent",
        "<",
        "Lorg/vudroid/core/events/BringUpZoomControlsListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lorg/vudroid/core/events/SafeEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic dispatchSafely(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Lorg/vudroid/core/events/BringUpZoomControlsListener;

    invoke-virtual {p0, p1}, Lorg/vudroid/core/events/BringUpZoomControlsEvent;->dispatchSafely(Lorg/vudroid/core/events/BringUpZoomControlsListener;)V

    return-void
.end method

.method public dispatchSafely(Lorg/vudroid/core/events/BringUpZoomControlsListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/vudroid/core/events/BringUpZoomControlsListener;

    .prologue
    .line 8
    invoke-interface {p1}, Lorg/vudroid/core/events/BringUpZoomControlsListener;->toggleZoomControls()V

    .line 9
    return-void
.end method
