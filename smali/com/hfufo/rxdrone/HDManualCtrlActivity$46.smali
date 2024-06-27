.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setMode(Landroid/view/View;)V
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
    .line 6633
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_delete_dialog_listener(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 6636
    if-eqz p1, :cond_2

    .line 6637
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6638
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 6640
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6643
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/RectView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 6645
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6646
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6647
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 6649
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6653
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 6654
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 6655
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 6657
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 6659
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 6660
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 6663
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6665
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6666
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6668
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6671
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initOpencvMode(I)V

    .line 6672
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 6673
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 6674
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6675
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6677
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$15600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 6681
    :goto_0
    return-void

    .line 6679
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto :goto_0
.end method
