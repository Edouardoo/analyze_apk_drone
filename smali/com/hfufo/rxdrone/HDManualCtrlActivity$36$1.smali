.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    .prologue
    .line 5352
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 5355
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5356
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    .line 5357
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    .line 5358
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->getRenderView()Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    invoke-interface {v0}, Lcom/hfufo/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5366
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    .line 5369
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->invalidate()V

    .line 5372
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->invalidate()V

    .line 5374
    return-void

    .line 5360
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    .line 5361
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    .line 5362
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->getRenderView()Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    invoke-interface {v0}, Lcom/hfufo/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
