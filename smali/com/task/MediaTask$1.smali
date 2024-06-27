.class Lcom/task/MediaTask$1;
.super Ljava/lang/Object;
.source "MediaTask.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/MediaTask;->tryToDownload(Lcom/hfufo/bean/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/MediaTask;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$saveUrl:Ljava/lang/String;

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/task/MediaTask;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/MediaTask;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    iput-object p2, p0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-wide p4, p0, Lcom/task/MediaTask$1;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/io/IOException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const-string v2, "MediaTask"

    const-string v3, "download file fail, delete file success!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 195
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x53

    iput v2, v1, Landroid/os/Message;->what:I

    .line 196
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 197
    iget-object v2, p0, Lcom/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 198
    iget-object v2, p0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v2}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/task/MediaTask;->access$102(Lcom/task/MediaTask;Lokhttp3/Call;)Lokhttp3/Call;

    .line 201
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 20
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
    .line 206
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    .line 207
    .local v14, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v14, :cond_7

    .line 208
    const/4 v9, 0x0

    .line 209
    .local v9, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 210
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v15, 0x1000

    new-array v2, v15, [B

    .line 212
    .local v2, "buf":[B
    const-wide/16 v4, 0x0

    .line 215
    .local v4, "current":J
    const/4 v10, -0x1

    .line 216
    .local v10, "lastProgress":I
    :try_start_0
    invoke-virtual {v14}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    .line 217
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "len":I
    const/4 v15, -0x1

    if-eq v11, v15, :cond_8

    .line 219
    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    .line 220
    const/4 v15, 0x0

    invoke-virtual {v8, v2, v15, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 221
    const-wide/16 v16, 0x64

    mul-long v16, v16, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/task/MediaTask$1;->val$total:J

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v13, v0

    .line 222
    .local v13, "progress":I
    if-eq v13, v10, :cond_0

    .line 223
    move v10, v13

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 227
    .local v12, "message":Landroid/os/Message;
    const/16 v15, 0x55

    iput v15, v12, Landroid/os/Message;->what:I

    .line 228
    iput v13, v12, Landroid/os/Message;->arg1:I

    .line 229
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-object v15, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 235
    .end local v11    # "len":I
    .end local v12    # "message":Landroid/os/Message;
    .end local v13    # "progress":I
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 236
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 239
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 240
    const-string v15, "MediaTask"

    const-string v16, "download file fail, delete file success!"

    invoke-static/range {v15 .. v16}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :cond_1
    if-eqz v9, :cond_2

    .line 246
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 248
    :cond_2
    if-eqz v7, :cond_3

    .line 249
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 254
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/task/MediaTask$1;->val$total:J

    move-wide/from16 v16, v0

    cmp-long v15, v4, v16

    if-ltz v15, :cond_10

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$200(Lcom/task/MediaTask;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 256
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/task/MediaTask;->access$202(Lcom/task/MediaTask;Z)Z

    .line 257
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 259
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 260
    const-string v15, "MediaTask"

    const-string v16, "download file fail, delete file success!"

    invoke-static/range {v15 .. v16}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 266
    .restart local v12    # "message":Landroid/os/Message;
    const/16 v15, 0x53

    iput v15, v12, Landroid/os/Message;->what:I

    .line 267
    const/4 v15, 0x1

    iput v15, v12, Landroid/os/Message;->arg1:I

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    iput-object v15, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$300(Lcom/task/MediaTask;)Lcom/fh/hdutil/ScanFilesHelper;

    move-result-object v15

    if-nez v15, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    new-instance v16, Lcom/fh/hdutil/ScanFilesHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/task/MediaTask;->access$400(Lcom/task/MediaTask;)Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/fh/hdutil/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    invoke-static/range {v15 .. v16}, Lcom/task/MediaTask;->access$302(Lcom/task/MediaTask;Lcom/fh/hdutil/ScanFilesHelper;)Lcom/fh/hdutil/ScanFilesHelper;

    .line 272
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$300(Lcom/task/MediaTask;)Lcom/fh/hdutil/ScanFilesHelper;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/fh/hdutil/ScanFilesHelper;->scanFiles(Ljava/lang/String;)V

    .line 289
    .end local v12    # "message":Landroid/os/Message;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/task/MediaTask;->access$102(Lcom/task/MediaTask;Lokhttp3/Call;)Lokhttp3/Call;

    .line 292
    .end local v2    # "buf":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "current":J
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "lastProgress":I
    :cond_7
    :goto_4
    return-void

    .line 234
    .restart local v2    # "buf":[B
    .restart local v4    # "current":J
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "lastProgress":I
    .restart local v11    # "len":I
    :cond_8
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 245
    if-eqz v9, :cond_9

    .line 246
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 248
    :cond_9
    if-eqz v8, :cond_a

    .line 249
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 254
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/task/MediaTask$1;->val$total:J

    move-wide/from16 v16, v0

    cmp-long v15, v4, v16

    if-ltz v15, :cond_e

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$200(Lcom/task/MediaTask;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 256
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/task/MediaTask;->access$202(Lcom/task/MediaTask;Z)Z

    .line 257
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 259
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 260
    const-string v15, "MediaTask"

    const-string v16, "download file fail, delete file success!"

    invoke-static/range {v15 .. v16}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v6    # "file":Ljava/io/File;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 266
    .restart local v12    # "message":Landroid/os/Message;
    const/16 v15, 0x53

    iput v15, v12, Landroid/os/Message;->what:I

    .line 267
    const/4 v15, 0x1

    iput v15, v12, Landroid/os/Message;->arg1:I

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    iput-object v15, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$300(Lcom/task/MediaTask;)Lcom/fh/hdutil/ScanFilesHelper;

    move-result-object v15

    if-nez v15, :cond_c

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    new-instance v16, Lcom/fh/hdutil/ScanFilesHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/task/MediaTask;->access$400(Lcom/task/MediaTask;)Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/fh/hdutil/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    invoke-static/range {v15 .. v16}, Lcom/task/MediaTask;->access$302(Lcom/task/MediaTask;Lcom/fh/hdutil/ScanFilesHelper;)Lcom/fh/hdutil/ScanFilesHelper;

    .line 272
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$300(Lcom/task/MediaTask;)Lcom/fh/hdutil/ScanFilesHelper;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/fh/hdutil/ScanFilesHelper;->scanFiles(Ljava/lang/String;)V

    .line 289
    .end local v12    # "message":Landroid/os/Message;
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/task/MediaTask;->access$102(Lcom/task/MediaTask;Lokhttp3/Call;)Lokhttp3/Call;

    goto/16 :goto_4

    .line 251
    :catch_1
    move-exception v3

    .line 252
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v15, "MediaTask"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 275
    .end local v3    # "e":Ljava/io/IOException;
    :cond_e
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 277
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 278
    const-string v15, "MediaTask"

    const-string v16, "download file fail, delete file success!"

    invoke-static/range {v15 .. v16}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 283
    .restart local v12    # "message":Landroid/os/Message;
    const/16 v15, 0x53

    iput v15, v12, Landroid/os/Message;->what:I

    .line 284
    const/4 v15, 0x3

    iput v15, v12, Landroid/os/Message;->arg1:I

    .line 285
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-object v15, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 251
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "len":I
    .end local v12    # "message":Landroid/os/Message;
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 252
    const-string v15, "MediaTask"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 275
    :cond_10
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 277
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 278
    const-string v15, "MediaTask"

    const-string v16, "download file fail, delete file success!"

    invoke-static/range {v15 .. v16}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 283
    .restart local v12    # "message":Landroid/os/Message;
    const/16 v15, 0x53

    iput v15, v12, Landroid/os/Message;->what:I

    .line 284
    const/4 v15, 0x3

    iput v15, v12, Landroid/os/Message;->arg1:I

    .line 285
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-object v15, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    invoke-static {v15}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 244
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    .end local v12    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v15

    .line 245
    :goto_7
    if-eqz v9, :cond_12

    .line 246
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 248
    :cond_12
    if-eqz v7, :cond_13

    .line 249
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 254
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/task/MediaTask$1;->val$total:J

    move-wide/from16 v16, v0

    cmp-long v16, v4, v16

    if-ltz v16, :cond_17

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/task/MediaTask;->access$200(Lcom/task/MediaTask;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/task/MediaTask;->access$202(Lcom/task/MediaTask;Z)Z

    .line 257
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_14

    .line 259
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v16

    if-eqz v16, :cond_14

    .line 260
    const-string v16, "MediaTask"

    const-string v17, "download file fail, delete file success!"

    invoke-static/range {v16 .. v17}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v6    # "file":Ljava/io/File;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v16

    if-eqz v16, :cond_16

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 266
    .restart local v12    # "message":Landroid/os/Message;
    const/16 v16, 0x53

    move/from16 v0, v16

    iput v0, v12, Landroid/os/Message;->what:I

    .line 267
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/task/MediaTask;->access$300(Lcom/task/MediaTask;)Lcom/fh/hdutil/ScanFilesHelper;

    move-result-object v16

    if-nez v16, :cond_15

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    new-instance v17, Lcom/fh/hdutil/ScanFilesHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/task/MediaTask;->access$400(Lcom/task/MediaTask;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/fh/hdutil/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    invoke-static/range {v16 .. v17}, Lcom/task/MediaTask;->access$302(Lcom/task/MediaTask;Lcom/fh/hdutil/ScanFilesHelper;)Lcom/fh/hdutil/ScanFilesHelper;

    .line 272
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/task/MediaTask;->access$300(Lcom/task/MediaTask;)Lcom/fh/hdutil/ScanFilesHelper;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/fh/hdutil/ScanFilesHelper;->scanFiles(Ljava/lang/String;)V

    .line 289
    .end local v12    # "message":Landroid/os/Message;
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/task/MediaTask;->access$102(Lcom/task/MediaTask;Lokhttp3/Call;)Lokhttp3/Call;

    throw v15

    .line 251
    :catch_3
    move-exception v3

    .line 252
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v16, "MediaTask"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 275
    .end local v3    # "e":Ljava/io/IOException;
    :cond_17
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_18

    .line 277
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v16

    if-eqz v16, :cond_18

    .line 278
    const-string v16, "MediaTask"

    const-string v17, "download file fail, delete file success!"

    invoke-static/range {v16 .. v17}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v16

    if-eqz v16, :cond_16

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 283
    .restart local v12    # "message":Landroid/os/Message;
    const/16 v16, 0x53

    move/from16 v0, v16

    iput v0, v12, Landroid/os/Message;->what:I

    .line 284
    const/16 v16, 0x3

    move/from16 v0, v16

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->val$filename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/MediaTask$1;->this$0:Lcom/task/MediaTask;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/task/MediaTask;->access$000(Lcom/task/MediaTask;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 244
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "message":Landroid/os/Message;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 235
    :catch_4
    move-exception v3

    goto/16 :goto_1
.end method
