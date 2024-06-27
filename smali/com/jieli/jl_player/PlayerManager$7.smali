.class Lcom/jieli/jl_player/PlayerManager$7;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


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
    .line 136
    iput-object p1, p0, Lcom/jieli/jl_player/PlayerManager$7;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x2

    .line 139
    sparse-switch p2, :sswitch_data_0

    .line 154
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$7;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v0}, Lcom/jieli/jl_player/PlayerManager;->access$300(Lcom/jieli/jl_player/PlayerManager;)Lcom/jieli/jl_player/interfaces/OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/jieli/jl_player/interfaces/OnInfoListener;->onInfo(II)V

    .line 155
    const/4 v0, 0x0

    return v0

    .line 141
    :sswitch_1
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$7;->this$0:Lcom/jieli/jl_player/PlayerManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jieli/jl_player/PlayerManager;->access$000(Lcom/jieli/jl_player/PlayerManager;I)V

    goto :goto_0

    .line 144
    :sswitch_2
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$7;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v0, v1}, Lcom/jieli/jl_player/PlayerManager;->access$000(Lcom/jieli/jl_player/PlayerManager;I)V

    goto :goto_0

    .line 151
    :sswitch_3
    iget-object v0, p0, Lcom/jieli/jl_player/PlayerManager$7;->this$0:Lcom/jieli/jl_player/PlayerManager;

    invoke-static {v0, v1}, Lcom/jieli/jl_player/PlayerManager;->access$000(Lcom/jieli/jl_player/PlayerManager;I)V

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x2bd -> :sswitch_1
        0x2be -> :sswitch_2
        0x2bf -> :sswitch_0
    .end sparse-switch
.end method
