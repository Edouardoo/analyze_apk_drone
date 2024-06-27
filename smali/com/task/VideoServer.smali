.class public Lcom/task/VideoServer;
.super Ljava/lang/Thread;
.source "VideoServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/task/VideoServer$CrashVideoListener;
    }
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private isThreadRunning:Z

.field private listener:Lcom/task/VideoServer$CrashVideoListener;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "limit"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    const-string v1, "VideoServer"

    iput-object v1, p0, Lcom/task/VideoServer;->tag:Ljava/lang/String;

    .line 28
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/task/VideoServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 29
    iget-object v1, p0, Lcom/task/VideoServer;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 30
    iget-object v1, p0, Lcom/task/VideoServer;->mServerSocket:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v2, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/task/VideoServer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isThreadRunning()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/task/VideoServer;->isThreadRunning:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/task/VideoServer;->isThreadRunning:Z

    .line 61
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/task/VideoServer;->isThreadRunning:Z

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/task/VideoServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_3

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/task/VideoServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 66
    .local v1, "mSocket":Ljava/net/Socket;
    if-eqz v1, :cond_0

    .line 67
    iget-object v2, p0, Lcom/task/VideoServer;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket alive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/task/VideoServer;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/task/VideoServer;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/task/CrashVideoTask;

    iget-object v4, p0, Lcom/task/VideoServer;->listener:Lcom/task/VideoServer$CrashVideoListener;

    invoke-direct {v3, v1, v4}, Lcom/task/CrashVideoTask;-><init>(Ljava/net/Socket;Lcom/task/VideoServer$CrashVideoListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v1    # "mSocket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    iput-boolean v5, p0, Lcom/task/VideoServer;->isThreadRunning:Z

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/task/VideoServer;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/task/VideoServer;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 86
    :cond_2
    return-void

    .line 79
    :cond_3
    iput-boolean v5, p0, Lcom/task/VideoServer;->isThreadRunning:Z

    goto :goto_1
.end method

.method public setCrashVideoListener(Lcom/task/VideoServer$CrashVideoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/task/VideoServer$CrashVideoListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/task/VideoServer;->listener:Lcom/task/VideoServer$CrashVideoListener;

    .line 39
    return-void
.end method

.method public stopServer()V
    .locals 2

    .prologue
    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/task/VideoServer;->isThreadRunning:Z

    .line 47
    iget-object v1, p0, Lcom/task/VideoServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/task/VideoServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/task/VideoServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 55
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
