.class public Lcom/lzy/okhttputils/request/DeleteRequest;
.super Lcom/lzy/okhttputils/request/BaseRequest;
.source "DeleteRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/request/BaseRequest",
        "<",
        "Lcom/lzy/okhttputils/request/DeleteRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;


# instance fields
.field private content:Ljava/lang/String;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "text/plain;charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/request/DeleteRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/request/BaseRequest;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public content(Ljava/lang/String;)Lcom/lzy/okhttputils/request/DeleteRequest;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->content:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/lzy/okhttputils/request/DeleteRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->mediaType:Lokhttp3/MediaType;

    .line 32
    return-object p0
.end method

.method protected generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 3
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .prologue
    .line 45
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 46
    .local v0, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/request/DeleteRequest;->appendHeaders(Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    .line 47
    iget-object v1, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v2, v2, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1, v2}, Lcom/lzy/okhttputils/request/DeleteRequest;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->url:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1
.end method

.method protected generateRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5fc5\u987b\u8bbe\u7f6edelete\u8bf7\u6c42\u7684 content\uff0c\u8bf7\u8c03\u7528content(String content) \u65b9\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/DeleteRequest;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method
