.class Lcom/lzy/okhttputils/request/BaseRequest$3;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/request/BaseRequest;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$isFromCache:Z

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/callback/AbsCallback;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lzy/okhttputils/request/BaseRequest;

    .prologue
    .line 516
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest$3;, "Lcom/lzy/okhttputils/request/BaseRequest$3;"
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iput-object p2, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iput-boolean p3, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$isFromCache:Z

    iput-object p4, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$call:Lokhttp3/Call;

    iput-object p5, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$response:Lokhttp3/Response;

    iput-object p6, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 519
    .local p0, "this":Lcom/lzy/okhttputils/request/BaseRequest$3;, "Lcom/lzy/okhttputils/request/BaseRequest$3;"
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-boolean v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$isFromCache:Z

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$call:Lokhttp3/Call;

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$response:Lokhttp3/Response;

    iget-object v4, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzy/okhttputils/callback/AbsCallback;->onError(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    .line 520
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-boolean v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$isFromCache:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$call:Lokhttp3/Call;

    iget-object v4, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$response:Lokhttp3/Response;

    iget-object v5, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$e:Ljava/lang/Exception;

    invoke-virtual/range {v0 .. v5}, Lcom/lzy/okhttputils/callback/AbsCallback;->onAfter(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    .line 521
    return-void
.end method
