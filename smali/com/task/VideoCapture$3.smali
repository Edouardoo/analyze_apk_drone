.class Lcom/task/VideoCapture$3;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/task/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/VideoCapture;


# direct methods
.method constructor <init>(Lcom/task/VideoCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/VideoCapture;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "mediaMeta"    # Lcom/jieli/media/codec/bean/MediaMeta;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$800(Lcom/task/VideoCapture;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Codec success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$900(Lcom/task/VideoCapture;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$1000(Lcom/task/VideoCapture;)Lcom/task/OnVideoCaptureListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$1100(Lcom/task/VideoCapture;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$1000(Lcom/task/VideoCapture;)Lcom/task/OnVideoCaptureListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/task/OnVideoCaptureListener;->onSuccess([BZ)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const/4 v1, 0x1

    .line 281
    .local v1, "result":Z
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$1100(Lcom/task/VideoCapture;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getLocalPhotoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "outPath":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 287
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/task/VideoCapture$3$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/task/VideoCapture$3$1;-><init>(Lcom/task/VideoCapture$3;[BLjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 310
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 312
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/task/VideoCapture;->access$1302(Lcom/task/VideoCapture;Z)Z

    .line 313
    if-eqz v1, :cond_2

    .line 314
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$1000(Lcom/task/VideoCapture;)Lcom/task/OnVideoCaptureListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$1100(Lcom/task/VideoCapture;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$1000(Lcom/task/VideoCapture;)Lcom/task/OnVideoCaptureListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/task/OnVideoCaptureListener;->onCompleted(Ljava/lang/String;)V

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$800(Lcom/task/VideoCapture;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", outPath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    .end local v0    # "outPath":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$100(Lcom/task/VideoCapture;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$000(Lcom/task/VideoCapture;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v2}, Lcom/task/VideoCapture;->access$100(Lcom/task/VideoCapture;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v0}, Lcom/task/VideoCapture;->access$800(Lcom/task/VideoCapture;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codec error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v0}, Lcom/task/VideoCapture;->access$1000(Lcom/task/VideoCapture;)Lcom/task/OnVideoCaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v0}, Lcom/task/VideoCapture;->access$1400(Lcom/task/VideoCapture;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/task/VideoCapture$3$2;

    invoke-direct {v1, p0}, Lcom/task/VideoCapture$3$2;-><init>(Lcom/task/VideoCapture$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    :cond_0
    return-void
.end method
