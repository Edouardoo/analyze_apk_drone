.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/widget/AvcEncoder$H264CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initRecord()V
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
    .line 4977
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 5041
    const v0, 0x7f080053

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 5042
    return-void
.end method

.method public onFrame([B)V
    .locals 1
    .param p1, "keyframe"    # [B

    .prologue
    .line 4981
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4982
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4985
    :cond_0
    return-void
.end method

.method public onRate()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 4989
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    .line 4990
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;J)J

    .line 4993
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 4994
    .local v0, "a":J
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 4995
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;J)J

    .line 4996
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 4997
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcEncoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/widget/AvcEncoder;->setDoubles()V

    .line 4998
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;J)J

    .line 4999
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 5001
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;J)J

    .line 5002
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v8, v9}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;J)J

    .line 5007
    :cond_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;J)J

    .line 5008
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "outputPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 5014
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput-object p1, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    .line 5015
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    if-nez v0, :cond_0

    .line 5016
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34$1;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5024
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5025
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5028
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5029
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 5030
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    invoke-virtual {v0}, Lcom/videooperate/bean/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5032
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5037
    :goto_0
    return-void

    .line 5034
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v2, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;ZLjava/lang/String;)V

    goto :goto_0
.end method
