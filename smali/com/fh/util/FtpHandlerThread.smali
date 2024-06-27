.class public Lcom/fh/util/FtpHandlerThread;
.super Landroid/os/HandlerThread;
.source "FtpHandlerThread.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CURRENT_DOWNLOAD_PROGRESS:I = 0x10d

.field private static final FTP_SERVER_DIR_FRONT:Ljava/lang/String; = "/DCIMA"

.field private static final FTP_SERVER_DIR_REAR:Ljava/lang/String; = "/DCIMB"

.field public static final MSG_CANCEL_THREAD_POOL:I = 0x10c

.field public static final MSG_CHANGE_TO_PARENT_DIR:I = 0x101

.field public static final MSG_CHANGE_TO_SUBDIR:I = 0x100

.field public static final MSG_CONNECT_SERVER:I = 0x99

.field public static final MSG_CREATE:I = 0x108

.field public static final MSG_DELETE:I = 0x107

.field public static final MSG_DELETE_SUCCESS:I = 0x103

.field public static final MSG_DOWNLOAD:I = 0x105

.field public static final MSG_FTP_LOGOUT:I = 0x10a

.field public static final MSG_RENAME:I = 0x109

.field public static final MSG_SHOW_MESSAGES:I = 0x104

.field public static final MSG_UPDATE_UI:I = 0x102

.field public static final MSG_UPLOAD:I = 0x106

.field public static final MSG_VIDEO_MESSAGE:I = 0x10b


# instance fields
.field private final context:Landroid/content/Context;

.field private ftpAdd:Ljava/lang/String;

.field private ftpFiles:[Lorg/apache/commons/net/ftp/FTPFile;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAVI:Z

.field private isDestroyThread:Z

.field private isFileLoaded:Z

.field private isLoading:Z

.field private isStopDownLoadThread:Z

.field private isThumbLoading:Z

.field private isversion:Z

.field private mApplication:Lcom/hfufo/rxdrone/MainApplication;

.field private mCurrBrowsingDevDir:Ljava/lang/String;

.field private mCurrentPath:Ljava/lang/StringBuffer;

.field private mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fh/util/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;

.field private mWorkerHandler:Landroid/os/Handler;

.field private password:Ljava/lang/String;

.field private port:I

.field private rootPath:Ljava/lang/String;

.field private servie:Ljava/util/concurrent/ExecutorService;

.field private final tag:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/hfufo/rxdrone/MainApplication;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "application"    # Lcom/hfufo/rxdrone/MainApplication;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    const/16 v0, -0x13

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->tag:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->rootPath:Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/fh/util/FtpHandlerThread;->port:I

    .line 67
    iput-boolean v1, p0, Lcom/fh/util/FtpHandlerThread;->isLoading:Z

    .line 68
    iput-boolean v1, p0, Lcom/fh/util/FtpHandlerThread;->isThumbLoading:Z

    .line 69
    iput-boolean v1, p0, Lcom/fh/util/FtpHandlerThread;->isFileLoaded:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mList:Ljava/util/List;

    .line 73
    iput-object v2, p0, Lcom/fh/util/FtpHandlerThread;->servie:Ljava/util/concurrent/ExecutorService;

    .line 74
    iput-object v2, p0, Lcom/fh/util/FtpHandlerThread;->future:Ljava/util/concurrent/Future;

    .line 75
    iput-boolean v1, p0, Lcom/fh/util/FtpHandlerThread;->isAVI:Z

    .line 76
    iput-boolean v1, p0, Lcom/fh/util/FtpHandlerThread;->isStopDownLoadThread:Z

    .line 77
    iput-boolean v1, p0, Lcom/fh/util/FtpHandlerThread;->isDestroyThread:Z

    .line 78
    iput-object v2, p0, Lcom/fh/util/FtpHandlerThread;->ftpFiles:[Lorg/apache/commons/net/ftp/FTPFile;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fh/util/FtpHandlerThread;->isversion:Z

    .line 86
    iput-object p2, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    .line 87
    iput-object p3, p0, Lcom/fh/util/FtpHandlerThread;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 88
    invoke-direct {p0}, Lcom/fh/util/FtpHandlerThread;->init()V

    .line 89
    return-void
.end method

.method private declared-synchronized connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "root"    # Z

    .prologue
    const/4 v2, 0x0

    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 203
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->tag:Ljava/lang/String;

    const-string v4, "Parameter is null!"

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    monitor-exit p0

    return v2

    .line 211
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3, p2}, Lorg/apache/commons/net/ftp/FTPClient;->setDefaultPort(I)V

    .line 213
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3, p1}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 216
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\u66f4\u65b05"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v4, p0, Lcom/fh/util/FtpHandlerThread;->password:Ljava/lang/String;

    invoke-virtual {v3, p3, v4}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 218
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    .line 219
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 220
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->printWorkingDirectory()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fh/util/FtpHandlerThread;->rootPath:Ljava/lang/String;

    .line 221
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u66f4\u65b04"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fh/util/FtpHandlerThread;->rootPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 224
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/fh/util/FtpHandlerThread;->rootPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    .line 226
    :cond_2
    if-nez p5, :cond_4

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fh/util/FtpHandlerThread;->rootPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fh/util/FtpHandlerThread;->mCurrBrowsingDevDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "defaultPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->tag:Ljava/lang/String;

    const-string v4, "changeWorkingDirectory failed!"

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/fh/util/FtpHandlerThread;->disconnect()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 245
    .end local v0    # "defaultPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/net/SocketException;
    :try_start_2
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    const v4, 0x7f08005f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Socket SocketException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u629b\u5f02\u5e38"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 256
    .end local v1    # "e":Ljava/net/SocketException;
    :goto_1
    invoke-direct {p0}, Lcom/fh/util/FtpHandlerThread;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 202
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 235
    .restart local v0    # "defaultPath":Ljava/lang/String;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_4

    .line 236
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 237
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    .line 240
    .end local v0    # "defaultPath":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 243
    :cond_5
    invoke-direct {p0}, Lcom/fh/util/FtpHandlerThread;->disconnect()V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 250
    :catch_1
    move-exception v1

    .line 251
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Socket IOException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u629b\u5f02\u5e381"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException 11--> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mList:Ljava/util/List;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mCurrentPath:Ljava/lang/StringBuffer;

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->servie:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 362
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->servie:Ljava/util/concurrent/ExecutorService;

    .line 365
    :cond_2
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->servie:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->servie:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 380
    :cond_2
    return-void
