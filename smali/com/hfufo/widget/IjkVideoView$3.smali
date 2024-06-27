.class Lcom/hfufo/widget/IjkVideoView$3;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

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
    .line 547
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->access$002(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 548
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->access$102(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 549
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->access$202(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 550
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->access$302(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 551
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$000(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$100(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$000(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$100(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/hfufo/widget/media/IRenderView;->setVideoSize(II)V

    .line 554
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$200(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$300(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/hfufo/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$3;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->requestLayout()V

    .line 559
    :cond_1
    return-void
.end method
