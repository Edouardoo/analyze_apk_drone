.class Lcom/hfufo/widget/AvcDecoder$2;
.super Ljava/lang/Object;
.source "AvcDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/AvcDecoder;->startOutputThread()V
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
    .line 311
    iput-object p1, p0, Lcom/hfufo/widget/AvcDecoder$2;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 315
    const-string v1, "MeidaDecodec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Output Thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder$2;->this$0:Lcom/hfufo/widget/AvcDecoder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hfufo/widget/AvcDecoder;->access$602(Lcom/hfufo/widget/AvcDecoder;Z)Z

    .line 317
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder$2;->this$0:Lcom/hfufo/widget/AvcDecoder;

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-static {v1, v2}, Lcom/hfufo/widget/AvcDecoder;->access$102(Lcom/hfufo/widget/AvcDecoder;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaCodec$BufferInfo;

    .line 318
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder$2;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-static {v1}, Lcom/hfufo/widget/AvcDecoder;->access$600(Lcom/hfufo/widget/AvcDecoder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder$2;->this$0:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v1}, Lcom/hfufo/widget/AvcDecoder;->output()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-gez v1, :cond_0

    .line 322
    const-wide/16 v2, 0x5

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 327
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
