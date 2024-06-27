.class Lcom/hfufo/widget/IjkVideoView$7;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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
    .line 686
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 688
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0, v3}, Lcom/hfufo/widget/IjkVideoView;->access$802(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 690
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0, v3}, Lcom/hfufo/widget/IjkVideoView;->access$1502(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 691
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1100(Lcom/hfufo/widget/IjkVideoView;)Lcom/hfufo/widget/media/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/hfufo/widget/media/IMediaController;->hide()V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$2000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$2000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v1}, Lcom/hfufo/widget/IjkVideoView;->access$1000(Lcom/hfufo/widget/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    :cond_1
    :goto_0
    return v4

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$7;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0}, Lcom/hfufo/widget/IjkVideoView;->access$1800(Lcom/hfufo/widget/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Open failed"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
