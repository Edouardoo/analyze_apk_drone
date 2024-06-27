.class public Lorg/apache/commons/net/imap/IMAPSClient;
.super Lorg/apache/commons/net/imap/IMAPClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_IMAPS_PORT:I = 0x3e1

.field public static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"


# instance fields
.field private context:Ljavax/net/ssl/SSLContext;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final isImplicit:Z

.field private keyManager:Ljavax/net/ssl/KeyManager;

.field private final protocol:Ljava/lang/String;

.field private protocols:[Ljava/lang/String;

.field private suites:[Ljava/lang/String;

.field private tlsEndpointChecking:Z

.field private trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;Z)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPClient;-><init>()V

    .line 69
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->context:Ljavax/net/ssl/SSLContext;

    .line 72
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->suites:[Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocols:[Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 81
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    .line 84
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 135
    const/16 v0, 0x3e1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAPSClient;->setDefaultPort(I)V

    .line 136
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocol:Ljava/lang/String;

    .line 137
    iput-boolean p2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->isImplicit:Z

    .line 138
    iput-object p3, p0, Lorg/apache/commons/net/imap/IMAPSClient;->context:Ljavax/net/ssl/SSLContext;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 104
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;Z)V

    .line 105
    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    .prologue
    .line 148
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 149
    return-void
.end method

.method private getKeyManager()Ljavax/net/ssl/KeyManager;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method private initSSLContext()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocol:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->getKeyManager()Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->context:Ljavax/net/ssl/SSLContext;

    .line 189
    :cond_0
    return-void
.end method

.method private performSSLNegotiation()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 198
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->initSSLContext()V

    .line 200
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 201
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_hostname_:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_hostname_:Ljava/lang/String;

    move-object v1, v0

    .line 202
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->getRemotePort()I

    move-result v0

    .line 203
    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2, v3, v1, v0, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 205
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 206
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 208
    iget-boolean v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->tlsEndpointChecking:Z

    if-eqz v2, :cond_0

    .line 209
    invoke-static {v0}, Lorg/apache/commons/net/util/SSLSocketUtils;->enableEndpointNameVerification(Ljavax/net/ssl/SSLSocket;)Z

    .line 212
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocols:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocols:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 215
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->suites:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 216
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->suites:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 218
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 221
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_socket_:Ljava/net/Socket;

    .line 222
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_input_:Ljava/io/InputStream;

    .line 223
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_output_:Ljava/io/OutputStream;

    .line 224
    new-instance v2, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_input_:Ljava/io/InputStream;

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_reader:Ljava/io/BufferedReader;

    .line 227
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_output_:Ljava/io/OutputStream;

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->__writer:Ljava/io/BufferedWriter;

    .line 231
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 232
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Hostname doesn\'t match certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 234
    :cond_4
    return-void
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->isImplicit:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->performSSLNegotiation()V

    .line 175
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/net/imap/IMAPClient;->_connectAction_()V

    .line 177
    return-void
.end method

.method public execTLS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPCommand;->getCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAPSClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    .line 321
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAPSClient;->performSSLNegotiation()V

    .line 322
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public isEndpointCheckingEnabled()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->tlsEndpointChecking:Z

    return v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->suites:[Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->suites:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocols:[Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPSClient;->protocols:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    return-void
.end method

.method public setEndpointCheckingEnabled(Z)V
    .locals 0

    .prologue
    .line 385
    iput-boolean p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->tlsEndpointChecking:Z

    .line 386
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 362
    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    .line 253
    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 342
    return-void
.end method
