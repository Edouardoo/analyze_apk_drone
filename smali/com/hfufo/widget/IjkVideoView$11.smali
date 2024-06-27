.class Lcom/hfufo/widget/IjkVideoView$11;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Lcom/hfufo/widget/media/IRenderView$IRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 801
    invoke-interface {p1}, Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Lcom/hfufo/widget/media/IRenderView;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v5}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 802
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v4, p3}, Lcom/hfufo/widget/IjkVideoView;->access$1302(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 807
    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v4, p4}, Lcom/hfufo/widget/IjkVideoView;->access$1402(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 808
    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v4}, Lcom/hfufo/widget/IjkVideoView;->access$1500(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 809
    .local v1, "isValidState":Z
    :goto_1
    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v4}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v4

    invoke-interface {v4}, Lcom/hfufo/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v4}, Lcom/hfufo/widget/IjkVideoView;->access$000(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_5

    iget-object v4, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v4}, Lcom/hfufo/widget/IjkVideoView;->access$100(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_5

    :cond_2
    move v0, v2

    .line 810
    .local v0, "hasValidSize":Z
    :goto_2
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$1000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 811
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v2}, Lcom/hfufo/widget/IjkVideoView;->access$1200(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 812
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    iget-object v3, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v3}, Lcom/hfufo/widget/IjkVideoView;->access$1200(Lcom/hfufo/widget/IjkVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hfufo/widget/IjkVideoView;->seekTo(I)V

    .line 814
    :cond_3
    iget-object v2, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v2}, Lcom/hfufo/widget/IjkVideoView;->start()V

    goto :goto_0

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_4
    move v1, v3

    .line 808
    goto :goto_1

    .restart local v1    # "isValidState":Z
    :cond_5
    move v0, v3

    .line 809
    goto :goto_2
.end method

.method public onSurfaceCreated(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;II)V
    .locals 2
    .param p1, "holder"    # Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 820
    invoke-interface {p1}, Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0, p1}, Lcom/hfufo/widget/IjkVideoView;->access$2502(Lcom/hfufo/widget/IjkVideoView;Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    .line 826
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hfufo/widget/IjkVideoView;->access$2600(Lcom/hfufo/widget/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$2700(Lcom/hfufo/widget/IjkVideoView;)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 838
    invoke-interface {p1}, Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$400(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->access$2502(Lcom/hfufo/widget/IjkVideoView;Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;

    .line 847
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$11;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->releaseWithoutStop()V

    goto :goto_0
.end method
