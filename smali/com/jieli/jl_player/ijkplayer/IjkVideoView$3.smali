.class Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/jl_player/ijkplayer/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 444
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$602(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 445
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1302(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 446
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->hide()V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$3;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 452
    :cond_1
    return-void
.end method
