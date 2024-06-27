.class public Lorg/vudroid/core/events/CurrentPageListener$CurrentPageChangedEvent;
.super Lorg/vudroid/core/events/SafeEvent;
.source "CurrentPageListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/vudroid/core/events/CurrentPageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentPageChangedEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/vudroid/core/events/SafeEvent",
        "<",
        "Lorg/vudroid/core/events/CurrentPageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final pageIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "pageIndex"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/vudroid/core/events/SafeEvent;-><init>()V

    .line 13
    iput p1, p0, Lorg/vudroid/core/events/CurrentPageListener$CurrentPageChangedEvent;->pageIndex:I

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic dispatchSafely(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lorg/vudroid/core/events/CurrentPageListener;

    invoke-virtual {p0, p1}, Lorg/vudroid/core/events/CurrentPageListener$CurrentPageChangedEvent;->dispatchSafely(Lorg/vudroid/core/events/CurrentPageListener;)V

    return-void
.end method

.method public dispatchSafely(Lorg/vudroid/core/events/CurrentPageListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/vudroid/core/events/CurrentPageListener;

    .prologue
    .line 19
    iget v0, p0, Lorg/vudroid/core/events/CurrentPageListener$CurrentPageChangedEvent;->pageIndex:I

    invoke-interface {p1, v0}, Lorg/vudroid/core/events/CurrentPageListener;->currentPageChanged(I)V

    .line 20
    return-void
.end method
