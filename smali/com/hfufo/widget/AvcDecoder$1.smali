.class Lcom/hfufo/widget/AvcDecoder$1;
.super Ljava/lang/Object;
.source "AvcDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/AvcDecoder;->startDecoderThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/AvcDecoder;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/AvcDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/AvcDecoder;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 267
    const-string v0, "MeidaDecodec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoder Thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/hfufo/widget/AvcDecoder;->access$002(Lcom/hfufo/widget/AvcDecoder;Z)Z

    .line 269
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-static {v0, v3}, Lcom/hfufo/widget/AvcDecoder;->access$102(Lcom/hfufo/widget/AvcDecoder;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaCodec$BufferInfo;

    .line 270
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v0}, Lcom/hfufo/widget/AvcDecoder;->access$000(Lcom/hfufo/widget/AvcDecoder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v0}, Lcom/hfufo/widget/AvcDecoder;->access$200(Lcom/hfufo/widget/AvcDecoder;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v0}, Lcom/hfufo/widget/AvcDecoder;->access$400(Lcom/hfufo/widget/AvcDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    iget-object v3, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v3}, Lcom/hfufo/widget/AvcDecoder;->access$300(Lcom/hfufo/widget/AvcDecoder;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 274
    .local v1, "index":I
    const-string v0, "MeidaDecodec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoder Thread: frameList.not Empty index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-ltz v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v0}, Lcom/hfufo/widget/AvcDecoder;->access$200(Lcom/hfufo/widget/AvcDecoder;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 277
    .local v7, "aFrame":[B
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v0}, Lcom/hfufo/widget/AvcDecoder;->access$400(Lcom/hfufo/widget/AvcDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 278
    .local v9, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 279
    array-length v0, v7

    invoke-virtual {v9, v7, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 280
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v0}, Lcom/hfufo/widget/AvcDecoder;->access$400(Lcom/hfufo/widget/AvcDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    array-length v3, v7

    iget-object v4, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v4}, Lcom/hfufo/widget/AvcDecoder;->access$300(Lcom/hfufo/widget/AvcDecoder;)I

    move-result v4

    int-to-long v4, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 291
    .end local v1    # "index":I
    .end local v7    # "aFrame":[B
    .end local v9    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    const-string v0, "MeidaDecodec"

    const-string v3, "Decoder Thread: frameList.isEmpty"

    invoke-static {v0, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-wide/16 v4, 0xf

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v8

    .line 295
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder$1;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v0}, Lcom/hfufo/widget/AvcDecoder;->access$500(Lcom/hfufo/widget/AvcDecoder;)V

    .line 300
    return-void
.end method
