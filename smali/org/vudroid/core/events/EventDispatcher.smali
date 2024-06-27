.class public Lorg/vudroid/core/events/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/events/EventDispatcher;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/vudroid/core/events/EventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public dispatch(Lorg/vudroid/core/events/Event;)V
    .locals 3
    .param p1, "event"    # Lorg/vudroid/core/events/Event;

    .prologue
    .line 12
    iget-object v1, p0, Lorg/vudroid/core/events/EventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 14
    .local v0, "listener":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/vudroid/core/events/Event;->dispatchOn(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    .end local v0    # "listener":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public removeEventListener(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/vudroid/core/events/EventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method
