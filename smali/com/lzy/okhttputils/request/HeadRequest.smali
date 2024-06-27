.class public Lcom/lzy/okhttputils/request/HeadRequest;
.super Lcom/lzy/okhttputils/request/BaseRequest;
.source "HeadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/request/BaseRequest",
        "<",
        "Lcom/lzy/okhttputils/request/HeadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/request/BaseRequest;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 3
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .prologue
    .line 28
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 29
    .local v0, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/request/HeadRequest;->appendHeaders(Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    .line 30
    iget-object v1, p0, Lcom/lzy/okhttputils/request/HeadRequest;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/HeadRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v2, v2, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1, v2}, Lcom/lzy/okhttputils/request/HeadRequest;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okhttputils/request/HeadRequest;->url:Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okhttputils/request/HeadRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okhttputils/request/HeadRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1
.end method

.method protected generateRequestBody()Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
