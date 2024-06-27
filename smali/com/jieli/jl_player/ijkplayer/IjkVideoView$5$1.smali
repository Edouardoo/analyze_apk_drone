.class Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5$1;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;


# direct methods
.method constructor <init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5$1;->this$1:Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5$1;->this$1:Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;

    iget-object v0, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5$1;->this$1:Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;

    iget-object v0, v0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5$1;->this$1:Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;

    iget-object v1, v1, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 549
    :cond_0
    return-void
.end method
