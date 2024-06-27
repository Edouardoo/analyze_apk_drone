.class public Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;
.super Lorg/apache/commons/net/smtp/SMTPSClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    .line 89
    return-void
.end method

.method private _convertToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, p1, v0

    .line 282
    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0xf

    if-gt v4, v5, :cond_0

    .line 283
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    const/16 v1, 0xe

    invoke-static {p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->getAuthName(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    sget-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto :goto_0

    .line 230
    :cond_2
    sget-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    .line 235
    const-string v2, "HmacMD5"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 236
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "HmacMD5"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 238
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->_convertToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 241
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 242
    array-length v4, v2

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    array-length v4, v2

    const/16 v5, 0x20

    aput-byte v5, v3, v4

    .line 244
    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    array-length v4, v1

    invoke-static {v1, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto/16 :goto_0

    .line 249
    :cond_3
    sget-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto/16 :goto_0

    .line 260
    :cond_4
    sget-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public ehlo(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public elogin()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->ehlo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto :goto_0
.end method

.method public elogin(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->ehlo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public getEnhancedReplyCode()[I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 179
    array-length v2, v1

    new-array v2, v2, [I

    .line 180
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 182
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-object v2
.end method
