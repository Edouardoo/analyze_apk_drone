.class public Lorg/apache/commons/net/smtp/SMTPClient;
.super Lorg/apache/commons/net/smtp/SMTP;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTPClient;->rcpt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public addRecipient(Lorg/apache/commons/net/smtp/RelayPath;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p1}, Lorg/apache/commons/net/smtp/RelayPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTPClient;->rcpt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public completePendingCommand()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public listHelp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->help()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->help(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTPClient;->helo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->helo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public logout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->quit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public reset()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->rset()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public sendMessageData()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->data()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTPClient;->_writer:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method public sendNoOp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->noop()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public sendShortMessageData(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->sendMessageData()Ljava/io/Writer;

    move-result-object v0

    .line 395
    if-nez v0, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    .line 399
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 402
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->completePendingCommand()Z

    move-result v0

    goto :goto_0
.end method

.method public sendSimpleMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->setSender(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 435
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/smtp/SMTPClient;->addRecipient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/smtp/SMTPClient;->sendShortMessageData(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendSimpleMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 475
    .line 478
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->setSender(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v1

    .line 482
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 484
    aget-object v3, p2, v0

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/smtp/SMTPClient;->addRecipient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    const/4 v2, 0x1

    .line 482
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    :cond_3
    if-eqz v2, :cond_0

    .line 493
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/smtp/SMTPClient;->sendShortMessageData(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setSender(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTPClient;->mail(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public setSender(Lorg/apache/commons/net/smtp/RelayPath;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p1}, Lorg/apache/commons/net/smtp/RelayPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTPClient;->mail(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->vrfy(Ljava/lang/String;)I

    move-result v0

    .line 555
    const/16 v1, 0xfa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
