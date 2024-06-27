.class Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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
    .line 386
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    const/4 v4, 0x3

    .line 388
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$502(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;J)J

    .line 389
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$602(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 394
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$700(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$700(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->setEnabled(Z)V

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$002(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 401
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$102(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 403
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v0

    .line 404
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 405
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->seekTo(I)V

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 410
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 411
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setVideoSize(II)V

    .line 412
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$200(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$300(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 413
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v1

    invoke-interface {v1}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->shouldWaitForResize()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1200(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 417
    :cond_3
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1300(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 418
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    .line 419
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 420
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v1

    invoke-interface {v1}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->show()V

    .line 438
    :cond_4
    :goto_0
    return-void

    .line 422
    :cond_5
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    .line 423
    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_4

    .line 424
    :cond_6
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 426
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->show(I)V

    goto :goto_0

    .line 434
    :cond_7
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1300(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 435
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$2;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    goto :goto_0
.end method
