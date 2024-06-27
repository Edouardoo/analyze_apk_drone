.class Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;


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
    .line 637
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 640
    invoke-interface {p1}, Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;->getRenderView()Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v4

    iget-object v5, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v5}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 641
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1600(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v4, p3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1102(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 646
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v4, p4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1202(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;I)I

    .line 647
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1300(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 648
    .local v1, "isValidState":Z
    :goto_1
    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v4

    invoke-interface {v4}, Lcom/jieli/jl_player/ijkplayer/IRenderView;->shouldWaitForResize()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_5

    iget-object v4, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v4}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$100(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_5

    :cond_2
    move v0, v2

    .line 649
    .local v0, "hasValidSize":Z
    :goto_2
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 650
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 651
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    iget-object v3, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1000(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->seekTo(I)V

    .line 653
    :cond_3
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v2}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->start()V

    goto :goto_0

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_4
    move v1, v3

    .line 647
    goto :goto_1

    .restart local v1    # "isValidState":Z
    :cond_5
    move v0, v3

    .line 648
    goto :goto_2
.end method

.method public onSurfaceCreated(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;II)V
    .locals 2
    .param p1, "holder"    # Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 659
    invoke-interface {p1}, Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;->getRenderView()Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1600(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0, p1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$2202(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    .line 665
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$800(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$2300(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$2400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 673
    invoke-interface {p1}, Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;->getRenderView()Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$400(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Lcom/jieli/jl_player/ijkplayer/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-static {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$1600(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->access$2202(Lcom/jieli/jl_player/ijkplayer/IjkVideoView;Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;

    .line 682
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/IjkVideoView$9;->this$0:Lcom/jieli/jl_player/ijkplayer/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/jl_player/ijkplayer/IjkVideoView;->releaseWithoutStop()V

    goto :goto_0
.end method
