.class public Lorg/apache/commons/net/pop3/POP3Client;
.super Lorg/apache/commons/net/pop3/POP3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;-><init>()V

    return-void
.end method

.method private static __parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 59
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 71
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    new-instance v0, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(II)V

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static __parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 90
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 102
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    new-instance v0, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public capa()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteMessage(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 307
    const/4 v2, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 310
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 307
    goto :goto_0

    :cond_1
    move v0, v1

    .line 310
    goto :goto_0
.end method

.method public listMessage(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-object v0

    .line 382
    :cond_1
    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 386
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public listMessages()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-object v0

    .line 412
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 418
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v2, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    .line 420
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 423
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 424
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    aput-object v0, v2, v1

    .line 423
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 427
    goto :goto_0
.end method

.method public listUniqueIdentifier(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v0

    .line 453
    :cond_1
    const/16 v1, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 457
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public listUniqueIdentifiers()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 480
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-object v0

    .line 483
    :cond_1
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 486
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 489
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v2, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    .line 491
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 494
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 495
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    aput-object v0, v2, v1

    .line 494
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 498
    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    move v0, v1

    .line 166
    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 220
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 221
    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    .line 222
    const/16 v6, 0xf

    if-gt v5, v6, :cond_2

    .line 223
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const/16 v3, 0x9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    move v1, v2

    .line 239
    goto :goto_0
.end method

.method public logout()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 261
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    .line 263
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    .line 264
    iget v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyCode:I

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noop()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 283
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 285
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 283
    goto :goto_0

    :cond_1
    move v0, v1

    .line 285
    goto :goto_0
.end method

.method public reset()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 328
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 330
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 328
    goto :goto_0

    :cond_1
    move v0, v1

    .line 330
    goto :goto_0
.end method

.method public retrieveMessage(I)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 529
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-object v0

    .line 532
    :cond_1
    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 536
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_reader:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public retrieveMessageTop(II)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 571
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-object v0

    .line 574
    :cond_1
    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 579
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_reader:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public status()Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x3

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-object v0

    .line 353
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 356
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    goto :goto_0
.end method