.end method

.method private sendOperation(IILjava/lang/String;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 347
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 348
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "strings"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x104

    iput v1, v0, Landroid/os/Message;->what:I

    .line 314
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendResultAndMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "strings"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v2, p0, Lcom/fh/util/FtpHandlerThread;->mUIHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 324
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x104

    iput v2, v1, Landroid/os/Message;->what:I

    .line 325
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    const-string v2, "File_Name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 328
    iget-object v2, p0, Lcom/fh/util/FtpHandlerThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendResultDelay(Ljava/lang/String;I)V
    .locals 4
    .param p1, "strings"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 332
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x104

    iput v1, v0, Landroid/os/Message;->what:I

    .line 337
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->mUIHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private sort([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "drs"    # [Ljava/lang/String;

    .prologue
    .line 386
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 398
    :cond_0
    return-object p1

    .line 389
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 390
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 391
    aget-object v3, p1, v1

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 392
    aget-object v2, p1, v1

    .line 393
    .local v2, "temp":Ljava/lang/String;
    aget-object v3, p1, v0

    aput-object v3, p1, v1

    .line 394
    aput-object v2, p1, v0

    .line 390
    .end local v2    # "temp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getIsDestoryThread()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/fh/util/FtpHandlerThread;->isDestroyThread:Z

    return v0
.end method

.method public getWorkHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f0800ca

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return v13

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "login_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/fh/util/FTPLoginInfo;

    .line 119
    .local v9, "ftpInfo":Lcom/fh/util/FTPLoginInfo;
    if-nez v9, :cond_1

    .line 120
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v9}, Lcom/fh/util/FTPLoginInfo;->getHostname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->ftpAdd:Ljava/lang/String;

    .line 124
    invoke-virtual {v9}, Lcom/fh/util/FTPLoginInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->userName:Ljava/lang/String;

    .line 125
    invoke-virtual {v9}, Lcom/fh/util/FTPLoginInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->password:Ljava/lang/String;

    .line 126
    invoke-virtual {v9}, Lcom/fh/util/FTPLoginInfo;->getPort()I

    move-result v0

    iput v0, p0, Lcom/fh/util/FtpHandlerThread;->port:I

    .line 128
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 130
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v8, "jl_ac51.bfu"

    .line 132
    .local v8, "fileName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 134
    .local v10, "inputStream":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/fh/util/FtpHandlerThread;->ftpAdd:Ljava/lang/String;

    iget v2, p0, Lcom/fh/util/FtpHandlerThread;->port:I

    iget-object v3, p0, Lcom/fh/util/FtpHandlerThread;->userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/fh/util/FtpHandlerThread;->password:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fh/util/FtpHandlerThread;->connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const-string v0, "PersonalSettingActivity"

    const-string v1, "connectAndLoginFTP ==> true"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object v11, v8

    .line 155
    .local v11, "remotePathName":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/fh/util/FtpHandlerThread;->isversion:Z

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 158
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5347\u7ea7\u6709\u5149\u6d41"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    :goto_1
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 164
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 165
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/high16 v1, 0x500000

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setBufferSize(I)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 168
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, v11, v10}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u66f4\u65b0\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    const-string v0, "PersonalSettingActivity"

    const-string v1, "Upload success"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_2
    invoke-direct {p0}, Lcom/fh/util/FtpHandlerThread;->disconnect()V

    goto/16 :goto_0

    .line 160
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 161
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5347\u7ea7\u65e0\u5149\u6d41"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v7

    .line 178
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    const-string v0, "PersonalSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    .line 181
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u66f4\u65b0\u5931\u8d251"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    invoke-direct {p0}, Lcom/fh/util/FtpHandlerThread;->disconnect()V

    goto/16 :goto_0

    .line 173
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    .line 174
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u66f4\u65b0\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    const-string v0, "PersonalSettingActivity"

    const-string v1, "Upload failed"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 183
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/fh/util/FtpHandlerThread;->disconnect()V

    throw v0

    .line 186
    .end local v11    # "remotePathName":Ljava/lang/String;
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u66f4\u65b0\u5931\u8d252"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    :cond_5
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->tag:Ljava/lang/String;

    const-string v1, "FTPClient object is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u66f4\u65b0\u5931\u8d253"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/fh/util/FtpHandlerThread;->context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fh/util/FtpHandlerThread;->sendResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x106
        :pswitch_0
    .end packed-switch
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/fh/util/FtpHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fh/util/FtpHandlerThread;->mWorkerHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method public quit()Z
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/fh/util/FtpHandlerThread;->release()V

    .line 413
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public setIsDestoryThread(Z)V
    .locals 0
    .param p1, "bl"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/fh/util/FtpHandlerThread;->isDestroyThread:Z

    .line 403
    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fh/util/FtpHandlerThread;->mUIHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method public setVersion(Z)V
    .locals 0
    .param p1, "version"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/fh/util/FtpHandlerThread;->isversion:Z

    .line 107
    return-void
.end method

.method public tryToUploadFile(Lcom/fh/util/FTPLoginInfo;)V
    .locals 4
    .param p1, "ftpLoginInfo"    # Lcom/fh/util/FTPLoginInfo;

    .prologue
    .line 273
    iget-object v2, p0, Lcom/fh/util/FtpHandlerThread;->mWorkerHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/fh/util/FtpHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 275
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/fh/util/FtpHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/fh/util/FtpHandlerThread;->mWorkerHandler:Landroid/os/Handler;

    .line 281
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u66f4\u65b0\u8fd4\u56de1"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 283
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x106

    iput v2, v1, Landroid/os/Message;->what:I

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "login_info"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 288
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 289
    iget-object v2, p0, Lcom/fh/util/FtpHandlerThread;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 277
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u66f4\u65b0\u8fd4\u56de"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
