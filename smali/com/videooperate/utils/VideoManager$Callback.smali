.class public interface abstract Lcom/videooperate/utils/VideoManager$Callback;
.super Ljava/lang/Object;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/utils/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFailure()V
.end method

.method public abstract onProgress()V
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
