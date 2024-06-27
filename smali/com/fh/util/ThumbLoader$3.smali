.class Lcom/fh/util/ThumbLoader$3;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/util/ThumbLoader;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$height:I

.field final synthetic val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

.field final synthetic val$savePath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/fh/util/ThumbLoader;Ljava/lang/String;Landroid/content/Context;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/util/ThumbLoader;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/fh/util/ThumbLoader$3;->this$0:Lcom/fh/util/ThumbLoader;

    iput-object p2, p0, Lcom/fh/util/ThumbLoader$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/fh/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/fh/util/ThumbLoader$3;->val$width:I

    iput p5, p0, Lcom/fh/util/ThumbLoader$3;->val$height:I

    iput-object p6, p0, Lcom/fh/util/ThumbLoader$3;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    iput-object p7, p0, Lcom/fh/util/ThumbLoader$3;->val$savePath:Ljava/lang/String;

    iput-object p8, p0, Lcom/fh/util/ThumbLoader$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/io/IOException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-static {}, Lcom/fh/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-loadThumbnail- error = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fh/util/ThumbLoader$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$3;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/fh/util/ThumbLoader$3;->val$width:I

    iget v5, p0, Lcom/fh/util/ThumbLoader$3;->val$height:I

    iget-object v6, p0, Lcom/fh/util/ThumbLoader$3;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    .line 217
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 10
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
    const/4 v2, 0x0

    .line 221
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 222
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    .line 223
    .local v9, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v9, :cond_2

    .line 224
    invoke-virtual {v9}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v8

    .line 225
    .local v8, "bytes":[B
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 226
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 227
    iget v0, p0, Lcom/fh/util/ThumbLoader$3;->val$width:I

    iget v1, p0, Lcom/fh/util/ThumbLoader$3;->val$height:I

    const/4 v2, 0x2

    invoke-static {v7, v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 229
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$3;->this$0:Lcom/fh/util/ThumbLoader;

    invoke-static {v0}, Lcom/fh/util/ThumbLoader;->access$200(Lcom/fh/util/ThumbLoader;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$3;->val$savePath:Ljava/lang/String;

    const/16 v1, 0x64

    invoke-static {v7, v0, v1}, Lcom/fh/hdutil/AppUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/fh/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "save thumdNail ok"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$3;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;

    iget-object v2, p0, Lcom/fh/util/ThumbLoader$3;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v3, p0, Lcom/fh/util/ThumbLoader$3;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    invoke-direct {v1, v2, v7, v3}, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "bytes":[B
    .end local v9    # "responseBody":Lokhttp3/ResponseBody;
    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 246
    return-void

    .line 233
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "bytes":[B
    .restart local v9    # "responseBody":Lokhttp3/ResponseBody;
    :cond_0
    invoke-static {}, Lcom/fh/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "save thumdNail fail"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$3;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/fh/util/ThumbLoader$3;->val$width:I

    iget v5, p0, Lcom/fh/util/ThumbLoader$3;->val$height:I

    iget-object v6, p0, Lcom/fh/util/ThumbLoader$3;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    goto :goto_1

    .line 240
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "bytes":[B
    :cond_2
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$3;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/fh/util/ThumbLoader$3;->val$width:I

    iget v5, p0, Lcom/fh/util/ThumbLoader$3;->val$height:I

    iget-object v6, p0, Lcom/fh/util/ThumbLoader$3;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    goto :goto_1

    .line 243
    .end local v9    # "responseBody":Lokhttp3/ResponseBody;
    :cond_3
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$3;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/fh/util/ThumbLoader$3;->val$width:I

    iget v5, p0, Lcom/fh/util/ThumbLoader$3;->val$height:I

    iget-object v6, p0, Lcom/fh/util/ThumbLoader$3;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    goto :goto_1
.end method
