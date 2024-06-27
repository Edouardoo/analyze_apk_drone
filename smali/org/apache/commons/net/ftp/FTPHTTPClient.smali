.class public Lorg/apache/commons/net/ftp/FTPHTTPClient;
.super Lorg/apache/commons/net/ftp/FTPClient;
.source "SourceFile"


# static fields
.field private static final CRLF:[B


# instance fields
.field private final base64:Lorg/apache/commons/net/util/Base64;

.field private final proxyHost:Ljava/lang/String;

.field private final proxyPassword:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyUsername:Ljava/lang/String;

.field private tunnelHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    .line 47
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->base64:Lorg/apache/commons/net/util/Base64;

    .line 52
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyHost:Ljava/lang/String;

    .line 53
    iput p2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPort:I

    .line 54
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyUsername:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPassword:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHost:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private tunnelHandshake(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/BufferedReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xc

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHost:Ljava/lang/String;

    .line 153
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 154
    sget-object v0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 155
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 156
    sget-object v0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 158
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy-Authorization: Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->base64:Lorg/apache/commons/net/util/Base64;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/util/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 164
    :cond_0
    sget-object v0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, p3, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 170
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 172
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    if-nez v0, :cond_2

    .line 177
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No response from proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    const-string v3, "HTTP/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_3

    .line 183
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v3, "200"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    const-string v0, "HTTPTunnelConnector: connection failed\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v0, "Response received from the proxy:\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 185
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response from proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_5
    return-object v2
.end method


# virtual methods
.method protected _openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method protected _openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getDataConnectionMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only passive connection mode supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v3, v0, Ljava/net/Inet6Address;

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->isUseEPSVwithIPv4()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 97
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->epsv()I

    move-result v0

    const/16 v4, 0xe5

    if-ne v0, v4, :cond_3

    .line 98
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_parseExtendedPassiveModeReply(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHost:Ljava/lang/String;

    .line 112
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socketFactory_:Ljavax/net/SocketFactory;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyHost:Ljava/lang/String;

    iget v4, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPort:I

    invoke-virtual {v2, v3, v4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 114
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getPassivePort()I

    move-result v5

    invoke-direct {p0, v0, v5, v3, v4}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHandshake(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/BufferedReader;

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getRestartOffset()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getRestartOffset()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->restart(J)Z

    move-result v0

    if-nez v0, :cond_6

    .line 117
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    move-object v0, v1

    .line 126
    :goto_2
    return-object v0

    :cond_2
    move v0, v2

    .line 96
    goto :goto_0

    .line 101
    :cond_3
    if-eqz v3, :cond_4

    move-object v0, v1

    .line 102
    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->pasv()I

    move-result v0

    const/16 v3, 0xe3

    if-eq v0, v3, :cond_5

    move-object v0, v1

    .line 106
    goto :goto_2

    .line 108
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getPassiveHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 122
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    move-object v0, v1

    .line 123
    goto :goto_2

    :cond_7
    move-object v0, v2

    .line 126
    goto :goto_2
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socketFactory_:Ljavax/net/SocketFactory;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyHost:Ljava/lang/String;

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPort:I

    invoke-virtual {v0, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socket_:Ljava/net/Socket;

    .line 133
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_input_:Ljava/io/InputStream;

    .line 134
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_output_:Ljava/io/OutputStream;

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_input_:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_output_:Ljava/io/OutputStream;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHandshake(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_connectAction_(Ljava/io/Reader;)V

    .line 145
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    throw v1
.end method
