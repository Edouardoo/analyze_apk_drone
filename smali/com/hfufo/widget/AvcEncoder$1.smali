.class Lcom/hfufo/widget/AvcEncoder$1;
.super Ljava/lang/Object;
.source "AvcEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/AvcEncoder;->StartEncoderThread__()V
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
    .line 188
    iput-object p1, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/hfufo/widget/AvcEncoder;->access$002(Lcom/hfufo/widget/AvcEncoder;Z)Z

    .line 194
    const-wide/16 v0, 0x0

    .line 196
    .local v0, "start":J
    :goto_0
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3}, Lcom/hfufo/widget/AvcEncoder;->access$000(Lcom/hfufo/widget/AvcEncoder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v3, v3, Lcom/hfufo/widget/AvcEncoder;->cByteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 201
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget v3, v3, Lcom/hfufo/widget/AvcEncoder;->maxSize:I

    new-array v2, v3, [B

    .line 202
    .local v2, "yuv420sp":[B
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v3, v3, Lcom/hfufo/widget/AvcEncoder;->cByteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget v4, v4, Lcom/hfufo/widget/AvcEncoder;->m_width:I

    iget-object v5, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget v5, v5, Lcom/hfufo/widget/AvcEncoder;->m_height:I

    invoke-static {v3, v2, v4, v5}, Lcom/libyuv/util/YuvUtil;->yuvI420ToNV12([B[BII)V

    .line 203
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v3, v3, Lcom/hfufo/widget/AvcEncoder;->BYTEQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v3, "dgptime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8f6c\u6362\u8017\u65f6color11: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v5, v5, Lcom/hfufo/widget/AvcEncoder;->cByteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v2    # "yuv420sp":[B
    :cond_0
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-boolean v3, v3, Lcom/hfufo/widget/AvcEncoder;->canStop:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3}, Lcom/hfufo/widget/AvcEncoder;->access$100(Lcom/hfufo/widget/AvcEncoder;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v3, v3, Lcom/hfufo/widget/AvcEncoder;->cByteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 209
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$1;->this$0:Lcom/hfufo/widget/AvcEncoder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hfufo/widget/AvcEncoder;->access$002(Lcom/hfufo/widget/AvcEncoder;Z)Z

    .line 217
    :cond_1
    return-void

    .line 212
    :cond_2
    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0
.end method
