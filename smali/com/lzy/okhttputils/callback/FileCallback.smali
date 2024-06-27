.class public abstract Lcom/lzy/okhttputils/callback/FileCallback;
.super Lcom/lzy/okhttputils/callback/AbsCallback;
.source "FileCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/callback/AbsCallback",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final DM_TARGET_FOLDER:Ljava/lang/String;


# instance fields
.field private destFileDir:Ljava/lang/String;

.field private destFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/callback/FileCallback;->DM_TARGET_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "destFileName"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lzy/okhttputils/callback/FileCallback;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lzy/okhttputils/callback/FileCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "destFileDir"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destFileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lzy/okhttputils/callback/AbsCallback;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileDir:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private getUrlFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    .line 116
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 118
    .local v1, "index":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 119
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "filename":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 121
    .end local v0    # "filename":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filename":Ljava/lang/String;
    goto :goto_0
.end method

.method private saveFile(Lokhttp3/Response;)Ljava/io/File;
    .locals 32
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileDir:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v11, "dir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v19, "file":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 62
    :cond_1
    const-wide/16 v24, 0x0

    .line 63
    .local v24, "lastRefreshUiTime":J
    const-wide/16 v26, 0x0

    .line 65
    .local v26, "lastWriteBytes":J
    const/16 v22, 0x0

    .line 66
    .local v22, "is":Ljava/io/InputStream;
    const/16 v2, 0x800

    new-array v10, v2, [B

    .line 67
    .local v10, "buf":[B
    const/16 v20, 0x0

    .line 69
    .local v20, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v22

    .line 70
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 71
    .local v6, "total":J
    const-wide/16 v28, 0x0

    .line 73
    .local v28, "sum":J
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .local v21, "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    :try_start_1
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    move-result v23

    .local v23, "len":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_5

    .line 75
    move/from16 v0, v23

    int-to-long v2, v0

    add-long v28, v28, v2

    .line 76
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v10, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 77
    move-wide/from16 v4, v28

    .line 79
    .local v4, "finalSum":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 81
    .local v12, "curTime":J
    sub-long v2, v12, v24

    const-wide/16 v30, 0xc8

    cmp-long v2, v2, v30

    if-gez v2, :cond_3

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 83
    :cond_3
    sub-long v2, v12, v24

    const-wide/16 v30, 0x3e8

    div-long v16, v2, v30

    .line 84
    .local v16, "diffTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x1

    add-long v16, v16, v2

    .line 85
    :cond_4
    sub-long v14, v4, v26

    .line 86
    .local v14, "diffBytes":J
    div-long v8, v14, v16

    .line 87
    .local v8, "networkSpeed":J
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzy/okhttputils/OkHttpUtils;->getDelivery()Landroid/os/Handler;

    move-result-object v30

    new-instance v2, Lcom/lzy/okhttputils/callback/FileCallback$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/lzy/okhttputils/callback/FileCallback$1;-><init>(Lcom/lzy/okhttputils/callback/FileCallback;JJJ)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 95
    move-wide/from16 v26, v4

    goto :goto_0

    .line 98
    .end local v4    # "finalSum":J
    .end local v8    # "networkSpeed":J
    .end local v12    # "curTime":J
    .end local v14    # "diffBytes":J
    .end local v16    # "diffTime":J
    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    if-eqz v22, :cond_6

    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 107
    :cond_6
    :goto_1
    if-eqz v21, :cond_7

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 110
    :cond_7
    :goto_2
    return-object v19

    .line 103
    :catch_0
    move-exception v18

    .line 104
    .local v18, "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v18    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v18

    .line 109
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 101
    .end local v6    # "total":J
    .end local v18    # "e":Ljava/io/IOException;
    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .end local v23    # "len":I
    .end local v28    # "sum":J
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    .line 102
    :goto_3
    if-eqz v22, :cond_8

    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 107
    :cond_8
    :goto_4
    if-eqz v20, :cond_9

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 110
    :cond_9
    :goto_5
    throw v2

    .line 103
    :catch_2
    move-exception v18

    .line 104
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 108
    .end local v18    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v18

    .line 109
    .restart local v18    # "e":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 101
    .end local v18    # "e":Ljava/io/IOException;
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "total":J
    .restart local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v28    # "sum":J
    :catchall_1
    move-exception v2

    move-object/from16 v20, v21

    .end local v21    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public parseNetworkResponse(Lokhttp3/Response;)Ljava/io/File;
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/callback/FileCallback;->saveFile(Lokhttp3/Response;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/callback/FileCallback;->parseNetworkResponse(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
