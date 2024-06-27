.class public Lorg/vudroid/core/events/ZoomListener$CommitZoomEvent;
.super Lorg/vudroid/core/events/SafeEvent;
.source "ZoomListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/vudroid/core/events/ZoomListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommitZoomEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/vudroid/core/events/SafeEvent",
        "<",
        "Lorg/vudroid/core/events/ZoomListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/vudroid/core/events/SafeEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic dispatchSafely(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lorg/vudroid/core/events/ZoomListener;

    invoke-virtual {p0, p1}, Lorg/vudroid/core/events/ZoomListener$CommitZoomEvent;->dispatchSafely(Lorg/vudroid/core/events/ZoomListener;)V

    return-void
.end method

.method public dispatchSafely(Lorg/vudroid/core/events/ZoomListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/vudroid/core/events/ZoomListener;

    .prologue
    .line 14
    invoke-interface {p1}, Lorg/vudroid/core/events/ZoomListener;->commitZoom()V

    .line 15
    return-void
.end method
