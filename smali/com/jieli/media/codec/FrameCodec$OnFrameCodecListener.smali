.class public interface abstract Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;
.super Ljava/lang/Object;
.source "FrameCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/media/codec/FrameCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFrameCodecListener"
.end annotation


# virtual methods
.method public abstract onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method
