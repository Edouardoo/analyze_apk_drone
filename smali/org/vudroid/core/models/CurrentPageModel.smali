.class public Lorg/vudroid/core/models/CurrentPageModel;
.super Lorg/vudroid/core/events/EventDispatcher;
.source "CurrentPageModel.java"


# instance fields
.field private currentPageIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/vudroid/core/events/EventDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public setCurrentPageIndex(I)V
    .locals 1
    .param p1, "currentPageIndex"    # I

    .prologue
    .line 12
    iget v0, p0, Lorg/vudroid/core/models/CurrentPageModel;->currentPageIndex:I

    if-eq v0, p1, :cond_0

    .line 14
    iput p1, p0, Lorg/vudroid/core/models/CurrentPageModel;->currentPageIndex:I

    .line 15
    new-instance v0, Lorg/vudroid/core/events/CurrentPageListener$CurrentPageChangedEvent;

    invoke-direct {v0, p1}, Lorg/vudroid/core/events/CurrentPageListener$CurrentPageChangedEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/models/CurrentPageModel;->dispatch(Lorg/vudroid/core/events/Event;)V

    .line 17
    :cond_0
    return-void
.end method
