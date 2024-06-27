.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;
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
    .line 3851
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1e

    .line 3854
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording:Z

    .line 3855
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-boolean v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording:Z

    if-eqz v2, :cond_7

    .line 3857
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3858
    const-string v2, "123456"

    const-string v3, "save_: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3859
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-lt v2, v5, :cond_6

    .line 3860
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_6

    .line 3861
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3862
    const-string v2, "123456"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save_video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v3

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget v4, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->type_video:I

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v4, v2}, Lcom/task/VideoRecord;->write(I[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3869
    const-string v2, "HDManualCtrlActivityTAG"

    const-string v3, "Write video failed33"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3882
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3884
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 3890
    :cond_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v3

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget v4, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->type_video:I

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v4, v2}, Lcom/task/VideoRecord;->write(I[B)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3891
    const-string v2, "HDManualCtrlActivityTAG"

    const-string v3, "Write video failed11"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    :cond_4
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3877
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3878
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput-boolean v6, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording:Z

    .line 3879
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 3894
    :cond_5
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput-boolean v6, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording:Z

    .line 3896
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3915
    :cond_6
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-ge v2, v5, :cond_0

    .line 3918
    const-wide/16 v2, 0x1c2

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3919
    :catch_0
    move-exception v0

    .line 3920
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3924
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_7
    return-void
.end method
