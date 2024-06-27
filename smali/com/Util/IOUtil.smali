.class public Lcom/Util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field private static util:Lcom/Util/IOUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/Util/IOUtil;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/Util/IOUtil;->util:Lcom/Util/IOUtil;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/Util/IOUtil;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/Util/IOUtil;->util:Lcom/Util/IOUtil;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/Util/IOUtil;

    invoke-direct {v0}, Lcom/Util/IOUtil;-><init>()V

    sput-object v0, Lcom/Util/IOUtil;->util:Lcom/Util/IOUtil;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/Util/IOUtil;->util:Lcom/Util/IOUtil;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public write(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 31
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 33
    .local v0, "b":[B
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 34
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v2, :cond_0

    .line 40
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 36
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    if-eqz v2, :cond_0

    .line 40
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 41
    :catch_2
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 40
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 43
    :cond_1
    :goto_1
    throw v3

    .line 41
    :catch_3
    move-exception v1

    .line 42
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
