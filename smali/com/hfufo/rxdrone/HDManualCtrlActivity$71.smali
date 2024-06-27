.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/dialog/RenderDialog$FilterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onClick(Landroid/view/View;)V
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
    .line 8647
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilteSuccess(I)V
    .locals 2
    .param p1, "filterNum"    # I

    .prologue
    .line 8651
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 8652
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 8653
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 8657
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setFilter(I)V

    .line 8658
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setFilter(I)V

    .line 8661
    return-void

    .line 8655
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onSplitSuccess(I)V
    .locals 1
    .param p1, "splitNum"    # I

    .prologue
    .line 8665
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 8666
    return-void
.end method
