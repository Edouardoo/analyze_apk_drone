.class Lcom/fh/util/ThumbLoader$4;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/util/ThumbLoader;->downloadWebImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fh/util/ThumbLoader$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/util/ThumbLoader;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/fh/util/ThumbLoader$OnDownloadListener;

.field final synthetic val$saveUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fh/util/ThumbLoader;Landroid/os/Handler;Ljava/lang/String;Lcom/fh/util/ThumbLoader$OnDownloadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/util/ThumbLoader;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/fh/util/ThumbLoader$4;->this$0:Lcom/fh/util/ThumbLoader;

    iput-object p2, p0, Lcom/fh/util/ThumbLoader$4;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/fh/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/fh/util/ThumbLoader$4;->val$listener:Lcom/fh/util/ThumbLoader$OnDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/io/IOException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 440
    invoke-static {}, Lcom/fh/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-downloadWebImage- onErrorResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$4;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/fh/util/ThumbLoader$OnResultRunnable;

    iget-object v2, p0, Lcom/fh/util/ThumbLoader$4;->this$0:Lcom/fh/util/ThumbLoader;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fh/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/fh/util/ThumbLoader$4;->val$listener:Lcom/fh/util/ThumbLoader$OnDownloadListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fh/util/ThumbLoader$OnResultRunnable;-><init>(Lcom/fh/util/ThumbLoader;ZLjava/lang/String;Lcom/fh/util/ThumbLoader$OnDownloadListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "response"    # Lokhttp3/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 447
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    .line 448
    .local v1, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    .line 450
    .local v0, "bytes":[B
    invoke-static {}, Lcom/fh/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadWebImage:saveUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fh/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/fh/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/fh/hdutil/AppUtils;->bytesToFile([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/fh/util/ThumbLoader$4;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/fh/util/ThumbLoader$OnResultRunnable;

    iget-object v4, p0, Lcom/fh/util/ThumbLoader$4;->this$0:Lcom/fh/util/ThumbLoader;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/fh/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/fh/util/ThumbLoader$4;->val$listener:Lcom/fh/util/ThumbLoader$OnDownloadListener;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fh/util/ThumbLoader$OnResultRunnable;-><init>(Lcom/fh/util/ThumbLoader;ZLjava/lang/String;Lcom/fh/util/ThumbLoader$OnDownloadListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    .end local v0    # "bytes":[B
    .end local v1    # "responseBody":Lokhttp3/ResponseBody;
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 458
    return-void
.end method
