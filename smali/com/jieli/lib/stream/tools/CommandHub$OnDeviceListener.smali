.class public interface abstract Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/tools/CommandHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceListener"
.end annotation


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onReceive(Lcom/jieli/lib/stream/beans/StateInfo;)V
.end method
