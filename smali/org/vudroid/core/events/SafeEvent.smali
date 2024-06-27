.class public abstract Lorg/vudroid/core/events/SafeEvent;
.super Ljava/lang/Object;
.source "SafeEvent.java"

# interfaces
.implements Lorg/vudroid/core/events/Event;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/vudroid/core/events/Event",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final listenerType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 10
    .local p0, "this":Lorg/vudroid/core/events/SafeEvent;, "Lorg/vudroid/core/events/SafeEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-direct {p0}, Lorg/vudroid/core/events/SafeEvent;->getListenerType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/events/SafeEvent;->listenerType:Ljava/lang/Class;

    .line 12
    return-void
.end method

.method private getListenerType()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/vudroid/core/events/SafeEvent;, "Lorg/vudroid/core/events/SafeEvent<TT;>;"
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 18
    .local v0, "method":Ljava/lang/reflect/Method;
    const-string v5, "dispatchSafely"

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t find dispatchSafely method"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final dispatchOn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lorg/vudroid/core/events/SafeEvent;, "Lorg/vudroid/core/events/SafeEvent<TT;>;"
    iget-object v0, p0, Lorg/vudroid/core/events/SafeEvent;->listenerType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lorg/vudroid/core/events/SafeEvent;->dispatchSafely(Ljava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method

.method public abstract dispatchSafely(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
