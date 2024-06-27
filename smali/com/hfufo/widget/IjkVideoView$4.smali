.class Lcom/hfufo/widget/IjkVideoView$4;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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
    .line 562
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    const/4 v6, 0x3

    .line 564
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/hfufo/widget/IjkVideoView;->access$502(Lcom/hfufo/widget/IjkVideoView;J)J

    .line 565
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$600(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/InfoHudViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$600(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/InfoHudViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$500(Lcom/hfufo/widget/IjkVideoView;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v4}, Lcom/hfufo/widget/IjkVideoView;->access$700(Lcom/hfufo/widget/IjkVideoView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/hfufo/widget/media/InfoHudViewHolder;->updateLoadCost(J)V

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/hfufo/widget/IjkVideoView;->access$802(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 573
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$900(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$900(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$1000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 577
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/hfufo/widget/media/IMediaController;->setEnabled(Z)V

    .line 579
    :cond_2
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hfufo/widget/IjkVideoView;->access$002(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 580
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hfufo/widget/IjkVideoView;->access$102(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 582
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1200(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v0

    .line 583
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_3

    .line 584
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/hfufo/widget/IjkVideoView;->seekTo(I)V

    .line 586
    :cond_3
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$000(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$100(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 589
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 590
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$000(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v3}, Lcom/hfufo/widget/IjkVideoView;->access$100(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/hfufo/widget/media/IRenderView;->setVideoSize(II)V

    .line 591
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$200(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v3}, Lcom/hfufo/widget/IjkVideoView;->access$300(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/hfufo/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 592
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v1

    invoke-interface {v1}, Lcom/hfufo/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1300(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$000(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1400(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$100(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 596
    :cond_4
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1500(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 597
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->start()V

    .line 598
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 599
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v1

    invoke-interface {v1}, Lcom/hfufo/widget/media/IMediaController;->show()V

    .line 617
    :cond_5
    :goto_0
    return-void

    .line 601
    :cond_6
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    .line 602
    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_5

    .line 603
    :cond_7
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 605
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/hfufo/widget/media/IMediaController;->show(I)V

    goto :goto_0

    .line 613
    :cond_8
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1500(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 614
    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$4;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->start()V

    goto :goto_0
.end method
