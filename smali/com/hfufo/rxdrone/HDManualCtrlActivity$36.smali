.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/widget/media/IMediaController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 5327
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 5330
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 5334
    const/4 v0, 0x1

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5340
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v3, 0x8

    .line 5344
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5345
    if-eqz p1, :cond_1

    .line 5346
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLoadingView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 5347
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5350
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5380
    :cond_1
    :goto_0
    return-void

    .line 5352
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Landroid/widget/MediaController$MediaPlayerControl;

    .prologue
    .line 5385
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 5394
    return-void
.end method

.method public show(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 5389
    return-void
.end method

.method public showOnce(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5399
    return-void
.end method
