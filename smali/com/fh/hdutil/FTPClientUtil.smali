.class public Lcom/fh/hdutil/FTPClientUtil;
.super Ljava/lang/Object;
.source "FTPClientUtil.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;


# static fields
.field private static failedNum:I

.field private static instance:Lcom/fh/hdutil/FTPClientUtil;


# instance fields
.field private chooseType:I

.field private currentFTPPath:Ljava/lang/String;

.field private mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "FTPClientUtil"

    iput-object v0, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/fh/hdutil/FTPClientUtil;->chooseType:I

    .line 39
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object v0, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    .line 40
    return-void
.end method

.method private checkExistPath(Ljava/lang/String;)Z
    .locals 14
    .param p1, "subPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 146
    const/4 v6, 0x0

    .line 147
    .local v6, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 149
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 150
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "paths":[Ljava/lang/String;
    :goto_0
    const-string v3, ""

    .line 155
    .local v3, "mPath":Ljava/lang/String;
    array-length v11, v5

    move v10, v8

    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v4, v5, v10

    .line 156
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 158
    :try_start_0
    iget-object v9, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_1

    move v7, v6

    .line 180
    .end local v3    # "mPath":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "paths":[Ljava/lang/String;
    .end local v6    # "result":Z
    .local v7, "result":Z
    :goto_2
    return v8

    .line 152
    .end local v7    # "result":Z
    .restart local v6    # "result":Z
    :cond_0
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    aput-object p1, v5, v8

    .restart local v5    # "paths":[Ljava/lang/String;
    goto :goto_0

    .line 160
    .restart local v3    # "mPath":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/apache/commons/net/ftp/FTPClient;->listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    .line 161
    .local v0, "dirs":[Lorg/apache/commons/net/ftp/FTPFile;
    if-eqz v0, :cond_2

    .line 162
    array-length v12, v0

    move v9, v8

    :goto_3
    if-ge v9, v12, :cond_2

    aget-object v2, v0, v9

    .line 163
    .local v2, "file":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 164
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 165
    move-object v3, v4

    .line 155
    .end local v0    # "dirs":[Lorg/apache/commons/net/ftp/FTPFile;
    .end local v2    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_2
    :goto_4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    .line 167
    .restart local v0    # "dirs":[Lorg/apache/commons/net/ftp/FTPFile;
    .restart local v2    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 169
    goto :goto_4

    .line 162
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 173
    .end local v0    # "dirs":[Lorg/apache/commons/net/ftp/FTPFile;
    .end local v2    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 178
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "path":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .end local v3    # "mPath":Ljava/lang/String;
    .end local v5    # "paths":[Ljava/lang/String;
    :cond_6
    move v7, v6

    .end local v6    # "result":Z
    .restart local v7    # "result":Z
    move v8, v6

    .line 180
    goto :goto_2
.end method

.method public static getInstance()Lcom/fh/hdutil/FTPClientUtil;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/fh/hdutil/FTPClientUtil;->instance:Lcom/fh/hdutil/FTPClientUtil;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/fh/hdutil/FTPClientUtil;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/fh/hdutil/FTPClientUtil;->instance:Lcom/fh/hdutil/FTPClientUtil;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/fh/hdutil/FTPClientUtil;

    invoke-direct {v0}, Lcom/fh/hdutil/FTPClientUtil;-><init>()V

    sput-object v0, Lcom/fh/hdutil/FTPClientUtil;->instance:Lcom/fh/hdutil/FTPClientUtil;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/fh/hdutil/FTPClientUtil;->instance:Lcom/fh/hdutil/FTPClientUtil;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public changeWorkPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, "-connectAndLoginFTP- parameter is empty!"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3, p1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v1

    .line 130
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 131
    iput-object p1, p0, Lcom/fh/hdutil/FTPClientUtil;->currentFTPPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    move v1, v2

    .line 138
    goto :goto_0
.end method

.method public connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "hostName"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "changePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, "-connectAndLoginFTP- parameter is empty!"

    invoke-static {v2, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 112
    :goto_0
    return v2

    .line 74
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v4, :cond_2

    .line 75
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4, p2}, Lorg/apache/commons/net/ftp/FTPClient;->setDefaultPort(I)V

    .line 76
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const v5, 0x9c40

    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setDataTimeout(I)V

    .line 77
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/16 v5, 0x4e20

    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    .line 78
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4, p1}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v4

    invoke-static {v4}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4, p3, p4}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 83
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->printWorkingDirectory()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    .line 84
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect Ftp server success, root Path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fh/hdutil/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 86
    invoke-direct {p0, p5}, Lcom/fh/hdutil/FTPClientUtil;->checkExistPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fh/hdutil/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect Ftp server success!  currentFTPPath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object v1, p0, Lcom/fh/hdutil/FTPClientUtil;->currentFTPPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 104
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/net/SocketException;
    iget-object v2, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectFTP SocketException ===> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    move v2, v3

    .line 112
    goto/16 :goto_0

    .line 94
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The path does not exist in the ftp server, changePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v5, "connect Ftp server success!"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectFTP IOException ===> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public disconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v1, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 191
    iget-object v1, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iput-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect IOException --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iput-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/fh/hdutil/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    throw v1
