.class Lcom/hfufo/rxdrone/PlayVideoActivity$4;
.super Ljava/lang/Object;
.source "PlayVideoActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/PlayVideoActivity;->playVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$4;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 5
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    const/4 v4, 0x0

    .line 297
    const-string v0, "PlayVideoActivity"

    const-string v1, "onPrepared is ok! start playing."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$4;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    .line 299
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$4;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$900(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    .line 300
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$4;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$4;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$4;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb2

    iget-object v3, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$4;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$4;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v0, v4}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$1002(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    .line 304
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$4;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v0, v4}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$802(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    .line 306
    return-void
.end method
