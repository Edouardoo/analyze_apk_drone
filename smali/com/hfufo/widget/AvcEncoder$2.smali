.class Lcom/hfufo/widget/AvcEncoder$2;
.super Ljava/lang/Object;
.source "AvcEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/AvcEncoder;->StartEncoderThread_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/AvcEncoder;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/AvcEncoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/AvcEncoder;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 229
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/hfufo/widget/AvcEncoder;->access$102(Lcom/hfufo/widget/AvcEncoder;Z)Z

    .line 230
    const-wide/16 v2, 0x0

    .line 232
    .local v2, "start":J
    :goto_0
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v4}, Lcom/hfufo/widget/AvcEncoder;->access$100(Lcom/hfufo/widget/AvcEncoder;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v4, v4, Lcom/hfufo/widget/AvcEncoder;->MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 236
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 237
    .local v1, "result":Lorg/opencv/core/Mat;
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v4, v4, Lcom/hfufo/widget/AvcEncoder;->MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/opencv/core/Mat;

    const/16 v5, 0x7f

    invoke-static {v4, v1, v5}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 238
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget v4, v4, Lcom/hfufo/widget/AvcEncoder;->maxSize:I

    new-array v0, v4, [B

    .line 239
    .local v0, "data_result":[B
    invoke-virtual {v1, v8, v8, v0}, Lorg/opencv/core/Mat;->get(II[B)I

    .line 240
    const-string v4, "dgptime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8f6c\u6362\u8017\u65f6color00: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v4, v4, Lcom/hfufo/widget/AvcEncoder;->cByteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v0    # "data_result":[B
    .end local v1    # "result":Lorg/opencv/core/Mat;
    :cond_0
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-boolean v4, v4, Lcom/hfufo/widget/AvcEncoder;->canStop:Z

    if-eqz v4, :cond_2

    .line 250
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v4, v4, Lcom/hfufo/widget/AvcEncoder;->MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 251
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$2;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v4, v8}, Lcom/hfufo/widget/AvcEncoder;->access$102(Lcom/hfufo/widget/AvcEncoder;Z)Z

    .line 259
    :cond_1
    return-void

    .line 254
    :cond_2
    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