.end method

.method public downLoadUpdateFile(Ljava/lang/String;IILandroid/os/Handler;)Ljava/util/List;
    .locals 28
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "updateType"    # I
    .param p3, "fileType"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, "filename, localPath is null!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/16 v27, 0x0

    .line 451
    :cond_0
    :goto_0
    return-object v27

    .line 318
    :cond_1
    const/16 v18, 0x0

    .line 319
    .local v18, "outUpdateFileStream":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 320
    .local v15, "inputUpdateFileStream":Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 321
    .local v21, "remoteFilePath":Ljava/lang/String;
    const/16 v24, 0x0

    .line 322
    .local v24, "saveFilePath":Ljava/lang/String;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v27, "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v3, "cam.jieli.net"

    const/16 v4, 0x15

    const-string v5, "wifi@baidu.com"

    const-string v6, "wifi123456"

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/fh/hdutil/FTPClientUtil;->connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listNames()[Ljava/lang/String;

    move-result-object v14

    .line 326
    .local v14, "ftpFilesNames":[Ljava/lang/String;
    if-eqz v14, :cond_2

    array-length v2, v14

    if-nez v2, :cond_4

    .line 327
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    const/16 v27, 0x0

    .line 433
    .end local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 435
    if-eqz v15, :cond_3

    .line 436
    :try_start_1
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 438
    :cond_3
    if-eqz v18, :cond_0

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v9

    .line 442
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 330
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/16 v26, 0x0

    .line 331
    .local v26, "updateFileName":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    .line 332
    :try_start_2
    array-length v3, v14

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_8

    aget-object v13, v14, v2

    .line 333
    .local v13, "filename":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 332
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filename --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v4, ".txt"

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, ".TXT"

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 336
    :cond_7
    move-object/from16 v26, v13

    .line 357
    .end local v13    # "filename":Ljava/lang/String;
    :cond_8
    :goto_2
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_10

    .line 358
    const/16 v27, 0x0

    .line 433
    .end local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 435
    if-eqz v15, :cond_9

    .line 436
    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 438
    :cond_9
    if-eqz v18, :cond_0

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 441
    :catch_1
    move-exception v9

    .line 442
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 341
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    :try_start_4
    array-length v3, v14

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_8

    aget-object v13, v14, v2

    .line 342
    .restart local v13    # "filename":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 341
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 343
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filename --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_e

    .line 345
    const-string v4, ".apk"

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, ".APK"

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 346
    :cond_d
    move-object/from16 v26, v13

    .line 347
    goto :goto_2

    .line 349
    :cond_e
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_b

    .line 350
    const-string v4, ".bfu"

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, ".BFU"

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 351
    :cond_f
    move-object/from16 v26, v13

    .line 352
    goto :goto_2

    .line 360
    .end local v13    # "filename":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-downLoadUpdateFile- updateFileName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgrade"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 362
    .local v17, "localUpdatePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 364
    new-instance v23, Ljava/io/File;

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .local v23, "saveFile":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 366
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, "delete exists update file !"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 371
    :cond_11
    :try_start_5
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 378
    .end local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .local v19, "outUpdateFileStream":Ljava/io/FileOutputStream;
    const v2, 0xfaf0

    :try_start_6
    new-array v8, v2, [B

    .line 379
    .local v8, "buffer":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 381
    const-wide/16 v10, 0x0

    .line 382
    .local v10, "downloadFileSize":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v22

    .line 383
    .local v22, "remoteFiles":[Lorg/apache/commons/net/ftp/FTPFile;
    if-eqz v22, :cond_16

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-downLoadUpdateFile- remoteFiles size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, v22

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_12

    aget-object v12, v22, v2

    .line 386
    .local v12, "file":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-downLoadUpdateFile- file name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-downLoadUpdateFile- download File size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v10

    .line 398
    .end local v12    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 399
    if-nez v15, :cond_18

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, "-downLoadUpdateFile- inputUpdateFileStream is empty !"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 402
    const/16 v27, 0x0

    .line 433
    .end local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 435
    if-eqz v15, :cond_13

    .line 436
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 438
    :cond_13
    if-eqz v19, :cond_0

    .line 439
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 441
    :catch_2
    move-exception v9

    .line 442
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 372
    .end local v8    # "buffer":[B
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "downloadFileSize":J
    .end local v19    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .end local v22    # "remoteFiles":[Lorg/apache/commons/net/ftp/FTPFile;
    .restart local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v9

    .line 373
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 375
    const/16 v27, 0x0

    .line 433
    .end local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 435
    if-eqz v15, :cond_14

    .line 436
    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 438
    :cond_14
    if-eqz v18, :cond_0

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 441
    :catch_4
    move-exception v9

    .line 442
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 385
    .end local v9    # "e":Ljava/io/IOException;
    .end local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v8    # "buffer":[B
    .restart local v10    # "downloadFileSize":J
    .restart local v12    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    .restart local v19    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v22    # "remoteFiles":[Lorg/apache/commons/net/ftp/FTPFile;
    .restart local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 394
    .end local v12    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_16
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, "-downLoadUpdateFile- remoteFile is null!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 396
    const/16 v27, 0x0

    .line 433
    .end local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 435
    if-eqz v15, :cond_17

    .line 436
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 438
    :cond_17
    if-eqz v19, :cond_0

    .line 439
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 441
    :catch_5
    move-exception v9

    .line 442
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 404
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v27    # "updatePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    const/16 v25, 0x0

    .line 405
    .local v25, "size":I
    :cond_19
    :goto_5
    :try_start_c
    invoke-virtual {v15, v8}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, "length":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1c

    .line 406
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 407
    add-int v25, v25, v16

    .line 408
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_19

    .line 409
    mul-int/lit8 v2, v25, 0x64

    int-to-long v2, v2

    div-long/2addr v2, v10

    long-to-int v0, v2

    move/from16 v20, v0

    .line 410
    .local v20, "progress":I
    rem-int/lit8 v2, v20, 0x2

    if-nez v2, :cond_19

    .line 411
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_19

    .line 412
    if-eqz p4, :cond_19

    .line 413
    const/16 v2, 0x5566

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    .line 429
    .end local v8    # "buffer":[B
    .end local v10    # "downloadFileSize":J
    .end local v16    # "length":I
    .end local v20    # "progress":I
    .end local v22    # "remoteFiles":[Lorg/apache/commons/net/ftp/FTPFile;
    .end local v25    # "size":I
    :catch_6
    move-exception v9

    move-object/from16 v18, v19

    .line 430
    .end local v14    # "ftpFilesNames":[Ljava/lang/String;
    .end local v17    # "localUpdatePath":Ljava/lang/String;
    .end local v19    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .end local v23    # "saveFile":Ljava/io/File;
    .end local v26    # "updateFileName":Ljava/lang/String;
    .restart local v9    # "e":Ljava/io/IOException;
    .restart local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_d
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 431
    const/16 v21, 0x0

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 435
    if-eqz v15, :cond_1a

    .line 436
    :try_start_e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 438
    :cond_1a
    if-eqz v18, :cond_1b

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 446
    .end local v9    # "e":Ljava/io/IOException;
    :cond_1b
    :goto_7
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 419
    .end local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v8    # "buffer":[B
    .restart local v10    # "downloadFileSize":J
    .restart local v14    # "ftpFilesNames":[Ljava/lang/String;
    .restart local v16    # "length":I
    .restart local v17    # "localUpdatePath":Ljava/lang/String;
    .restart local v19    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v22    # "remoteFiles":[Lorg/apache/commons/net/ftp/FTPFile;
    .restart local v23    # "saveFile":Ljava/io/File;
    .restart local v25    # "size":I
    .restart local v26    # "updateFileName":Ljava/lang/String;
    :cond_1c
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, "-downLoadUpdateFile- download File success"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_8
    move-object/from16 v18, v19

    .line 433
    .end local v8    # "buffer":[B
    .end local v10    # "downloadFileSize":J
    .end local v14    # "ftpFilesNames":[Ljava/lang/String;
    .end local v16    # "length":I
    .end local v17    # "localUpdatePath":Ljava/lang/String;
    .end local v19    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .end local v22    # "remoteFiles":[Lorg/apache/commons/net/ftp/FTPFile;
    .end local v23    # "saveFile":Ljava/io/File;
    .end local v25    # "size":I
    .end local v26    # "updateFileName":Ljava/lang/String;
    .restart local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 435
    if-eqz v15, :cond_1d

    .line 436
    :try_start_10
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 438
    :cond_1d
    if-eqz v18, :cond_1b

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_7

    .line 441
    :catch_7
    move-exception v9

    .line 442
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 422
    .end local v9    # "e":Ljava/io/IOException;
    .end local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v8    # "buffer":[B
    .restart local v10    # "downloadFileSize":J
    .restart local v14    # "ftpFilesNames":[Ljava/lang/String;
    .restart local v16    # "length":I
    .restart local v17    # "localUpdatePath":Ljava/lang/String;
    .restart local v19    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v22    # "remoteFiles":[Lorg/apache/commons/net/ftp/FTPFile;
    .restart local v23    # "saveFile":Ljava/io/File;
    .restart local v25    # "size":I
    .restart local v26    # "updateFileName":Ljava/lang/String;
    :cond_1e
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, "-downLoadUpdateFile- download File failed"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 423
    const/16 v21, 0x0

    goto :goto_8

    .line 426
    .end local v8    # "buffer":[B
    .end local v10    # "downloadFileSize":J
    .end local v14    # "ftpFilesNames":[Ljava/lang/String;
    .end local v16    # "length":I
    .end local v17    # "localUpdatePath":Ljava/lang/String;
    .end local v19    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .end local v22    # "remoteFiles":[Lorg/apache/commons/net/ftp/FTPFile;
    .end local v23    # "saveFile":Ljava/io/File;
    .end local v25    # "size":I
    .end local v26    # "updateFileName":Ljava/lang/String;
    .restart local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    :cond_1f
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, "login ftp server failed!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 427
    const/16 v21, 0x0

    goto :goto_9

    .line 441
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    .line 442
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 433
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 435
    if-eqz v15, :cond_20

    .line 436
    :try_start_13
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 438
    :cond_20
    if-eqz v18, :cond_21

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 443
    :cond_21
    :goto_b
    throw v2

    .line 441
    :catch_9
    move-exception v9

    .line 442
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 433
    .end local v9    # "e":Ljava/io/IOException;
    .end local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v14    # "ftpFilesNames":[Ljava/lang/String;
    .restart local v17    # "localUpdatePath":Ljava/lang/String;
    .restart local v19    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v23    # "saveFile":Ljava/io/File;
    .restart local v26    # "updateFileName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    .restart local v18    # "outUpdateFileStream":Ljava/io/FileOutputStream;
    goto :goto_a

    .line 429
    .end local v14    # "ftpFilesNames":[Ljava/lang/String;
    .end local v17    # "localUpdatePath":Ljava/lang/String;
    .end local v23    # "saveFile":Ljava/io/File;
    .end local v26    # "updateFileName":Ljava/lang/String;
    :catch_a
    move-exception v9

    goto/16 :goto_6
.end method

.method public downloadTxt(Ljava/util/List;Z)V
    .locals 21
    .param p2, "isOk"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "platforms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 209
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, " downloadTxt parameters is empty!"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    if-eqz p2, :cond_4

    .line 213
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 214
    const/4 v3, 0x0

    sput v3, Lcom/fh/hdutil/FTPClientUtil;->failedNum:I

    .line 222
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 223
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 224
    .local v8, "changePath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, " downloadTxt changePath is empty!"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v8    # "changePath":Ljava/lang/String;
    :cond_4
    sget v3, Lcom/fh/hdutil/FTPClientUtil;->failedNum:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/fh/hdutil/FTPClientUtil;->failedNum:I

    .line 217
    sget v3, Lcom/fh/hdutil/FTPClientUtil;->failedNum:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    .line 218
    const/4 v3, 0x0

    sput v3, Lcom/fh/hdutil/FTPClientUtil;->failedNum:I

    .line 219
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 228
    .restart local v8    # "changePath":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 229
    .local v20, "versionDir":Ljava/lang/String;
    const/16 v17, 0x0

    .line 230
    .local v17, "outputStream":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 232
    .local v12, "inputStream":Ljava/io/InputStream;
    const v3, 0xfaf0

    new-array v9, v3, [B

    .line 234
    .local v9, "buffer":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v3, :cond_6

    .line 235
    new-instance v3, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    .line 237
    :cond_6
    const-string v4, "cam.jieli.net"

    const/16 v5, 0x15

    const-string v6, "wifi@baidu.com"

    const-string v7, "wifi123456"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/fh/hdutil/FTPClientUtil;->connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->listNames()[Ljava/lang/String;

    move-result-object v11

    .line 239
    .local v11, "filesName":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 240
    .local v13, "isSameValue":Z
    if-eqz v11, :cond_13

    array-length v3, v11

    if-lez v3, :cond_13

    .line 241
    array-length v4, v11

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_7

    aget-object v15, v11, v3

    .line 242
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ftp list name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v5, "version.json"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-eqz v5, :cond_9

    .line 244
    const/4 v13, 0x1

    .line 248
    .end local v15    # "name":Ljava/lang/String;
    :cond_7
    if-eqz v13, :cond_12

    .line 250
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "version.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 251
    .local v16, "outPath":Ljava/lang/String;
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .local v18, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const-string v4, "version.json"

    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 259
    if-nez v12, :cond_b

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, "downloadTxt inputStream is empty !"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 262
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/fh/hdutil/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 293
    if-eqz v12, :cond_8

    .line 294
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_8
    if-eqz v18, :cond_1

    .line 297
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 299
    :catch_0
    move-exception v10

    .line 300
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 241
    .end local v10    # "e":Ljava/io/IOException;
    .end local v16    # "outPath":Ljava/lang/String;
    .end local v18    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 252
    .end local v15    # "name":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 253
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 255
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/fh/hdutil/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 293
    if-eqz v12, :cond_a

    .line 294
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_a
    if-eqz v17, :cond_1

    .line 297
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 299
    :catch_2
    move-exception v10

    .line 300
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 265
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outPath":Ljava/lang/String;
    .restart local v18    # "outputStream":Ljava/io/FileOutputStream;
    :cond_b
    :goto_3
    :try_start_6
    invoke-virtual {v12, v9}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, "length":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_d

    .line 266
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v3, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 287
    .end local v14    # "length":I
    :catch_3
    move-exception v10

    move-object/from16 v17, v18

    .line 288
    .end local v11    # "filesName":[Ljava/lang/String;
    .end local v13    # "isSameValue":Z
    .end local v16    # "outPath":Ljava/lang/String;
    .end local v18    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "e":Ljava/io/IOException;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadTxt IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 293
    if-eqz v12, :cond_c

    .line 294
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_c
    if-eqz v17, :cond_1

    .line 297
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 299
    :catch_4
    move-exception v10

    .line 300
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 268
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "filesName":[Ljava/lang/String;
    .restart local v13    # "isSameValue":Z
    .restart local v14    # "length":I
    .restart local v16    # "outPath":Ljava/lang/String;
    .restart local v18    # "outputStream":Ljava/io/FileOutputStream;
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v19

    .line 269
    .local v19, "result":Z
    if-eqz v19, :cond_f

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, " download VERSION_JSON success"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fh/hdutil/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v17, v18

    .line 291
    .end local v11    # "filesName":[Ljava/lang/String;
    .end local v13    # "isSameValue":Z
    .end local v14    # "length":I
    .end local v16    # "outPath":Ljava/lang/String;
    .end local v18    # "outputStream":Ljava/io/FileOutputStream;
    .end local v19    # "result":Z
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 293
    if-eqz v12, :cond_e

    .line 294
    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_e
    if-eqz v17, :cond_1

    .line 297
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 299
    :catch_5
    move-exception v10

    .line 300
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 272
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "filesName":[Ljava/lang/String;
    .restart local v13    # "isSameValue":Z
    .restart local v14    # "length":I
    .restart local v16    # "outPath":Ljava/lang/String;
    .restart local v18    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v19    # "result":Z
    :cond_f
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, " download VERSION_JSON failed"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 291
    .end local v14    # "length":I
    .end local v19    # "result":Z
    :catchall_0
    move-exception v3

    move-object/from16 v17, v18

    .end local v11    # "filesName":[Ljava/lang/String;
    .end local v13    # "isSameValue":Z
    .end local v16    # "outPath":Ljava/lang/String;
    .end local v18    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 293
    if-eqz v12, :cond_10

    .line 294
    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_10
    if-eqz v17, :cond_11

    .line 297
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 301
    :cond_11
    :goto_8
    throw v3

    .line 277
    .restart local v11    # "filesName":[Ljava/lang/String;
    .restart local v13    # "isSameValue":Z
    :cond_12
    const/4 v3, 0x0

    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/fh/hdutil/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V

    goto :goto_6

    .line 287
    .end local v11    # "filesName":[Ljava/lang/String;
    .end local v13    # "isSameValue":Z
    :catch_6
    move-exception v10

    goto/16 :goto_4

    .line 280
    .restart local v11    # "filesName":[Ljava/lang/String;
    .restart local v13    # "isSameValue":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, "filesName == null!"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/fh/hdutil/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V

    goto :goto_6

    .line 291
    .end local v11    # "filesName":[Ljava/lang/String;
    .end local v13    # "isSameValue":Z
    :catchall_1
    move-exception v3

    goto :goto_7

    .line 284
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, " connectAndLoginFTP failed!"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/fh/hdutil/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    .line 299
    :catch_7
    move-exception v10

    .line 300
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method

.method public getChooseType()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/fh/hdutil/FTPClientUtil;->chooseType:I

    return v0
.end method

.method public getCurrentFTPPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fh/hdutil/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFTPClient()Lorg/apache/commons/net/ftp/FTPClient;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object v0, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    return-object v0
.end method

.method public setChooseType(I)V
    .locals 0
    .param p1, "chooseType"    # I

    .prologue
    .line 571
    iput p1, p0, Lcom/fh/hdutil/FTPClientUtil;->chooseType:I

    .line 572
    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)Z
    .locals 18
    .param p1, "remotePathName"    # Ljava/lang/String;
    .param p2, "localFilePath"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/app/Activity;

    .prologue
    .line 464
    const/4 v10, 0x0

    .line 465
    .local v10, "inputStream":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 466
    .local v13, "outputStream":Ljava/io/OutputStream;
    const-wide/16 v14, 0x0

    .line 467
    .local v14, "localFileSize":J
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 468
    .local v11, "ip":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v3, "192.168.80.1"

    :goto_0
    const/16 v4, 0x15

    const-string v5, "FTPX"

    const-string v6, "12345678"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/fh/hdutil/FTPClientUtil;->connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    const/16 v17, 0x0

    .line 471
    .local v17, "size":I
    const/16 v16, 0x0

    .line 483
    .local v16, "progress":I
    :try_start_0
    const-string v2, "JL_AC5X"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 484
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 485
    const-string p1, "JL_ACSFC"

    .line 486
    const-string v2, "update"

    const-string v3, "uploadFile:JL_AC5X"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_1
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v14, v2

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-uploadFile- connect ftp success, localFileSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    if-eqz v10, :cond_f

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/high16 v3, 0x500000

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->setBufferSize(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v13

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, "upload..."

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz v13, :cond_10

    .line 518
    const-string v2, "upload"

    const-string v3, "outputStream-File: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const v2, 0xfaf0

    new-array v8, v2, [B

    .line 520
    .local v8, "buf":[B
    :cond_0
    :goto_2
    invoke-virtual {v10, v8}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "length":I
    const/4 v2, -0x1

    if-eq v12, v2, :cond_d

    .line 521
    const/4 v2, 0x0

    invoke-virtual {v13, v8, v2, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 522
    add-int v17, v17, v12

    .line 523
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_0

    .line 524
    mul-int/lit8 v2, v17, 0x64

    int-to-long v2, v2

    div-long/2addr v2, v14

    long-to-int v0, v2

    move/from16 v16, v0

    .line 525
    rem-int/lit8 v2, v16, 0x2

    if-nez v2, :cond_0

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-uploadFile- progress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-eqz p3, :cond_0

    .line 528
    const/16 v2, 0x5567

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 542
    .end local v8    # "buf":[B
    .end local v12    # "length":I
    :catch_0
    move-exception v9

    .line 543
    .local v9, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "upload"

    const-string v3, "IOException-File: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    if-eqz v10, :cond_1

    .line 548
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 553
    :cond_1
    :goto_3
    if-eqz v13, :cond_2

    .line 555
    :try_start_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 562
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "progress":I
    .end local v17    # "size":I
    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 563
    const/4 v2, 0x0

    :cond_3
    :goto_5
    return v2

    :cond_4
    move-object v3, v11

    .line 468
    goto/16 :goto_0

    .line 488
    .restart local v16    # "progress":I
    .restart local v17    # "size":I
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fh/hdutil/FTPClientUtil;->chooseType:I

    if-nez v2, :cond_8

    .line 489
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 490
    const-string v2, "update"

    const-string v3, "uploadFile: jl_ac51=0"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :goto_6
    const-string v2, "update"

    const-string v3, "uploadFile: jl_ac51"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 546
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 548
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 553
    :cond_6
    :goto_7
    if-eqz v13, :cond_7

    .line 555
    :try_start_6
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 558
    :cond_7
    :goto_8
    throw v2

    .line 491
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fh/hdutil/FTPClientUtil;->chooseType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 492
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 493
    const-string v2, "update"

    const-string v3, "uploadFile: jl_ac51=1"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 494
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fh/hdutil/FTPClientUtil;->chooseType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 495
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 496
    const-string v2, "update"

    const-string v3, "uploadFile: jl_ac51=2"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 497
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fh/hdutil/FTPClientUtil;->chooseType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 498
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 499
    const-string v2, "update"

    const-string v3, "uploadFile: jl_ac51=3"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 501
    :cond_b
    const/4 v2, 0x0

    .line 546
    if-eqz v10, :cond_c

    .line 548
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 553
    :cond_c
    :goto_9
    if-eqz v13, :cond_3

    .line 555
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_5

    .line 556
    :catch_1
    move-exception v9

    .line 557
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 549
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 550
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 533
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v8    # "buf":[B
    .restart local v12    # "length":I
    :cond_d
    const-wide/16 v2, 0x7d0

    :try_start_a
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/fh/hdutil/FTPClientUtil;->disconnect()V

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fh/hdutil/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-uploadFile- size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,localFileSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 536
    move/from16 v0, v17

    int-to-long v2, v0

    cmp-long v2, v2, v14

    if-ltz v2, :cond_10

    .line 537
    const/4 v2, 0x1

    .line 546
    if-eqz v10, :cond_e

    .line 548
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 553
    :cond_e
    :goto_a
    if-eqz v13, :cond_3

    .line 555
    :try_start_c
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_5

    .line 556
    :catch_3
    move-exception v9

    .line 557
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 549
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 550
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 541
    .end local v8    # "buf":[B
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "length":I
    :cond_f
    :try_start_d
    const-string v2, "upload"

    const-string v3, "upload-File-null: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 546
    :cond_10
    if-eqz v10, :cond_11

    .line 548
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 553
    :cond_11
    :goto_b
    if-eqz v13, :cond_2

    .line 555
    :try_start_f
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_4

    .line 556
    :catch_5
    move-exception v9

    .line 557
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 549
    .end local v9    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 550
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 549
    :catch_7
    move-exception v9

    .line 550
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 556
    :catch_8
    move-exception v9

    .line 557
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 549
    .end local v9    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v9

    .line 550
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 556
    .end local v9    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 557
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8
.end method
