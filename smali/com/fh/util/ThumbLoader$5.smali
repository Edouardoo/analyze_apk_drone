.class Lcom/fh/util/ThumbLoader$5;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Lcom/fh/hdutil/OnAviThumbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/util/ThumbLoader;->getThumbForAvi(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V
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

.field final synthetic val$listener:Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/fh/util/ThumbLoader;IILjava/lang/String;Landroid/os/Handler;Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/util/ThumbLoader;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/fh/util/ThumbLoader$5;->this$0:Lcom/fh/util/ThumbLoader;

    iput p2, p0, Lcom/fh/util/ThumbLoader$5;->val$width:I

    iput p3, p0, Lcom/fh/util/ThumbLoader$5;->val$height:I

    iput-object p4, p0, Lcom/fh/util/ThumbLoader$5;->val$path:Ljava/lang/String;

    iput-object p5, p0, Lcom/fh/util/ThumbLoader$5;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/fh/util/ThumbLoader$5;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

    iput-object p7, p0, Lcom/fh/util/ThumbLoader$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V
    .locals 12
    .param p1, "bytes"    # [B
    .param p2, "mediaMeta"    # Lcom/jieli/media/codec/bean/MediaMeta;

    .prologue
    .line 593
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 594
    invoke-static {}, Lcom/fh/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbForAvi -onCompleted- bytes size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n mediaMeta : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jieli/media/codec/bean/MediaMeta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v9, 0x0

    .line 596
    .local v9, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 598
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    .end local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v10, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 603
    if-eqz v10, :cond_5

    .line 605
    :try_start_2
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v10

    .line 611
    .end local v10    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 612
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/fh/util/ThumbLoader$5;->val$width:I

    if-gt v0, v1, :cond_1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/fh/util/ThumbLoader$5;->val$height:I

    if-le v0, v1, :cond_2

    .line 613
    :cond_1
    iget v0, p0, Lcom/fh/util/ThumbLoader$5;->val$width:I

    iget v1, p0, Lcom/fh/util/ThumbLoader$5;->val$height:I

    const/4 v2, 0x2

    invoke-static {v6, v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 615
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$5;->this$0:Lcom/fh/util/ThumbLoader;

    invoke-static {v0}, Lcom/fh/util/ThumbLoader;->access$200(Lcom/fh/util/ThumbLoader;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$5;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-virtual {p2}, Lcom/jieli/media/codec/bean/MediaMeta;->getDuration()I

    move-result v7

    .line 617
    .local v7, "duration":I
    invoke-static {}, Lcom/fh/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-getThumbForAvi- duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$5;->this$0:Lcom/fh/util/ThumbLoader;

    invoke-static {v0}, Lcom/fh/util/ThumbLoader;->access$300(Lcom/fh/util/ThumbLoader;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$5;->val$path:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$5;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;

    iget-object v2, p0, Lcom/fh/util/ThumbLoader$5;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v3, p0, Lcom/fh/util/ThumbLoader$5;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;ILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 620
    if-lez v7, :cond_2

    .line 621
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$5;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$5;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/fh/util/ThumbLoader;->access$400(Lcom/fh/util/ThumbLoader;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 622
    .local v11, "saveThumbPath":Ljava/lang/String;
    invoke-static {}, Lcom/fh/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-getThumbForAvi- saveThumbPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/16 v0, 0x64

    invoke-static {v6, v11, v0}, Lcom/fh/hdutil/AppUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    .line 630
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "duration":I
    .end local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v11    # "saveThumbPath":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 606
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v8

    .line 607
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 608
    .end local v10    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_0

    .line 600
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 601
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 603
    if-eqz v9, :cond_0

    .line 605
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 606
    :catch_2
    move-exception v8

    .line 607
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 603
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_3

    .line 605
    :try_start_5
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 608
    :cond_3
    :goto_4
    throw v0

    .line 606
    :catch_3
    move-exception v8

    .line 607
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 627
    .end local v8    # "e":Ljava/io/IOException;
    :cond_4
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$5;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$5;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/fh/util/ThumbLoader$5;->val$width:I

    iget v4, p0, Lcom/fh/util/ThumbLoader$5;->val$height:I

    iget-object v5, p0, Lcom/fh/util/ThumbLoader$5;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

    invoke-virtual/range {v0 .. v5}, Lcom/fh/util/ThumbLoader;->loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    goto :goto_1

    .line 603
    .end local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 600
    .end local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v8

    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_5
    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$5;->this$0:Lcom/fh/util/ThumbLoader;

    iget-object v1, p0, Lcom/fh/util/ThumbLoader$5;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/fh/util/ThumbLoader$5;->val$width:I

    iget v4, p0, Lcom/fh/util/ThumbLoader$5;->val$height:I

    iget-object v5, p0, Lcom/fh/util/ThumbLoader$5;->val$listener:Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

    invoke-virtual/range {v0 .. v5}, Lcom/fh/util/ThumbLoader;->loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    .line 635
    return-void
.end method
