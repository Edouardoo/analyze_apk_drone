.class public Lcom/lzy/okhttputils/request/ProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;,
        Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;
    }
.end annotation


# instance fields
.field protected countingSink:Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;

.field protected delegate:Lokhttp3/RequestBody;

.field protected listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;)V
    .locals 0
    .param p1, "delegate"    # Lokhttp3/RequestBody;

    .prologue
    .line 23
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    .line 25
    return-void
.end method

.method public constructor <init>(Lokhttp3/RequestBody;Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;)V
    .locals 0
    .param p1, "delegate"    # Lokhttp3/RequestBody;
    .param p2, "listener"    # Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    .prologue
    .line 27
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    .line 29
    iput-object p2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    .line 30
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 50
    :goto_0
    return-wide v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 50
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    .line 34
    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;

    invoke-direct {v1, p0, p1}, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;-><init>(Lcom/lzy/okhttputils/request/ProgressRequestBody;Lokio/Sink;)V

    iput-object v1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->countingSink:Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;

    .line 57
    iget-object v1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->countingSink:Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 58
    .local v0, "bufferedSink":Lokio/BufferedSink;
    iget-object v1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 59
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 60
    return-void
.end method
