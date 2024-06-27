.class public interface abstract Lcom/hfufo/widget/AvcEncoder$H264CallBack;
.super Ljava/lang/Object;
.source "AvcEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/AvcEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "H264CallBack"
.end annotation


# virtual methods
.method public abstract onFailed()V
.end method

.method public abstract onFrame([B)V
.end method

.method public abstract onRate()V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
