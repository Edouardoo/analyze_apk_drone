.class Lcom/hfufo/rxdrone/ManualCtrlActivity$28;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->setMode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 3805
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_delete_dialog_listener(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3808
    if-eqz p1, :cond_4

    .line 3809
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3810
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    .line 3812
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3813
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initOpencvMode(I)V

    .line 3815
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/RectView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 3817
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    .line 3818
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3819
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11600(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V

    .line 3821
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3822
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11700(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V

    .line 3824
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3825
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11800(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V

    .line 3827
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    .line 3828
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 3829
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8402(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 3831
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12102(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 3832
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$9002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 3834
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    .line 3835
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3836
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3837
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3839
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3840
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3842
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3844
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v0, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initOpencvMode(I)V

    .line 3845
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$12900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3850
    :goto_0
    return-void

    .line 3848
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto :goto_0
.end method
