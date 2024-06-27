.class public Lorg/apache/commons/net/pop3/ExtendedPOP3Client;
.super Lorg/apache/commons/net/pop3/POP3SClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/pop3/ExtendedPOP3Client$1;,
        Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>()V

    .line 46
    return-void
.end method

.method private _convertToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, p1, v0

    .line 116
    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0xf

    if-gt v4, v5, :cond_0

    .line 117
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
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
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    const/16 v2, 0xd

    invoke-virtual {p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->getAuthName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 100
    :goto_0
    return v1

    .line 75
    :cond_0
    sget-object v2, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$1;->$SwitchMap$org$apache$commons$net$pop3$ExtendedPOP3Client$AUTH_METHOD:[I

    invoke-virtual {p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 85
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 87
    const-string v3, "HmacMD5"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 88
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "HmacMD5"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 90
    invoke-virtual {v3, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->_convertToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 93
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 94
    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    array-length v5, v3

    const/16 v6, 0x20

    aput-byte v6, v4, v5

    .line 96
    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    array-length v5, v2

    invoke-static {v2, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    invoke-static {v4}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    move v1, v0

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
