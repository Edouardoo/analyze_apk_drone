.class public Lorg/apache/commons/net/ftp/FTPSClient;
.super Lorg/apache/commons/net/ftp/FTPClient;
.source "SourceFile"


# static fields
.field private static final CMD_ADAT:Ljava/lang/String; = "ADAT"

.field private static final CMD_AUTH:Ljava/lang/String; = "AUTH"

.field private static final CMD_CCC:Ljava/lang/String; = "CCC"

.field private static final CMD_CONF:Ljava/lang/String; = "CONF"

.field private static final CMD_ENC:Ljava/lang/String; = "ENC"

.field private static final CMD_MIC:Ljava/lang/String; = "MIC"

.field private static final CMD_PBSZ:Ljava/lang/String; = "PBSZ"

.field private static final CMD_PROT:Ljava/lang/String; = "PROT"

.field public static final DEFAULT_FTPS_DATA_PORT:I = 0x3dd

.field public static final DEFAULT_FTPS_PORT:I = 0x3de

.field private static final DEFAULT_PROT:Ljava/lang/String; = "C"

.field private static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static KEYSTORE_ALGORITHM:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PROT_COMMAND_VALUE:[Ljava/lang/String;

.field public static PROVIDER:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static STORE_TYPE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static TRUSTSTORE_ALGORITHM:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private auth:Ljava/lang/String;

.field private context:Ljavax/net/ssl/SSLContext;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private isClientMode:Z

.field private isCreation:Z

.field private final isImplicit:Z

.field private isNeedClientAuth:Z

.field private isWantClientAuth:Z

.field private keyManager:Ljavax/net/ssl/KeyManager;

.field private plainSocket:Ljava/net/Socket;

.field private final protocol:Ljava/lang/String;

.field private protocols:[Ljava/lang/String;

.field private suites:[Ljava/lang/String;

.field private tlsEndpointChecking:Z

.field private trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "P"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/ftp/FTPSClient;->PROT_COMMAND_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    .line 92
    const-string v0, "TLS"

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    .line 98
    iput-boolean v3, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    .line 100
    iput-boolean v3, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    .line 102
    iput-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    .line 104
    iput-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    .line 106
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    .line 113
    invoke-static {}, Lorg/apache/commons/net/util/TrustManagerUtils;->getValidateServerCertificateTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 116
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    .line 119
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 161
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocol:Ljava/lang/String;

    .line 162
    iput-boolean p2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    .line 163
    if-eqz p2, :cond_0

    .line 164
    const/16 v0, 0x3de

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->setDefaultPort(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 139
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    .prologue
    .line 175
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    .line 176
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    .line 177
    return-void
.end method

.method private checkPROTValue(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 546
    sget-object v2, Lorg/apache/commons/net/ftp/FTPSClient;->PROT_COMMAND_VALUE:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 548
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 549
    const/4 v0, 0x1

    .line 552
    :cond_0
    return v0

    .line 546
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private extractPrefixedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 895
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 896
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 897
    const/4 v0, 0x0

    .line 900
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getKeyManager()Ljavax/net/ssl/KeyManager;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method private initSslContext()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocol:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getKeyManager()Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    .line 254
    :cond_0
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
    .line 219
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->sslNegotiation()V

    .line 222
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTPClient;->_connectAction_()V

    .line 224
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->execAUTH()V

    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->sslNegotiation()V

    .line 228
    :cond_1
    return-void
.end method

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
    .line 607
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method protected _openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-super {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 628
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->_prepareDataSocket_(Ljava/net/Socket;)V

    .line 629
    instance-of v0, v1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 630
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 632
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 633
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 636
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    if-nez v2, :cond_0

    .line 637
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 638
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 640
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 641
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 643
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 644
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 646
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 649
    :cond_3
    return-object v1
.end method

.method protected _prepareDataSocket_(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 749
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 750
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 751
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    .line 752
    return-void
.end method

.method public execADAT([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    if-eqz p1, :cond_0

    .line 779
    const-string v0, "ADAT"

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 783
    :goto_0
    return v0

    :cond_0
    const-string v0, "ADAT"

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public execAUTH(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    const-string v0, "AUTH"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected execAUTH()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "AUTH"

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 238
    const/16 v1, 0x14e

    if-ne v1, v0, :cond_1

    .line 244
    :cond_0
    return-void

    .line 241
    :cond_1
    const/16 v1, 0xea

    if-eq v1, v0, :cond_0

    .line 242
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execCCC()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    const-string v0, "CCC"

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    .line 810
    return v0
.end method

.method public execCONF([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    if-eqz p1, :cond_0

    .line 845
    const-string v0, "CONF"

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 849
    :goto_0
    return v0

    :cond_0
    const-string v0, "CONF"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public execENC([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    if-eqz p1, :cond_0

    .line 865
    const-string v0, "ENC"

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 869
    :goto_0
    return v0

    :cond_0
    const-string v0, "ENC"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public execMIC([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    if-eqz p1, :cond_0

    .line 825
    const-string v0, "MIC"

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 829
    :goto_0
    return v0

    :cond_0
    const-string v0, "MIC"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public execPBSZ(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 472
    :cond_1
    const-string v0, "PBSZ"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 473
    const/16 v1, 0xc8

    if-eq v1, v0, :cond_2

    .line 474
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_2
    return-void
.end method

.method public execPROT(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 521
    if-nez p1, :cond_0

    .line 522
    const-string p1, "C"

    .line 524
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->checkPROTValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 527
    :cond_1
    const/16 v0, 0xc8

    const-string v1, "PROT"

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 528
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_2
    const-string v0, "C"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 532
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    .line 538
    :goto_0
    return-void

    .line 534
    :cond_3
    new-instance v0, Lorg/apache/commons/net/ftp/FTPSSocketFactory;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/FTPSSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 535
    new-instance v0, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    .line 536
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->initSslContext()V

    goto :goto_0
.end method

.method public getAuthValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnableSessionCreation()Z

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 434
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getUseClientMode()Z

    move-result v0

    .line 411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndpointCheckingEnabled()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->tlsEndpointChecking:Z

    return v0
.end method

.method public parseADATReply(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 881
    if-nez p1, :cond_0

    .line 882
    const/4 v0, 0x0

    .line 884
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ADAT="

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->extractPrefixedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public parsePBSZ(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->execPBSZ(J)V

    .line 493
    const-string v0, "PBSZ="

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->extractPrefixedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_0

    .line 495
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 496
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 500
    :cond_0
    return-wide p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    invoke-super {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 570
    const-string v1, "CCC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const/16 v1, 0xc8

    if-ne v1, v0, :cond_1

    .line 572
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 573
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->plainSocket:Ljava/net/Socket;

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    .line 574
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_controlInput_:Ljava/io/BufferedReader;

    .line 577
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_controlOutput_:Ljava/io/BufferedWriter;

    .line 584
    :cond_0
    return v0

    .line 581
    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuthValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    return-void
.end method

.method public setEnabledSessionCreation(Z)V
    .locals 0

    .prologue
    .line 328
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    .line 329
    return-void
.end method

.method public setEndpointCheckingEnabled(Z)V
    .locals 0

    .prologue
    .line 733
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->tlsEndpointChecking:Z

    .line 734
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 706
    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    .line 321
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    .prologue
    .line 352
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    .line 353
    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 684
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0

    .prologue
    .line 397
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    .line 398
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    .prologue
    .line 375
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    .line 376
    return-void
.end method

.method protected sslNegotiation()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->plainSocket:Ljava/net/Socket;

    .line 263
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->initSslContext()V

    .line 265
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 266
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_hostname_:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_hostname_:Ljava/lang/String;

    move-object v1, v0

    .line 267
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 268
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 270
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 271
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 274
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    if-eqz v2, :cond_4

    .line 275
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->tlsEndpointChecking:Z

    if-eqz v2, :cond_0

    .line 276
    invoke-static {v0}, Lorg/apache/commons/net/util/SSLSocketUtils;->enableEndpointNameVerification(Ljavax/net/ssl/SSLSocket;)Z

    .line 283
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 286
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 289
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 292
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_socket_:Ljava/net/Socket;

    .line 293
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_controlInput_:Ljava/io/BufferedReader;

    .line 295
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->_controlOutput_:Ljava/io/BufferedWriter;

    .line 298
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    if-eqz v2, :cond_5

    .line 299
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 300
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Hostname doesn\'t match certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 279
    :cond_4
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 280
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    goto :goto_1

    .line 303
    :cond_5
    return-void
.end method
