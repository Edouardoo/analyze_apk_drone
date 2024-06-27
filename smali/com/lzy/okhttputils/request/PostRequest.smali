.class public Lcom/lzy/okhttputils/request/PostRequest;
.super Lcom/lzy/okhttputils/request/BaseRequest;
.source "PostRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/request/BaseRequest",
        "<",
        "Lcom/lzy/okhttputils/request/PostRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final MEDIA_TYPE_JSON:Lokhttp3/MediaType;

.field public static final MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

.field public static final MEDIA_TYPE_STREAM:Lokhttp3/MediaType;


# instance fields
.field private bs:[B

.field private json:Ljava/lang/String;

.field private mediaType:Lokhttp3/MediaType;

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "text/plain;charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/request/PostRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    .line 21
    const-string v0, "application/json;charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/request/PostRequest;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    .line 22
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/request/PostRequest;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/request/BaseRequest;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 6
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .prologue
    .line 69
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 71
    .local v1, "requestBuilder":Lokhttp3/Request$Builder;
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okhttputils/request/PostRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    const-string v3, "Content-Length"

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lzy/okhttputils/request/PostRequest;->appendHeaders(Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    .line 76
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okhttputils/request/PostRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okhttputils/request/PostRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    return-object v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected generateRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->string:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/PostRequest;->string:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->json:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/PostRequest;->json:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->bs:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/PostRequest;->bs:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okhttputils/request/PostRequest;->generateMultipartRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0
.end method

.method public mediaType(Lokhttp3/MediaType;)Lcom/lzy/okhttputils/request/PostRequest;
    .locals 0
    .param p1, "mediaType"    # Lokhttp3/MediaType;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    .line 56
    return-object p0
.end method

.method public postBytes([B)Lcom/lzy/okhttputils/request/PostRequest;
    .locals 1
    .param p1, "bs"    # [B

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lzy/okhttputils/request/PostRequest;->bs:[B

    .line 50
    sget-object v0, Lcom/lzy/okhttputils/request/PostRequest;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    .line 51
    return-object p0
.end method

.method public postJson(Ljava/lang/String;)Lcom/lzy/okhttputils/request/PostRequest;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lzy/okhttputils/request/PostRequest;->json:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/lzy/okhttputils/request/PostRequest;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    .line 44
    return-object p0
.end method

.method public postString(Ljava/lang/String;)Lcom/lzy/okhttputils/request/PostRequest;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lzy/okhttputils/request/PostRequest;->string:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/lzy/okhttputils/request/PostRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okhttputils/request/PostRequest;->mediaType:Lokhttp3/MediaType;

    .line 37
    return-object p0
.end method
