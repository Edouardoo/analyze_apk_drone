.class public Lorg/apache/commons/net/bsd/RExecClient;
.super Lorg/apache/commons/net/SocketClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PORT:I = 0x200

.field protected static final NULL_CHAR:C


# instance fields
.field private __remoteVerificationEnabled:Z

.field protected _errorStream_:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    .line 122
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/bsd/RExecClient;->setDefaultPort(I)V

    .line 123
    return-void
.end method


# virtual methods
.method _createErrorStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 97
    iget-object v1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 98
    iget-object v1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 100
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 101
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 103
    iget-boolean v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->__remoteVerificationEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/bsd/RExecClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 106
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security violation: unexpected connection attempt by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/SocketInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    .line 267
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    .line 268
    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_input_:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final isRemoteVerificationEnabled()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->__remoteVerificationEnabled:Z

    return v0
.end method

.method public rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/bsd/RExecClient;->rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    return-void
.end method

.method public rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 208
    if-eqz p4, :cond_0

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->_createErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    .line 217
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 218
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 219
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 220
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 221
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 222
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 223
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 225
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 226
    if-lez v0, :cond_2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 230
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 233
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_2
    if-gez v0, :cond_3

    .line 235
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server closed connection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_3
    return-void
.end method

.method public final setRemoteVerificationEnabled(Z)V
    .locals 0

    .prologue
    .line 282
    iput-boolean p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->__remoteVerificationEnabled:Z

    .line 283
    return-void
.end method
