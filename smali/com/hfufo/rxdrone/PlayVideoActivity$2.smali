.class Lcom/hfufo/rxdrone/PlayVideoActivity$2;
.super Ljava/lang/Object;
.source "PlayVideoActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/PlayVideoActivity;->initPlayer()V
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
    .line 253
    iput-object p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$2;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 5
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    const/16 v4, 0xb2

    .line 256
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$2;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$2;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$2;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$2;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$600(Lcom/hfufo/rxdrone/PlayVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$2;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$100(Lcom/hfufo/rxdrone/PlayVideoActivity;)Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getDuration()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$2;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$802(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    .line 261
    return-void
.end method
