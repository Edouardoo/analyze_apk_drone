.class Lcom/lzy/okhttputils/request/BaseRequest$2;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttputils/request/BaseRequest;->execute(Lcom/lzy/okhttputils/callback/AbsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/request/BaseRequest;

.field final synthetic val$cacheEntity:Lcom/lzy/okhttputils/cache/CacheEntity;


# direct methods
.method constructor <init>(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lzy/okhttputils/request/BaseRequest;

    .prologue
    .line 451
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest$2;, "Lcom/lzy/okhttputils/request/BaseRequest$2;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iput-object p2, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->val$cacheEntity:Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 455
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest$2;, "Lcom/lzy/okhttputils/request/BaseRequest$2;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-static {v2}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 456
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest$2;, "Lcom/lzy/okhttputils/request/BaseRequest$2;"
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 460
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v11

    .line 462
    .local v11, "responseCode":I
    const/16 v0, 0x130

    if-ne v11, v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v3, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v0, v3, :cond_1

    .line 463
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->val$cacheEntity:Lcom/lzy/okhttputils/cache/CacheEntity;

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v3, "\u670d\u52a1\u5668\u54cd\u5e94\u7801304\uff0c\u4f46\u662f\u5ba2\u6237\u7aef\u6ca1\u6709\u7f13\u5b58\uff01"

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-static {v3}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 486
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->val$cacheEntity:Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 467
    .local v2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-static {v3}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$200(Lcom/lzy/okhttputils/request/BaseRequest;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_0

    .line 472
    .end local v2    # "data":Ljava/lang/Object;, "TT;"
    :cond_1
    const/16 v0, 0x190

    if-lt v11, v0, :cond_2

    const/16 v0, 0x257

    if-gt v11, v0, :cond_2

    .line 473
    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-static {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v8

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lcom/lzy/okhttputils/request/BaseRequest;->access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_0

    .line 478
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-static {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lzy/okhttputils/callback/AbsCallback;->parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v2

    .line 479
    .restart local v2    # "data":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-static {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v10

    move-object v7, v2

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v5 .. v10}, Lcom/lzy/okhttputils/request/BaseRequest;->access$200(Lcom/lzy/okhttputils/request/BaseRequest;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 481
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/lzy/okhttputils/request/BaseRequest;->access$300(Lcom/lzy/okhttputils/request/BaseRequest;Lokhttp3/Headers;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    .end local v2    # "data":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v7

    .line 484
    .local v7, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-static {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v8

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lcom/lzy/okhttputils/request/BaseRequest;->access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_0
.end method
