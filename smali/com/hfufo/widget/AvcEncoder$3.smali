.class Lcom/hfufo/widget/AvcEncoder$3;
.super Ljava/lang/Object;
.source "AvcEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/AvcEncoder;->StartEncoderThread()V
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
    .line 268
    iput-object p1, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 273
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iput-boolean v6, v3, Lcom/hfufo/widget/AvcEncoder;->encodecRuning:Z

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, "input":[B
    const-wide/16 v4, 0x0

    .line 276
    .local v4, "start":J
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iput-wide v8, v3, Lcom/hfufo/widget/AvcEncoder;->pts:J

    .line 277
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iput-wide v8, v3, Lcom/hfufo/widget/AvcEncoder;->generateIndex:J

    .line 278
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iput-boolean v6, v3, Lcom/hfufo/widget/AvcEncoder;->failed:Z

    .line 280
    :goto_0
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-boolean v3, v3, Lcom/hfufo/widget/AvcEncoder;->encodecRuning:Z

    if-eqz v3, :cond_4

    .line 282
    const/4 v2, 0x0

    .line 283
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v3, v3, Lcom/hfufo/widget/AvcEncoder;->BYTEQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 284
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iput-boolean v10, v3, Lcom/hfufo/widget/AvcEncoder;->failed:Z

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 292
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v3, v3, Lcom/hfufo/widget/AvcEncoder;->BYTEQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "input":[B
    check-cast v2, [B

    .line 331
    .restart local v2    # "input":[B
    :cond_0
    if-eqz v2, :cond_5

    .line 332
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3, v2}, Lcom/hfufo/widget/AvcEncoder;->access$600(Lcom/hfufo/widget/AvcEncoder;[B)V

    .line 333
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3}, Lcom/hfufo/widget/AvcEncoder;->access$700(Lcom/hfufo/widget/AvcEncoder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3, v10}, Lcom/hfufo/widget/AvcEncoder;->access$702(Lcom/hfufo/widget/AvcEncoder;Z)Z

    .line 336
    array-length v3, v2

    new-array v0, v3, [B

    .line 337
    .local v0, "arr":[B
    array-length v3, v2

    invoke-static {v2, v10, v0, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3, v0}, Lcom/hfufo/widget/AvcEncoder;->access$600(Lcom/hfufo/widget/AvcEncoder;[B)V

    .line 339
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3}, Lcom/hfufo/widget/AvcEncoder;->access$800(Lcom/hfufo/widget/AvcEncoder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3, v10}, Lcom/hfufo/widget/AvcEncoder;->access$802(Lcom/hfufo/widget/AvcEncoder;Z)Z

    .line 342
    array-length v3, v2

    new-array v1, v3, [B

    .line 343
    .local v1, "arr1":[B
    array-length v3, v2

    invoke-static {v2, v10, v1, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3, v1}, Lcom/hfufo/widget/AvcEncoder;->access$600(Lcom/hfufo/widget/AvcEncoder;[B)V

    .line 356
    .end local v0    # "arr":[B
    .end local v1    # "arr1":[B
    :cond_1
    :goto_1
    const-string v3, "dgptime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8f6c\u6362\u8017\u65f611: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",Size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-object v7, v7, Lcom/hfufo/widget/AvcEncoder;->BYTEQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :cond_2
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-boolean v3, v3, Lcom/hfufo/widget/AvcEncoder;->canStop:Z

    if-eqz v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3}, Lcom/hfufo/widget/AvcEncoder;->access$000(Lcom/hfufo/widget/AvcEncoder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iput-boolean v10, v3, Lcom/hfufo/widget/AvcEncoder;->encodecRuning:Z

    .line 310
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iput-boolean v10, v3, Lcom/hfufo/widget/AvcEncoder;->canStop:Z

    .line 312
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-boolean v3, v3, Lcom/hfufo/widget/AvcEncoder;->isJPEG:Z

    if-eqz v3, :cond_3

    .line 313
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3}, Lcom/hfufo/widget/AvcEncoder;->access$200(Lcom/hfufo/widget/AvcEncoder;)V

    .line 316
    :cond_3
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3}, Lcom/hfufo/widget/AvcEncoder;->access$300(Lcom/hfufo/widget/AvcEncoder;)V

    .line 317
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    iget-boolean v3, v3, Lcom/hfufo/widget/AvcEncoder;->failed:Z

    if-nez v3, :cond_4

    .line 318
    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v3}, Lcom/hfufo/widget/AvcEncoder;->access$500(Lcom/hfufo/widget/AvcEncoder;)Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    move-result-object v3

    iget-object v6, p0, Lcom/hfufo/widget/AvcEncoder$3;->this$0:Lcom/hfufo/widget/AvcEncoder;

    invoke-static {v6}, Lcom/hfufo/widget/AvcEncoder;->access$400(Lcom/hfufo/widget/AvcEncoder;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/hfufo/widget/AvcEncoder$H264CallBack;->onSuccess(Ljava/lang/String;)V

    .line 359
    :cond_4
    return-void

    .line 349
    :cond_5
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1
.end method
