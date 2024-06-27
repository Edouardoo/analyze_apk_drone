.class Lcom/jieli/jl_player/PlayerManager$6;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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
    .line 128
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager$6;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$6;->this$0:Lcom/jieli/jl_player/PlayerManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/jieli/jl_player/PlayerManager;->access$000(Lcom/jieli/jl_player/PlayerManager;I)V

    .line 132
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$6;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v0}, Lcom/jieli/jl_player/PlayerManager;->access$200(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/interfaces/OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/jieli/jl_player/interfaces/OnErrorListener;->onError(II)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method
