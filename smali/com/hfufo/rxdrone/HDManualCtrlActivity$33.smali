.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/task/OnRecordStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startRecordJL()V
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
    .line 4914
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4955
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4956
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4957
    invoke-static {p1}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4960
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/task/VideoRecord;)Lcom/task/VideoRecord;

    .line 4961
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4962
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 4963
    return-void
.end method

.method public onPrepared()V
    .locals 3

    .prologue
    .line 4917
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4918
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4919
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-static {v0, v1, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;II)V

    .line 4922
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->saveVideo()V

    .line 4923
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 4924
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 3
    .param p1, "outputPath"    # Ljava/lang/String;

    .prologue
    .line 4929
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4932
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "video/mp4"

    invoke-static {v0, v1, v2}, Lcom/Util/FileUtil;->notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 4934
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput-object p1, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    .line 4937
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4938
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)V

    .line 4944
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    invoke-virtual {v0}, Lcom/videooperate/bean/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4945
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/videooperate/bean/Song;)V

    .line 4950
    :goto_0
    return-void

    .line 4947
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;ZLjava/lang/String;)V

    goto :goto_0
.end method
