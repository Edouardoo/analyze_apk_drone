.class public interface abstract Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;
.super Ljava/lang/Object;
.source "IRenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/jl_player/ijkplayer/IRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRenderCallback"
.end annotation


# virtual methods
.method public abstract onSurfaceChanged(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;III)V
    .param p1    # Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceCreated(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;II)V
    .param p1    # Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceDestroyed(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)V
    .param p1    # Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
