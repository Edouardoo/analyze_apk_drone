.class public final Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttputils/request/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CountingSink"
.end annotation


# instance fields
.field private bytesWritten:J

.field private contentLength:J

.field private lastRefreshUiTime:J

.field private lastWriteBytes:J

.field final synthetic this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;


# direct methods
.method public constructor <init>(Lcom/lzy/okhttputils/request/ProgressRequestBody;Lokio/Sink;)V
    .locals 2
    .param p1, "this$0"    # Lcom/lzy/okhttputils/request/ProgressRequestBody;
    .param p2, "delegate"    # Lokio/Sink;

    .prologue
    const-wide/16 v0, 0x0

    .line 69
    iput-object p1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;

    .line 70
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 64
    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 65
    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    .line 71
    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 14
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-super/range {p0 .. p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 76
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/ProgressRequestBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    .line 77
    :cond_0
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    add-long v0, v0, p2

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 81
    .local v8, "curTime":J
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 83
    :cond_1
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0x3e8

    div-long v12, v0, v2

    .line 84
    .local v12, "diffTime":J
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x1

    add-long/2addr v12, v0

    .line 85
    :cond_2
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    sub-long v10, v0, v2

    .line 86
    .local v10, "diffBytes":J
    div-long v6, v10, v12

    .line 87
    .local v6, "networkSpeed":J
    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;

    iget-object v1, v0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v4, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    invoke-interface/range {v1 .. v7}, Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;->onRequestProgress(JJJ)V

    .line 89
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    .line 90
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    .line 92
    .end local v6    # "networkSpeed":J
    .end local v10    # "diffBytes":J
    .end local v12    # "diffTime":J
    :cond_4
    return-void
.end method
