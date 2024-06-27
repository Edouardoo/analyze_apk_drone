.class public Lorg/apache/commons/net/imap/IMAPClient;
.super Lorg/apache/commons/net/imap/IMAP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;,
        Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;,
        Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;
    }
.end annotation


# static fields
.field private static final DQUOTE:C = '\"'

.field private static final DQUOTE_S:Ljava/lang/String; = "\""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAP;-><init>()V

    .line 588
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/net/imap/IMAPClient;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    .line 288
    if-eqz p2, :cond_2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    if-eqz p3, :cond_0

    .line 292
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_0
    :goto_1
    sget-object v1, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x22

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    if-eqz p2, :cond_0

    .line 252
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    if-eqz p3, :cond_1

    .line 255
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    .line 257
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    :goto_0
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v2, "\""

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\""

    invoke-virtual {p4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    .line 270
    :cond_2
    :goto_1
    return v0

    .line 259
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 268
    :cond_4
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/net/imap/IMAPClient;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result v1

    .line 270
    invoke-static {v1}, Lorg/apache/commons/net/imap/IMAPReply;->isContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p4}, Lorg/apache/commons/net/imap/IMAPClient;->sendData(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public capability()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public check()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public close()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->COPY:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public create(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public examine(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public expunge()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public fetch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LIST:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPClient;->getState()Lorg/apache/commons/net/imap/IMAP$IMAPState;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/net/imap/IMAP$IMAPState;->NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    if-eq v1, v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    sget-object v1, Lorg/apache/commons/net/imap/IMAPCommand;->LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public logout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public lsub(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public noop()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPClient;->search(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    const-string v0, ""

    .line 357
    if-eqz p1, :cond_0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CHARSET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    sget-object v1, Lorg/apache/commons/net/imap/IMAPCommand;->SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public select(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "STATUS command requires at least one data item name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 228
    if-lez v0, :cond_2

    .line 229
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_2
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_3
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STORE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public subscribe(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public uid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UID:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unsubscribe(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPClient;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
