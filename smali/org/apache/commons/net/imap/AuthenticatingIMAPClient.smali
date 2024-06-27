.class public Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;
.super Lorg/apache/commons/net/imap/IMAPSClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$1;,
        Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 51
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    .prologue
    .line 91
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 92
    return-void
.end method

.method private _convertToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, p1, v0

    .line 231
    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0xf

    if-gt v4, v5, :cond_0

    .line 232
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->getAuthName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/net/imap/IMAPReply;->isContinuation(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    sget-object v2, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$1;->$SwitchMap$org$apache$commons$net$imap$AuthenticatingIMAPClient$AUTH_METHOD:[I

    invoke-virtual {p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 216
    goto :goto_0

    .line 159
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v2

    .line 162
    if-nez v2, :cond_2

    .line 164
    sget-object v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 166
    :cond_2
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getReplyString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 173
    const-string v3, "HmacMD5"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 174
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "HmacMD5"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 176
    invoke-virtual {v3, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->_convertToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 179
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 180
    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v5, v3

    const/16 v6, 0x20

    aput-byte v6, v4, v5

    .line 182
    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    array-length v5, v2

    invoke-static {v2, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-static {v4}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v2

    .line 185
    if-nez v2, :cond_3

    .line 187
    sget-object v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 189
    :cond_3
    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 195
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 197
    goto/16 :goto_0

    .line 199
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v2

    .line 200
    if-nez v2, :cond_5

    .line 202
    sget-object v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 204
    :cond_5
    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 208
    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v2

    .line 209
    if-nez v2, :cond_6

    .line 211
    sget-object v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 213
    :cond_6
    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public authenticate(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->auth(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
