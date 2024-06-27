.class public abstract Lcom/lzy/okhttputils/request/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/lzy/okhttputils/request/BaseRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected cacheKey:Ljava/lang/String;

.field private cacheManager:Lcom/lzy/okhttputils/cache/CacheManager;

.field protected cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

.field protected cacheTime:J

.field protected certificates:[Ljava/io/InputStream;

.field protected connectTimeout:J

.field protected headers:Lcom/lzy/okhttputils/model/HttpHeaders;

.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpUrl:Lokhttp3/HttpUrl;

.field protected interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

.field protected params:Lcom/lzy/okhttputils/model/HttpParams;

.field protected readTimeOut:J

.field protected tag:Ljava/lang/Object;

.field protected url:Ljava/lang/String;

.field protected userCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field protected writeTimeOut:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    .line 62
    new-instance v1, Lcom/lzy/okhttputils/model/HttpParams;

    invoke-direct {v1}, Lcom/lzy/okhttputils/model/HttpParams;-><init>()V

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    .line 63
    new-instance v1, Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-direct {v1}, Lcom/lzy/okhttputils/model/HttpHeaders;-><init>()V

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->interceptors:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->url:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->httpUrl:Lokhttp3/HttpUrl;

    .line 74
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    .line 75
    .local v0, "okHttpUtils":Lcom/lzy/okhttputils/OkHttpUtils;
    sget-object v1, Lcom/lzy/okhttputils/cache/CacheManager;->INSTANCE:Lcom/lzy/okhttputils/cache/CacheManager;

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheManager:Lcom/lzy/okhttputils/cache/CacheManager;

    .line 77
    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCommonParams()Lcom/lzy/okhttputils/model/HttpParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCommonParams()Lcom/lzy/okhttputils/model/HttpParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Lcom/lzy/okhttputils/model/HttpParams;)V

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCommonHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCommonHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Lcom/lzy/okhttputils/model/HttpHeaders;)V

    .line 80
    :cond_1
    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCacheMode()Lcom/lzy/okhttputils/cache/CacheMode;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCacheMode()Lcom/lzy/okhttputils/cache/CacheMode;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    .line 81
    :cond_2
    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCacheTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lzy/okhttputils/request/BaseRequest;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/lzy/okhttputils/request/BaseRequest;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lokhttp3/Call;
    .param p3, "x3"    # Lokhttp3/Response;
    .param p4, "x4"    # Ljava/lang/Exception;
    .param p5, "x5"    # Lcom/lzy/okhttputils/callback/AbsCallback;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lzy/okhttputils/request/BaseRequest;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/lzy/okhttputils/request/BaseRequest;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lokhttp3/Call;
    .param p4, "x4"    # Lokhttp3/Response;
    .param p5, "x5"    # Lcom/lzy/okhttputils/callback/AbsCallback;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lzy/okhttputils/request/BaseRequest;Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/lzy/okhttputils/request/BaseRequest;
    .param p1, "x1"    # Lokhttp3/Headers;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lzy/okhttputils/request/BaseRequest;->handleCache(Lokhttp3/Headers;Ljava/lang/Object;)V

    return-void
.end method

