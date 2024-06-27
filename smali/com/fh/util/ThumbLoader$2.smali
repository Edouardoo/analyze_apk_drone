.class Lcom/fh/util/ThumbLoader$2;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V
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

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/fh/util/ThumbLoader;Ljava/lang/String;Landroid/content/Context;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/util/ThumbLoader;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/fh/util/ThumbLoader$2;->this$0:Lcom/fh/util/ThumbLoader;

    iput-object p2, p0, Lcom/fh/util/ThumbLoader$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/fh/util/ThumbLoader$2;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/fh/util/ThumbLoader$2;->val$width:I

    iput p5, p0, Lcom/fh/util/ThumbLoader$2;->val$height:I

    iput-object p6, p0, Lcom/fh/util/ThumbLoader$2;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    iput-object p7, p0, Lcom/fh/util/ThumbLoader$2;->val$handler:Landroid/os/Handler;

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
    .line 151
    invoke-static {}, Lcom/fh/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-loadThumbnail- error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fh/util/ThumbLoader$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$2;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/fh/util/ThumbLoader$2;->val$width:I

    iget v4, p0, Lcom/fh/util/ThumbLoader$2;->val$height:I

    iget-object v5, p0, Lcom/fh/util/ThumbLoader$2;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    invoke-virtual/range {v0 .. v5}, Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    .line 153
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9
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

    .line 157
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 158
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    .line 159
    .local v8, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v8, :cond_1

    .line 160
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v7

    .line 161
    .local v7, "bytes":[B
    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 162
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 163
    iget v0, p0, Lcom/fh/util/ThumbLoader$2;->val$width:I

    iget v1, p0, Lcom/fh/util/ThumbLoader$2;->val$height:I

    const/4 v2, 0x2

    invoke-static {v6, v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 165
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$2;->this$0:Lcom/fh/util/ThumbLoader;

    invoke-static {v0}, Lcom/fh/util/ThumbLoader;->access$200(Lcom/fh/util/ThumbLoader;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;

    iget-object v2, p0, Lcom/fh/util/ThumbLoader$2;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v3, p0, Lcom/fh/util/ThumbLoader$2;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    invoke-direct {v1, v2, v6, v3}, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "bytes":[B
    .end local v8    # "responseBody":Lokhttp3/ResponseBody;
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 178
    return-void

    .line 169
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "bytes":[B
    .restart local v8    # "responseBody":Lokhttp3/ResponseBody;
    :cond_0
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$2;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$2;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/fh/util/ThumbLoader$2;->val$width:I

    iget v4, p0, Lcom/fh/util/ThumbLoader$2;->val$height:I

    iget-object v5, p0, Lcom/fh/util/ThumbLoader$2;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    invoke-virtual/range {v0 .. v5}, Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    goto :goto_0

    .line 172
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "bytes":[B
    :cond_1
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$2;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$2;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/fh/util/ThumbLoader$2;->val$width:I

    iget v4, p0, Lcom/fh/util/ThumbLoader$2;->val$height:I

    iget-object v5, p0, Lcom/fh/util/ThumbLoader$2;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    invoke-virtual/range {v0 .. v5}, Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    goto :goto_0

    .line 175
    .end local v8    # "responseBody":Lokhttp3/ResponseBody;
    :cond_2
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$2;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$2;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/fh/util/ThumbLoader$2;->val$width:I

    iget v4, p0, Lcom/fh/util/ThumbLoader$2;->val$height:I

    iget-object v5, p0, Lcom/fh/util/ThumbLoader$2;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    invoke-virtual/range {v0 .. v5}, Lcom/fh/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    goto :goto_0
.end method
