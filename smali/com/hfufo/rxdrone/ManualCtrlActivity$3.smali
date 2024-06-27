.class Lcom/hfufo/rxdrone/ManualCtrlActivity$3;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
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
    .line 587
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 591
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v1, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downTIme:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downTIme:I

    .line 592
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downTIme:I

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->totalTimeD:I

    if-lt v0, v1, :cond_1

    .line 593
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 594
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MyProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MyProgressBar;->setVisibility(I)V

    .line 595
    const v0, 0x7f0800a7

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 597
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 598
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MyProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downTIme:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MyProgressBar;->setProgress(I)V

    .line 601
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
