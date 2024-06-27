.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/dialog/EditDialog$OnclickListener;


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
    .line 8540
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoClick()V
    .locals 2

    .prologue
    .line 8544
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 8545
    return-void
.end method

.method public onYesClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 8549
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8550
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8551
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 8552
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8553
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 8554
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoCapture;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/task/VideoCapture;->setPano(Z)V

    .line 8555
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8556
    const-string p1, "25"

    .line 8559
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, 0x96

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 8560
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8561
    const-string v0, "\u65e0\u4eba\u673a\u6cbf\u6c34\u5e73\u65b9\u5411\u81ea\u52a8\u8f6c\u5411\uff0c\u8bf7\u4e0d\u8981\u64cd\u63a7\u65e0\u4eba\u673a"

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 8562
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    .line 8570
    :goto_0
    const-string v0, "ggppptime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onYesClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8571
    return-void

    .line 8565
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoCapture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8566
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoCapture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/task/VideoCapture;->setPano(Z)V

    .line 8568
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/opencvstitcher/OpencvStitcher;

    invoke-static {}, Lcom/opencvstitcher/OpencvStitcher;->stitchImageRelease()V

    goto :goto_0
.end method
