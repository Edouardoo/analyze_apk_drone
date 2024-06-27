.class public Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;
.super Ljava/lang/Object;
.source "LoggerInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final TAG:Ljava/lang/String; = "OkHttpUtils"


# instance fields
.field private showResponse:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;-><init>(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "showResponse"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string p1, "OkHttpUtils"

    .line 30
    :cond_0
    iput-boolean p2, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->showResponse:Z

    .line 31
    iput-object p1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private bodyToString(Lokhttp3/Request;)Ljava/lang/String;
    .locals 4
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 127
    .local v1, "copy":Lokhttp3/Request;
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 128
    .local v0, "buffer":Lokio/Buffer;
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v3, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 129
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 131
    .end local v0    # "buffer":Lokio/Buffer;
    .end local v1    # "copy":Lokhttp3/Request;
    :goto_0
    return-object v3

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "something error when show requestBody."

    goto :goto_0
.end method

.method private isText(Lokhttp3/MediaType;)Z
    .locals 3
    .param p1, "mediaType"    # Lokhttp3/MediaType;

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webviewhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logForRequest(Lokhttp3/Request;)V
    .locals 8
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 48
    .local v1, "headers":Lokhttp3/Headers;
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v6, "---------------------request log start---------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "method : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 52
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v6, "headers : \n"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    .line 56
    .local v3, "requestBody":Lokhttp3/RequestBody;
    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {v3}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    .line 58
    .local v2, "mediaType":Lokhttp3/MediaType;
    if-eqz v2, :cond_1

    .line 59
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contentType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0, v2}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->isText(Lokhttp3/MediaType;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->bodyToString(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v2    # "mediaType":Lokhttp3/MediaType;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v6, "---------------------request log end-----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "headers":Lokhttp3/Headers;
    .end local v3    # "requestBody":Lokhttp3/RequestBody;
    .end local v4    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 63
    .restart local v1    # "headers":Lokhttp3/Headers;
    .restart local v2    # "mediaType":Lokhttp3/MediaType;
    .restart local v3    # "requestBody":Lokhttp3/RequestBody;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v6, "content :  maybe [file part] , too large too print , ignored!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v1    # "headers":Lokhttp3/Headers;
    .end local v2    # "mediaType":Lokhttp3/MediaType;
    .end local v3    # "requestBody":Lokhttp3/RequestBody;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    iget-object v5, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v6, "---------------------request log end-----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v7, "---------------------request log end-----------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v5
.end method

.method private logForResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 9
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 76
    :try_start_0
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v7, "---------------------response log start---------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    .line 78
    .local v1, "builder":Lokhttp3/Response$Builder;
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    .line 79
    .local v2, "clone":Lokhttp3/Response;
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "protocol : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-boolean v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->showResponse:Z

    if-eqz v6, :cond_2

    .line 85
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 86
    .local v0, "body":Lokhttp3/ResponseBody;
    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    .line 88
    .local v4, "mediaType":Lokhttp3/MediaType;
    if-eqz v4, :cond_2

    .line 89
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0, v4}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->isText(Lokhttp3/MediaType;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "resp":Ljava/lang/String;
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {v4, v5}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 104
    .end local p1    # "response":Lokhttp3/Response;
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v7, "---------------------response log end-----------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v1    # "builder":Lokhttp3/Response$Builder;
    .end local v2    # "clone":Lokhttp3/Response;
    .end local v4    # "mediaType":Lokhttp3/MediaType;
    .end local v5    # "resp":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 96
    .restart local v0    # "body":Lokhttp3/ResponseBody;
    .restart local v1    # "builder":Lokhttp3/Response$Builder;
    .restart local v2    # "clone":Lokhttp3/Response;
    .restart local v4    # "mediaType":Lokhttp3/MediaType;
    .restart local p1    # "response":Lokhttp3/Response;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v7, "content :  maybe [file part] , too large too print , ignored!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v4    # "mediaType":Lokhttp3/MediaType;
    :cond_2
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v7, "---------------------response log end-----------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v1    # "builder":Lokhttp3/Response$Builder;
    .end local v2    # "clone":Lokhttp3/Response;
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    iget-object v6, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v7, "---------------------response log end-----------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v8, "---------------------response log end-----------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v6
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 37
    .local v0, "request":Lokhttp3/Request;
    invoke-direct {p0, v0}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->logForRequest(Lokhttp3/Request;)V

    .line 38
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 40
    .local v1, "response":Lokhttp3/Response;
    invoke-direct {p0, v1}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->logForResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method
