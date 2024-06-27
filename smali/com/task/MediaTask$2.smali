.class Lcom/task/MediaTask$2;
.super Ljava/lang/Object;
.source "MediaTask.java"

# interfaces
.implements Lcom/fh/util/ThumbLoader$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/MediaTask;->tryToDownload(Lcom/hfufo/bean/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/MediaTask;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$saveUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/task/MediaTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/MediaTask;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/task/MediaTask$2;->this$0:Lcom/task/MediaTask;

    iput-object p2, p0, Lcom/task/MediaTask$2;->val$saveUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/task/MediaTask$2;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x53

    const/4 v4, 0x0

    .line 324
    if-eqz p1, :cond_2

    .line 325
    iget-object v2, p0, Lcom/task/MediaTask$2;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$200(Lcom/task/MediaTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/task/MediaTask$2;->this$0:Lcom/task/MediaTask;

    invoke-static {v2, v4}, Lcom/task/MediaTask;->access$202(Lcom/task/MediaTask;Z)Z

    .line 327
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/task/MediaTask$2;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const-string v2, "MediaTask"

    const-string v3, "download image failed, delete file success!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/task/MediaTask$2;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/task/MediaTask$2;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 337
    .local v1, "message":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 338
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 339
    iget-object v2, p0, Lcom/task/MediaTask$2;->val$saveUrl:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 340
    iget-object v2, p0, Lcom/task/MediaTask$2;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 346
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/task/MediaTask$2;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    const-string v2, "MediaTask"

    const-string v3, "download image failed, delete file success!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_3
    iget-object v2, p0, Lcom/task/MediaTask$2;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/task/MediaTask$2;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 354
    .restart local v1    # "message":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 355
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 356
    iget-object v2, p0, Lcom/task/MediaTask$2;->val$filename:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    iget-object v2, p0, Lcom/task/MediaTask$2;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
