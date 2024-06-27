.class Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


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
    .line 559
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$6;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0, p2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$2002(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 562
    return-void
.end method
