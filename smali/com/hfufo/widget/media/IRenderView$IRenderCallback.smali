.class public interface abstract Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
.super Ljava/lang/Object;
.source "IRenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/media/IRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRenderCallback"
.end annotation


# virtual methods
.method public abstract onSurfaceChanged(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;III)V
    .param p1    # Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceCreated(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;II)V
    .param p1    # Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceDestroyed(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V
    .param p1    # Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
