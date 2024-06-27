.class Lcom/jieli/jl_player/PlayerManager$5;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/jl_player/PlayerManager;-><init>(Landroid/app/Activity;Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/jl_player/PlayerManager;


# direct methods
.method constructor <init>(Lcom/jieli/jl_player/PlayerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jieli/jl_player/PlayerManager;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager$5;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$5;->this$0:Lcom/jieli/jl_player/PlayerManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/jieli/jl_player/PlayerManager;->access$000(Lcom/jieli/jl_player/PlayerManager;I)V

    .line 125
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$5;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v0}, Lcom/jieli/jl_player/PlayerManager;->access$100(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/interfaces/OnCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/jl_player/interfaces/OnCompleteListener;->onComplete()V

    .line 126
    return-void
.end method
