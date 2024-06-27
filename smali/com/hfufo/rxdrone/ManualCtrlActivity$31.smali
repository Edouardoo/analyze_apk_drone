.class Lcom/hfufo/rxdrone/ManualCtrlActivity$31;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/widget/AvcEncoder$H264CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->takeVideo(Landroid/view/View;)V
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
    .line 4444
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 4478
    const-string v0, "Save failed"

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4479
    return-void
.end method

.method public onFrame([B)V
    .locals 0
    .param p1, "keyframe"    # [B

    .prologue
    .line 4448
    return-void
.end method

.method public onRate()V
    .locals 0

    .prologue
    .line 4453
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "outputPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 4457
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iput-object p1, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    .line 4458
    const-string v0, "rxffmpeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4459
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->selectedMusic:Z

    if-nez v0, :cond_0

    .line 4460
    const v0, 0x7f0800a7

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 4463
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4465
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->selectedMusic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    invoke-virtual {v0}, Lcom/videooperate/bean/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4467
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 4468
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1c

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4474
    :goto_0
    return-void

    .line 4471
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v3, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13300(Lcom/hfufo/rxdrone/ManualCtrlActivity;ZLjava/lang/String;)V

    .line 4472
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$13202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto :goto_0
.end method
