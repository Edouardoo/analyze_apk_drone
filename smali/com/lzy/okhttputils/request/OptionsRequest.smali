.class public Lcom/lzy/okhttputils/request/OptionsRequest;
.super Lcom/lzy/okhttputils/request/BaseRequest;
.source "OptionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/request/BaseRequest",
        "<",
        "Lcom/lzy/okhttputils/request/OptionsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/request/BaseRequest;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 6
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .prologue
    .line 40
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 42
    .local v1, "requestBuilder":Lokhttp3/Request$Builder;
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okhttputils/request/OptionsRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    const-string v3, "Content-Length"

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lzy/okhttputils/request/OptionsRequest;->appendHeaders(Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    .line 47
    const-string v2, "OPTIONS"

    invoke-virtual {v1, v2, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okhttputils/request/OptionsRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okhttputils/request/OptionsRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    return-object v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected generateRequestBody()Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzy/okhttputils/request/OptionsRequest;->requestBody:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/OptionsRequest;->requestBody:Lokhttp3/RequestBody;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okhttputils/request/OptionsRequest;->generateMultipartRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0
.end method

.method public requestBody(Lokhttp3/RequestBody;)Lcom/lzy/okhttputils/request/OptionsRequest;
    .locals 0
    .param p1, "requestBody"    # Lokhttp3/RequestBody;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lzy/okhttputils/request/OptionsRequest;->requestBody:Lokhttp3/RequestBody;

    .line 29
    return-object p0
.end method
