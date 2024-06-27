.class Lcom/hfufo/widget/IjkVideoView$5;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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
    .line 621
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView$5;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 623
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$5;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->access$802(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 624
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$5;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->access$1502(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 625
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$5;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$5;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/hfufo/widget/media/IMediaController;->hide()V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$5;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1600(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$5;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1600(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$5;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 631
    :cond_1
    return-void
.end method
