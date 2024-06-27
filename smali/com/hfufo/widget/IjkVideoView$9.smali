.class Lcom/hfufo/widget/IjkVideoView$9;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


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
    .line 721
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView$9;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$9;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/hfufo/widget/IjkVideoView;->access$2202(Lcom/hfufo/widget/IjkVideoView;J)J

    .line 726
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$9;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$600(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/InfoHudViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$9;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$600(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/InfoHudViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$9;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$2200(Lcom/hfufo/widget/IjkVideoView;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$9;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$2300(Lcom/hfufo/widget/IjkVideoView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/hfufo/widget/media/InfoHudViewHolder;->updateSeekCost(J)V

    .line 729
    :cond_0
    return-void
.end method
