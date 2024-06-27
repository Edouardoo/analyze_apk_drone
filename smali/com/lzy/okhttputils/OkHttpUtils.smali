.class public Lcom/lzy/okhttputils/OkHttpUtils;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;
    }
.end annotation


# static fields
.field public static final DEFAULT_MILLISECONDS:I = 0x2710

.field private static context:Landroid/app/Application;

.field private static mInstance:Lcom/lzy/okhttputils/OkHttpUtils;


# instance fields
.field private cookieJar:Lcom/lzy/okhttputils/cookie/CookieJarImpl;

.field private mCacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

.field private mCacheTime:J

.field private mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

.field private mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

.field private mDelivery:Landroid/os/Handler;

.field private okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheTime:J

    .line 57
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 58
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;

    invoke-direct {v1, p0}, Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;-><init>(Lcom/lzy/okhttputils/OkHttpUtils;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mDelivery:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method public static delete(Ljava/lang/String;)Lcom/lzy/okhttputils/request/DeleteRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Lcom/lzy/okhttputils/request/DeleteRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/DeleteRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/lzy/okhttputils/request/GetRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Lcom/lzy/okhttputils/request/GetRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/GetRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u8bf7\u5148\u5728\u5168\u5c40Application\u4e2d\u8c03\u7528 OkHttpUtils.init() \u521d\u59cb\u5316\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->context:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance()Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->mInstance:Lcom/lzy/okhttputils/OkHttpUtils;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lcom/lzy/okhttputils/OkHttpUtils;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->mInstance:Lcom/lzy/okhttputils/OkHttpUtils;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/lzy/okhttputils/OkHttpUtils;

    invoke-direct {v0}, Lcom/lzy/okhttputils/OkHttpUtils;-><init>()V

    sput-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->mInstance:Lcom/lzy/okhttputils/OkHttpUtils;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->mInstance:Lcom/lzy/okhttputils/OkHttpUtils;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static head(Ljava/lang/String;)Lcom/lzy/okhttputils/request/HeadRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lcom/lzy/okhttputils/request/HeadRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/HeadRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 75
    sput-object p0, Lcom/lzy/okhttputils/OkHttpUtils;->context:Landroid/app/Application;

    .line 76
    return-void
.end method

.method public static options(Ljava/lang/String;)Lcom/lzy/okhttputils/request/OptionsRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Lcom/lzy/okhttputils/request/OptionsRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/OptionsRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcom/lzy/okhttputils/request/PostRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Lcom/lzy/okhttputils/request/PostRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lcom/lzy/okhttputils/request/PutRequest;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lcom/lzy/okhttputils/request/PutRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/PutRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addCommonHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 1
    .param p1, "commonHeaders"    # Lcom/lzy/okhttputils/model/HttpHeaders;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okhttputils/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Lcom/lzy/okhttputils/model/HttpHeaders;)V

    .line 235
    return-object p0
.end method

.method public addCommonParams(Lcom/lzy/okhttputils/model/HttpParams;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 1
    .param p1, "commonParams"    # Lcom/lzy/okhttputils/model/HttpParams;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzy/okhttputils/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okhttputils/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Lcom/lzy/okhttputils/model/HttpParams;)V

    .line 223
    return-object p0
.end method

.method public addInterceptor(Lokhttp3/Interceptor;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 1
    .param p1, "interceptor"    # Lokhttp3/Interceptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 241
    return-object p0
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/lzy/okhttputils/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 247
    .local v0, "call":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 251
    .end local v0    # "call":Lokhttp3/Call;
    :cond_1
    invoke-virtual {p0}, Lcom/lzy/okhttputils/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 252
    .restart local v0    # "call":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    .line 256
    .end local v0    # "call":Lokhttp3/Call;
    :cond_3
    return-void
.end method

.method public debug(Ljava/lang/String;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 125
    return-object p0
.end method

.method public getCacheMode()Lcom/lzy/okhttputils/cache/CacheMode;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheTime:J

    return-wide v0
.end method

.method public getCommonHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    return-object v0
.end method

.method public getCommonParams()Lcom/lzy/okhttputils/model/HttpParams;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

    return-object v0
.end method

.method public getCookieJar()Lcom/lzy/okhttputils/cookie/CookieJarImpl;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->cookieJar:Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    return-object v0
.end method

.method public getDelivery()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mDelivery:Landroid/os/Handler;

    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public setCacheMode(Lcom/lzy/okhttputils/cache/CacheMode;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 0
    .param p1, "cacheMode"    # Lcom/lzy/okhttputils/cache/CacheMode;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    .line 194
    return-object p0
.end method

.method public setCacheTime(J)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 3
    .param p1, "cacheTime"    # J

    .prologue
    .line 204
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, -0x1

    .line 205
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheTime:J

    .line 206
    return-object p0
.end method

.method public varargs setCertificates([Ljava/io/InputStream;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 2
    .param p1, "certificates"    # [Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-static {p1, v1, v1}, Lcom/lzy/okhttputils/https/HttpsUtils;->getSslSocketFactory([Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 149
    return-object p0
.end method

.method public varargs setCertificates([Ljava/lang/String;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 6
    .param p1, "certificates"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 154
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, p1, v2

    .line 155
    .local v0, "certificate":Ljava/lang/String;
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    invoke-virtual {v5, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 156
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/InputStream;

    aput-object v1, v5, v3

    invoke-virtual {p0, v5}, Lcom/lzy/okhttputils/OkHttpUtils;->setCertificates([Ljava/io/InputStream;)Lcom/lzy/okhttputils/OkHttpUtils;

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "certificate":Ljava/lang/String;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 4
    .param p1, "connectTimeout"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 188
    return-object p0
.end method

.method public setCookieStore(Lcom/lzy/okhttputils/cookie/store/CookieStore;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 2
    .param p1, "cookieStore"    # Lcom/lzy/okhttputils/cookie/store/CookieStore;

    .prologue
    .line 163
    new-instance v0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    invoke-direct {v0, p1}, Lcom/lzy/okhttputils/cookie/CookieJarImpl;-><init>(Lcom/lzy/okhttputils/cookie/store/CookieStore;)V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->cookieJar:Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    .line 164
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    iget-object v1, p0, Lcom/lzy/okhttputils/OkHttpUtils;->cookieJar:Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 165
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 1
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 143
    return-object p0
.end method

.method public setReadTimeOut(I)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 4
    .param p1, "readTimeOut"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 176
    return-object p0
.end method

.method public setWriteTimeOut(I)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 4
    .param p1, "writeTimeout"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 182
    return-object p0
.end method