.method private handleCache(Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 3
    .param p1, "headers"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Headers;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v2, Lcom/lzy/okhttputils/cache/CacheMode;->NO_CACHE:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v1, v2, :cond_0

    .line 509
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, Lcom/lzy/okhttputils/utils/HeaderParser;->createCacheEntity(Lokhttp3/Headers;Ljava/lang/Object;Lcom/lzy/okhttputils/cache/CacheMode;Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;

    move-result-object v0

    .line 502
    .local v0, "cache":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    if-nez v0, :cond_1

    .line 504
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheManager:Lcom/lzy/okhttputils/cache/CacheManager;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lzy/okhttputils/cache/CacheManager;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheManager:Lcom/lzy/okhttputils/cache/CacheManager;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/lzy/okhttputils/cache/CacheManager;->replace(Ljava/lang/String;Lcom/lzy/okhttputils/cache/CacheEntity;)Lcom/lzy/okhttputils/cache/CacheEntity;

    goto :goto_0
.end method

.method private sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 10
    .param p1, "isFromCache"    # Z
    .param p2, "call"    # Lokhttp3/Call;
    .param p3, "response"    # Lokhttp3/Response;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Ljava/lang/Exception;",
            "Lcom/lzy/okhttputils/callback/AbsCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    .local p5, "callback":Lcom/lzy/okhttputils/callback/AbsCallback;, "Lcom/lzy/okhttputils/callback/AbsCallback<TT;>;"
    const/4 v8, 0x1

    .line 516
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getDelivery()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/lzy/okhttputils/request/BaseRequest$3;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/lzy/okhttputils/request/BaseRequest$3;-><init>(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/callback/AbsCallback;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheManager:Lcom/lzy/okhttputils/cache/CacheManager;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/cache/CacheManager;->get(Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;

    move-result-object v9

    .line 527
    .local v9, "cacheEntity":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    if-eqz v9, :cond_1

    .line 528
    invoke-virtual {v9}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    .local v2, "data":Ljava/lang/Object;, "TT;"
    move-object v0, p0

    move v1, v8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .line 529
    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 534
    .end local v2    # "data":Ljava/lang/Object;, "TT;"
    .end local v9    # "cacheEntity":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 531
    .restart local v9    # "cacheEntity":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v0, "\u8bf7\u6c42\u7f51\u7edc\u5931\u8d25\u540e\uff0c\u65e0\u6cd5\u8bfb\u53d6\u7f13\u5b58\u6216\u8005\u7f13\u5b58\u4e0d\u5b58\u5728\uff01"

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    move v4, v8

    move-object v5, p2

    move-object v6, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_0
.end method

.method private sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 8
    .param p1, "isFromCache"    # Z
    .param p3, "call"    # Lokhttp3/Call;
    .param p4, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Lcom/lzy/okhttputils/callback/AbsCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    .local p5, "callback":Lcom/lzy/okhttputils/callback/AbsCallback;, "Lcom/lzy/okhttputils/callback/AbsCallback<TT;>;"
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getDelivery()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/lzy/okhttputils/request/BaseRequest$4;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/lzy/okhttputils/request/BaseRequest$4;-><init>(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/callback/AbsCallback;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 546
    return-void
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    new-instance v0, Lokhttp3/Cookie$Builder;

    invoke-direct {v0}, Lokhttp3/Cookie$Builder;-><init>()V

    .line 227
    .local v0, "builder":Lokhttp3/Cookie$Builder;
    invoke-virtual {v0, p1}, Lokhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lokhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest;->httpUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Cookie$Builder;->build()Lokhttp3/Cookie;

    move-result-object v1

    .line 228
    .local v1, "cookie":Lokhttp3/Cookie;
    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-object p0
.end method

.method public addCookie(Lokhttp3/Cookie;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "cookie"    # Lokhttp3/Cookie;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Cookie;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-object p0
.end method

.method public addCookies(Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    return-object p0
.end method

.method public addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->putFileParams(Ljava/lang/String;Ljava/util/List;)V

    .line 191
    return-object p0
.end method

.method public addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    .local p2, "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V

    .line 197
    return-object p0
.end method

.method public addInterceptor(Lokhttp3/Interceptor;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "interceptor"    # Lokhttp3/Interceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Interceptor;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-object p0
.end method

.method public addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->putUrlParams(Ljava/lang/String;Ljava/util/List;)V

    .line 179
    return-object p0
.end method

.method protected appendHeaders(Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;
    .locals 5
    .param p1, "requestBuilder"    # Lokhttp3/Request$Builder;

    .prologue
    .line 308
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 309
    .local v0, "headerBuilder":Lokhttp3/Headers$Builder;
    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    iget-object v1, v3, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 310
    .local v1, "headerMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    :goto_0
    return-object p1

    .line 311
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    .line 314
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {p1, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    goto :goto_0
.end method

.method public cacheKey(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public cacheMode(Lcom/lzy/okhttputils/cache/CacheMode;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .param p1, "cacheMode"    # Lcom/lzy/okhttputils/cache/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    .line 117
    return-object p0
.end method

.method public cacheTime(J)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 3
    .param p1, "cacheTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, -0x1

    .line 130
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    .line 131
    return-object p0
.end method

.method public connTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "connTimeOut"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-wide p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->connectTimeout:J

    .line 111
    return-object p0
.end method

.method protected createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const/16 v6, 0x26

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gtz v6, :cond_0

    const/16 v6, 0x3f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    :cond_0
    const-string v6, "&"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 292
    .local v2, "urlParams":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 293
    .local v4, "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 294
    .local v5, "value":Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "urlValue":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "&"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "urlParams":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "urlValue":Ljava/lang/String;
    .end local v4    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local p1    # "url":Ljava/lang/String;
    :goto_2
    return-object p1

    .line 290
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_2
.end method

.method public execute()Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    const/4 v3, 0x0

    .line 401
    invoke-static {p0, v3, v3}, Lcom/lzy/okhttputils/utils/HeaderParser;->addDefaultHeaders(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;Lcom/lzy/okhttputils/cache/CacheMode;)V

    .line 404
    invoke-virtual {p0}, Lcom/lzy/okhttputils/request/BaseRequest;->generateRequestBody()Lokhttp3/RequestBody;

    move-result-object v2

    .line 405
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0, v2}, Lcom/lzy/okhttputils/request/BaseRequest;->wrapRequestBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzy/okhttputils/request/BaseRequest;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v1

    .line 406
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {p0, v1}, Lcom/lzy/okhttputils/request/BaseRequest;->generateCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 407
    .local v0, "call":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    return-object v3
.end method

.method public execute(Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okhttputils/callback/AbsCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    .local p1, "callback":Lcom/lzy/okhttputils/callback/AbsCallback;, "Lcom/lzy/okhttputils/callback/AbsCallback<TT;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 413
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    .line 414
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    if-nez v1, :cond_0

    sget-object v1, Lcom/lzy/okhttputils/callback/AbsCallback;->CALLBACK_DEFAULT:Lcom/lzy/okhttputils/callback/AbsCallback;

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v2, v2, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1, v2}, Lcom/lzy/okhttputils/request/BaseRequest;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    if-nez v1, :cond_2

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheManager:Lcom/lzy/okhttputils/cache/CacheManager;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lzy/okhttputils/cache/CacheManager;->get(Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;

    move-result-object v0

    .line 421
    .local v0, "cacheEntity":Lcom/lzy/okhttputils/cache/CacheEntity;, "Lcom/lzy/okhttputils/cache/CacheEntity<TT;>;"
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/lzy/okhttputils/cache/CacheEntity;->checkExpire(Lcom/lzy/okhttputils/cache/CacheMode;JJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    invoke-virtual {v0, v7}, Lcom/lzy/okhttputils/cache/CacheEntity;->setExpire(Z)V

    .line 424
    :cond_3
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    invoke-static {p0, v0, v1}, Lcom/lzy/okhttputils/utils/HeaderParser;->addDefaultHeaders(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;Lcom/lzy/okhttputils/cache/CacheMode;)V

    .line 426
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    invoke-virtual {v1, p0}, Lcom/lzy/okhttputils/callback/AbsCallback;->onBefore(Lcom/lzy/okhttputils/request/BaseRequest;)V

    .line 428
    invoke-virtual {p0}, Lcom/lzy/okhttputils/request/BaseRequest;->generateRequestBody()Lokhttp3/RequestBody;

    move-result-object v12

    .line 429
    .local v12, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0, v12}, Lcom/lzy/okhttputils/request/BaseRequest;->wrapRequestBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lzy/okhttputils/request/BaseRequest;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v11

    .line 430
    .local v11, "request":Lokhttp3/Request;
    invoke-virtual {p0, v11}, Lcom/lzy/okhttputils/request/BaseRequest;->generateCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    .line 432
    .local v4, "call":Lokhttp3/Call;
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v2, Lcom/lzy/okhttputils/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v1, v2, :cond_6

    .line 434
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->isExpire()Z

    move-result v1

    if-nez v1, :cond_4

    .line 435
    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v3

    .line 436
    .local v3, "data":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v1, p0

    move v2, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 488
    .end local v3    # "data":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 439
    :cond_4
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v1, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-direct {v9, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v5, p0

    move v6, v7

    move-object v7, v4

    invoke-direct/range {v5 .. v10}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 451
    :cond_5
    :goto_1
    new-instance v1, Lcom/lzy/okhttputils/request/BaseRequest$2;

    invoke-direct {v1, p0, v0}, Lcom/lzy/okhttputils/request/BaseRequest$2;-><init>(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;)V

    invoke-interface {v4, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0

    .line 441
    :cond_6
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v2, Lcom/lzy/okhttputils/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v1, v2, :cond_5

    .line 443
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->isExpire()Z

    move-result v1

    if-nez v1, :cond_7

    .line 444
    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v3

    .line 445
    .restart local v3    # "data":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v1, p0

    move v2, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_1

    .line 447
    .end local v3    # "data":Ljava/lang/Object;, "TT;"
    :cond_7
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v1, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-direct {v9, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v5, p0

    move v6, v7

    move-object v7, v4

    invoke-direct/range {v5 .. v10}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_1
.end method

.method protected generateCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 8
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 379
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->readTimeOut:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->writeTimeOut:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->connectTimeout:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->certificates:[Ljava/io/InputStream;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 380
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzy/okhttputils/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    .line 394
    :goto_0
    return-object v2

    .line 382
    :cond_0
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzy/okhttputils/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 383
    .local v1, "newClientBuilder":Lokhttp3/OkHttpClient$Builder;
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->readTimeOut:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->readTimeOut:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 384
    :cond_1
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->writeTimeOut:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->writeTimeOut:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 385
    :cond_2
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->connectTimeout:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->connectTimeout:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 386
    :cond_3
    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 387
    :cond_4
    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->certificates:[Ljava/io/InputStream;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->certificates:[Ljava/io/InputStream;

    invoke-static {v2, v5, v5}, Lcom/lzy/okhttputils/https/HttpsUtils;->getSslSocketFactory([Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 388
    :cond_5
    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzy/okhttputils/OkHttpUtils;->getCookieJar()Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->addCookies(Ljava/util/List;)V

    .line 389
    :cond_6
    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 390
    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    .line 391
    .local v0, "interceptor":Lokhttp3/Interceptor;
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 394
    .end local v0    # "interceptor":Lokhttp3/Interceptor;
    :cond_7
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected generateMultipartRequestBody()Lokhttp3/RequestBody;
    .locals 14

    .prologue
    .line 323
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v10, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v10, v10, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 325
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 326
    .local v0, "bodyBuilder":Lokhttp3/FormBody$Builder;
    iget-object v10, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v10, v10, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 327
    .local v6, "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v11, v11, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 328
    .local v8, "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 329
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v0, v6, v9}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 332
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v10

    .line 353
    .end local v0    # "bodyBuilder":Lokhttp3/FormBody$Builder;
    :goto_1
    return-object v10

    .line 335
    :cond_2
    new-instance v10, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v10}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v11, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v10, v11}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v7

    .line 337
    .local v7, "multipartBodybuilder":Lokhttp3/MultipartBody$Builder;
    iget-object v10, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v10, v10, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 338
    iget-object v10, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v10, v10, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 339
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 340
    .restart local v8    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 341
    .restart local v9    # "value":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_2

    .line 346
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v10, v10, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 347
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 348
    .local v4, "fileValues":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;

    .line 349
    .local v5, "fileWrapper":Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;
    iget-object v10, v5, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->contentType:Lokhttp3/MediaType;

    iget-object v13, v5, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->file:Ljava/io/File;

    invoke-static {v10, v13}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 350
    .local v3, "fileBody":Lokhttp3/RequestBody;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v13, v5, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v10, v13, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_3

    .line 353
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;>;"
    .end local v3    # "fileBody":Lokhttp3/RequestBody;
    .end local v4    # "fileValues":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;>;"
    .end local v5    # "fileWrapper":Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;
    :cond_6
    invoke-virtual {v7}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v10

    goto/16 :goto_1
.end method

.method protected abstract generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected abstract generateRequestBody()Lokhttp3/RequestBody;
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()Lcom/lzy/okhttputils/cache/CacheMode;
    .locals 1

    .prologue
    .line 273
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .prologue
    .line 281
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    return-wide v0
.end method

.method public getHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;
    .locals 1

    .prologue
    .line 261
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    return-object v0
.end method

.method public getParams()Lcom/lzy/okhttputils/model/HttpParams;
    .locals 1

    .prologue
    .line 257
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public headers(Lcom/lzy/okhttputils/model/HttpHeaders;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "headers"    # Lcom/lzy/okhttputils/model/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Lcom/lzy/okhttputils/model/HttpHeaders;)V

    .line 149
    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-object p0
.end method

.method public params(Lcom/lzy/okhttputils/model/HttpParams;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "params"    # Lcom/lzy/okhttputils/model/HttpParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Lcom/lzy/okhttputils/model/HttpParams;)V

    .line 167
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 185
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 203
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "contentType"    # Lokhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    .line 209
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-object p0
.end method

.method public readTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "readTimeOut"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-wide p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->readTimeOut:J

    .line 99
    return-object p0
.end method

.method public removeFileParam(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpParams;->removeFile(Ljava/lang/String;)V

    .line 221
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public removeUrlParam(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpParams;->removeUrl(Ljava/lang/String;)V

    .line 215
    return-object p0
.end method

.method public setCallback(Lcom/lzy/okhttputils/callback/AbsCallback;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .param p1, "callback"    # Lcom/lzy/okhttputils/callback/AbsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/callback/AbsCallback;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    .line 247
    return-object p0
.end method

.method public varargs setCertificates([Ljava/io/InputStream;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .param p1, "certificates"    # [Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/InputStream;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->certificates:[Ljava/io/InputStream;

    .line 137
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 143
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->tag:Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->url:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method protected wrapRequestBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
    .locals 2
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .prologue
    .line 359
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    new-instance v0, Lcom/lzy/okhttputils/request/ProgressRequestBody;

    invoke-direct {v0, p1}, Lcom/lzy/okhttputils/request/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;)V

    .line 360
    .local v0, "progressRequestBody":Lcom/lzy/okhttputils/request/ProgressRequestBody;
    new-instance v1, Lcom/lzy/okhttputils/request/BaseRequest$1;

    invoke-direct {v1, p0}, Lcom/lzy/okhttputils/request/BaseRequest$1;-><init>(Lcom/lzy/okhttputils/request/BaseRequest;)V

    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/request/ProgressRequestBody;->setListener(Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;)V

    .line 371
    return-object v0
.end method

.method public writeTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1, "writeTimeOut"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest;, "Lcom/lzy/okhttputils/request/BaseRequest<TR;>;"
    iput-wide p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->writeTimeOut:J

    .line 105
    return-object p0
.end method
