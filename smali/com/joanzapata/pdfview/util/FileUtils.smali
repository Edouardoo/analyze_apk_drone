.class public Lcom/joanzapata/pdfview/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 41
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 42
    .local v3, "read":I
    const/16 v4, 0x400

    :try_start_1
    new-array v0, v4, [B

    .line 43
    .local v0, "bytes":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 44
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v4

    move-object v1, v2

    .line 48
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "read":I
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    if-eqz p0, :cond_0

    .line 49
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 52
    :cond_0
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v4

    .line 48
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "bytes":[B
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "read":I
    :cond_2
    if-eqz p0, :cond_3

    .line 49
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    :cond_3
    if-eqz v2, :cond_4

    .line 53
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 57
    :cond_4
    return-void

    .line 52
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_5

    .line 53
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v4

    .line 52
    .end local v0    # "bytes":[B
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "read":I
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v4

    if-eqz v1, :cond_6

    .line 53
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v4

    .line 47
    :catchall_3
    move-exception v4

    goto :goto_1
.end method

.method public static fileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-pdfview.pdf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .local v0, "outFile":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/joanzapata/pdfview/util/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    .line 34
    return-object v0
.end method
