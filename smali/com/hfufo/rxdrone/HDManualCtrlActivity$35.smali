.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 5110
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5114
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget v1, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downTIme:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downTIme:I

    .line 5115
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downTIme:I

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->totalTimeD:I

    if-lt v0, v1, :cond_2

    .line 5116
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5117
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/MyProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MyProgressBar;->setVisibility(I)V

    .line 5118
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5119
    const v0, 0x7f0800a7

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 5121
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5122
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5130
    :cond_1
    :goto_0
    return-void

    .line 5124
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/MyProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downTIme:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MyProgressBar;->setProgress(I)V

    .line 5125
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5126
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
