.class public Lcom/task/SDPServer;
.super Ljava/lang/Thread;
.source "SDPServer.java"


# instance fields
.field private mFramePerSecond:I

.field private mRtpAudioPort:I

.field private mRtpVideoPort:I

.field private mRunning:Z

.field private mSampleRate:I

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mVideoFormat:I

.field private portt:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/task/SDPServer;-><init>(II)V

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "videoFormat"    # I

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/task/SDPServer;->tag:Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/task/SDPServer;->mRunning:Z

    .line 27
    iput v2, p0, Lcom/task/SDPServer;->mVideoFormat:I

    .line 28
    const/16 v1, 0x1f40

    iput v1, p0, Lcom/task/SDPServer;->mSampleRate:I

    .line 29
    const/16 v1, 0x1e

    iput v1, p0, Lcom/task/SDPServer;->mFramePerSecond:I

    .line 30
    const/16 v1, 0x1a0a

    iput v1, p0, Lcom/task/SDPServer;->mRtpVideoPort:I

    .line 31
    const/16 v1, 0x4d2

    iput v1, p0, Lcom/task/SDPServer;->mRtpAudioPort:I

    .line 39
    iput p1, p0, Lcom/task/SDPServer;->portt:I

    .line 40
    iput p2, p0, Lcom/task/SDPServer;->mVideoFormat:I

    .line 42
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    :cond_0
    :goto_2
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getPortt()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 94
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 95
    iput-boolean v7, p0, Lcom/task/SDPServer;->mRunning:Z

    .line 98
    iget v6, p0, Lcom/task/SDPServer;->mVideoFormat:I

    if-ne v6, v7, :cond_2

    .line 99
    const-string v3, "H264"

    .line 100
    .local v3, "format":Ljava/lang/String;
    const/16 v4, 0x60

    .line 105
    .local v4, "payload_type":I
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "c=IN IP4 127.0.0.1\nm=audio "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/task/SDPServer;->mRtpAudioPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RTP/AVP 97\na=rtpmap:97 L16/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/task/SDPServer;->mSampleRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1\na=ptime:20\nm=video "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/task/SDPServer;->mRtpVideoPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RTP/AVP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\na=rtpmap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/90000\na=framerate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/task/SDPServer;->mFramePerSecond:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "sdp":Ljava/lang/String;
    iget-object v6, p0, Lcom/task/SDPServer;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SDP:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/task/SDPServer;->mRunning:Z

    if-eqz v6, :cond_3

    .line 116
    const-string v6, "sdp"

    const-string v7, "run: "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v6, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v6, :cond_0

    .line 118
    iget-object v6, p0, Lcom/task/SDPServer;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Port::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/task/SDPServer;->portt:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v6, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 120
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/task/SDPServer;->mRunning:Z

    .line 122
    :cond_1
    const/4 v0, 0x0

    .line 124
    .local v0, "connectionSocket":Ljava/net/Socket;
    :try_start_0
    iget-object v6, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 129
    :goto_2
    move-object v2, v0

    .line 130
    .local v2, "finalConnectionSocket":Ljava/net/Socket;
    if-eqz v2, :cond_0

    .line 132
    :try_start_1
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 137
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 142
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v0    # "connectionSocket":Ljava/net/Socket;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "finalConnectionSocket":Ljava/net/Socket;
    .end local v3    # "format":Ljava/lang/String;
    .end local v4    # "payload_type":I
    .end local v5    # "sdp":Ljava/lang/String;
    :cond_2
    const-string v3, "JPEG"

    .line 103
    .restart local v3    # "format":Ljava/lang/String;
    const/16 v4, 0x1a

    .restart local v4    # "payload_type":I
    goto/16 :goto_0

    .line 126
    .restart local v0    # "connectionSocket":Ljava/net/Socket;
    .restart local v5    # "sdp":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 127
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 133
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "finalConnectionSocket":Ljava/net/Socket;
    :catch_2
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 138
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 139
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 150
    .end local v0    # "connectionSocket":Ljava/net/Socket;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "finalConnectionSocket":Ljava/net/Socket;
    :cond_3
    invoke-virtual {p0}, Lcom/task/SDPServer;->stopRunning()V

    .line 151
    iget-object v6, p0, Lcom/task/SDPServer;->tag:Ljava/lang/String;

    const-string v7, "SDP Server exit."

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setFrameRate(I)V
    .locals 0
    .param p1, "frameRate"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/task/SDPServer;->mFramePerSecond:I

    .line 69
    return-void
.end method

.method public setRtpAudioPort(I)V
    .locals 0
    .param p1, "audioPort"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/task/SDPServer;->mRtpAudioPort:I

    .line 90
    return-void
.end method

.method public setRtpVideoPort(I)V
    .locals 0
    .param p1, "videoPort"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/task/SDPServer;->mRtpVideoPort:I

    .line 86
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/task/SDPServer;->mSampleRate:I

    .line 65
    return-void
.end method

.method public stopRunning()V
    .locals 3

    .prologue
    .line 72
    const-string v1, "sdp"

    const-string v2, "stopRunning: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/task/SDPServer;->mRunning:Z

    .line 74
    iget-object v1, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 82
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
