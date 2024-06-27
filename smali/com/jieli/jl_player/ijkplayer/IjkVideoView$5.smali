.class Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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
    .line 507
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 509
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1600(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2, v5}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$602(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 511
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2, v5}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1302(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 512
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IMediaController;

    move-result-object v2

    invoke-interface {v2}, Lcom/jieli/jl_player/ijkplayer/IMediaController;->hide()V

    .line 517
    :cond_0
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 518
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    :cond_1
    :goto_0
    return v6

    .line 528
    :cond_2
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 529
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1900(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 532
    .local v1, "r":Landroid/content/res/Resources;
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_3

    .line 533
    sget v0, Lcom/jieli/jl_player/R$string;->VideoView_error_text_invalid_progressive_playback:I

    .line 538
    .local v0, "messageId":I
    :goto_1
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/jieli/jl_player/R$string;->VideoView_error_button:I

    new-instance v4, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5$1;

    invoke-direct {v4, p0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5$1;-><init>(Lcom/jieli/jl_player/ijkplayer/IjkVideoView$5;)V

    .line 540
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 551
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 552
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 535
    .end local v0    # "messageId":I
    :cond_3
    sget v0, Lcom/jieli/jl_player/R$string;->VideoView_error_text_unknown:I

    .restart local v0    # "messageId":I
    goto :goto_1
.end method
