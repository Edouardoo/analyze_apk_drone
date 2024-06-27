.class Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;


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
    .line 573
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimedText(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/IjkTimedText;)V
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "text"    # Ltv/danmaku/ijk/media/player/IjkTimedText;

    .prologue
    .line 576
    if-eqz p2, :cond_0

    .line 577
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$8;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$2100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Ltv/danmaku/ijk/media/player/IjkTimedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    :cond_0
    return-void
.end method
