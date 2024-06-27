.class Lcom/lzy/okhttputils/request/BaseRequest$4;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/request/BaseRequest;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

.field final synthetic val$isFromCache:Z

.field final synthetic val$response:Lokhttp3/Response;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/callback/AbsCallback;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lzy/okhttputils/request/BaseRequest;

    .prologue
    .line 539
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest$4;, "Lcom/lzy/okhttputils/request/BaseRequest$4;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iput-object p2, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iput-boolean p3, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$isFromCache:Z

    iput-object p4, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$t:Ljava/lang/Object;

    iput-object p5, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$call:Lokhttp3/Call;

    iput-object p6, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 542
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest$4;, "Lcom/lzy/okhttputils/request/BaseRequest$4;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-boolean v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$isFromCache:Z

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$t:Ljava/lang/Object;

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$call:Lokhttp3/Call;

    invoke-interface {v3}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$response:Lokhttp3/Response;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzy/okhttputils/callback/AbsCallback;->onResponse(ZLjava/lang/Object;Lokhttp3/Request;Lokhttp3/Response;)V

    .line 543
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-boolean v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$isFromCache:Z

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$t:Ljava/lang/Object;

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$call:Lokhttp3/Call;

    iget-object v4, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$response:Lokhttp3/Response;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lzy/okhttputils/callback/AbsCallback;->onAfter(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    .line 544
    return-void
.end method
