.class Lcom/task/MediaTask$3;
.super Ljava/lang/Object;
.source "MediaTask.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/MediaTask;->tryToDelete(Lcom/hfufo/bean/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/MediaTask;

.field final synthetic val$fileInfo:Lcom/hfufo/bean/FileInfo;


# direct methods
.method constructor <init>(Lcom/task/MediaTask;Lcom/hfufo/bean/FileInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/MediaTask;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    iput-object p2, p0, Lcom/task/MediaTask$3;->val$fileInfo:Lcom/hfufo/bean/FileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    const/16 v4, 0x54

    const/4 v3, 0x1

    .line 410
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 411
    iget-object v2, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 413
    .local v0, "message":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 414
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 415
    iget-object v2, p0, Lcom/task/MediaTask$3;->val$fileInfo:Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    iget-object v2, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    iget-object v2, p0, Lcom/task/MediaTask$3;->val$fileInfo:Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "saveUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$300(Lcom/task/MediaTask;)Lcom/fh/hdutil/ScanFilesHelper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    new-instance v3, Lcom/fh/hdutil/ScanFilesHelper;

    iget-object v4, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    invoke-static {v4}, Lcom/task/MediaTask;->access$400(Lcom/task/MediaTask;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fh/hdutil/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/task/MediaTask;->access$302(Lcom/task/MediaTask;Lcom/fh/hdutil/ScanFilesHelper;)Lcom/fh/hdutil/ScanFilesHelper;

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$300(Lcom/task/MediaTask;)Lcom/fh/hdutil/ScanFilesHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fh/hdutil/ScanFilesHelper;->updateToDeleteFile(Ljava/lang/String;)V

    .line 431
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "saveUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    iget-object v2, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 425
    .restart local v0    # "message":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 426
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 427
    iget-object v2, p0, Lcom/task/MediaTask$3;->val$fileInfo:Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v2}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 428
    iget-object v2, p0, Lcom/task/MediaTask$3;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 407
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/task/MediaTask$3;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
