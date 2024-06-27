.class Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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
    .line 369
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "sarNum"    # I
    .param p5, "sarDen"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$002(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 372
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$102(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 373
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$202(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 374
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$302(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 375
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setVideoSize(II)V

    .line 378
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$200(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$300(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$1;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->requestLayout()V

    .line 383
    :cond_1
    return-void
.end method
