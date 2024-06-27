.class public Lorg/apache/commons/net/nntp/NNTPClient;
.super Lorg/apache/commons/net/nntp/NNTP;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;-><init>()V

    return-void
.end method

.method private __ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V
    .locals 2

    .prologue
    .line 1872
    if-eqz p2, :cond_0

    .line 1873
    iget-object v0, p1, Lorg/apache/commons/net/nntp/ArticleInfo;->articleId:Ljava/lang/String;

    iput-object v0, p2, Lorg/apache/commons/net/nntp/ArticlePointer;->articleId:Ljava/lang/String;

    .line 1874
    iget-wide v0, p1, Lorg/apache/commons/net/nntp/ArticleInfo;->articleNumber:J

    long-to-int v0, v0

    iput v0, p2, Lorg/apache/commons/net/nntp/ArticlePointer;->articleNumber:I

    .line 1876
    :cond_0
    return-void
.end method

.method private __ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;
    .locals 1

    .prologue
    .line 1863
    if-nez p1, :cond_0

    .line 1864
    const/4 v0, 0x0

    .line 1867
    :goto_0
    return-object v0

    .line 1866
    :cond_0
    new-instance v0, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/ArticleInfo;-><init>()V

    goto :goto_0
.end method

.method static __parseArticleEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/Article;
    .locals 6

    .prologue
    .line 225
    new-instance v0, Lorg/apache/commons/net/nntp/Article;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/Article;-><init>()V

    .line 226
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/nntp/Article;->setSubject(Ljava/lang/String;)V

    .line 227
    const-string v1, "\t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 228
    array-length v2, v1

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 229
    const/4 v2, 0x0

    .line 231
    const/4 v3, 0x1

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/net/nntp/Article;->setArticleNumber(J)V

    .line 232
    const/4 v2, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/Article;->setSubject(Ljava/lang/String;)V

    .line 233
    const/4 v3, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/nntp/Article;->setFrom(Ljava/lang/String;)V

    .line 234
    const/4 v2, 0x4

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/Article;->setDate(Ljava/lang/String;)V

    .line 235
    const/4 v3, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/nntp/Article;->setArticleId(Ljava/lang/String;)V

    .line 236
    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/Article;->addReference(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private __parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 102
    const/4 v1, 0x1

    .line 106
    const/4 v2, 0x2

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p2, Lorg/apache/commons/net/nntp/ArticleInfo;->articleNumber:J

    .line 108
    aget-object v0, v0, v2

    iput-object v0, p2, Lorg/apache/commons/net/nntp/ArticleInfo;->articleId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 116
    :cond_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse article pointer.\nServer reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static __parseGroupReply(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 137
    const/4 v2, 0x2

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setArticleCount(J)V

    .line 139
    const/4 v1, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setFirstArticle(J)V

    .line 141
    const/4 v2, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setLastArticle(J)V

    .line 143
    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setNewsgroup(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 153
    :cond_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse newsgroup info.\nServer reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static __parseNewsgroupListEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 161
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 162
    array-length v0, v1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 165
    :cond_0
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupInfo;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;-><init>()V

    .line 169
    const/4 v2, 0x1

    aget-object v3, v1, v7

    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setNewsgroup(Ljava/lang/String;)V

    .line 173
    const/4 v3, 0x2

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 174
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 175
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setFirstArticle(J)V

    .line 176
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setLastArticle(J)V

    .line 177
    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    .line 178
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setArticleCount(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    aget-object v1, v1, v12

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 204
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V

    goto :goto_0

    .line 180
    :cond_1
    sub-long v2, v4, v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    :try_start_1
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setArticleCount(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :sswitch_0
    invoke-virtual {v0, v11}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V

    goto :goto_0

    .line 195
    :sswitch_1
    invoke-virtual {v0, v12}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V

    goto :goto_0

    .line 200
    :sswitch_2
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V

    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_2
        0x4e -> :sswitch_1
        0x59 -> :sswitch_0
        0x6d -> :sswitch_2
        0x6e -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private __readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 250
    new-instance v2, Ljava/util/Vector;

    const/16 v0, 0x800

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 254
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseNewsgroupListEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v3

    .line 256
    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0

    .line 259
    :cond_0
    :try_start_1
    new-instance v2, Lorg/apache/commons/net/MalformedServerReplyException;

    invoke-direct {v2, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 266
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 267
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 273
    :goto_1
    return-object v0

    .line 270
    :cond_2
    new-array v0, v0, [Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 271
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private __retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    .line 310
    :cond_0
    if-eqz p4, :cond_1

    .line 311
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 314
    :cond_1
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method private __retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 280
    if-eqz p2, :cond_1

    .line 282
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 288
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(I)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    :cond_2
    if-eqz p3, :cond_3

    .line 295
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 298
    :cond_3
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method private __retrieveArticleInfo(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1474
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->xover(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    const/4 v0, 0x0

    .line 1478
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method private __retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1547
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->xhdr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    const/4 v0, 0x0

    .line 1551
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1445
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->authinfoUser(Ljava/lang/String;)I

    move-result v1

    .line 1447
    const/16 v2, 0x17d

    if-ne v1, v2, :cond_0

    .line 1449
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->authinfoPass(Ljava/lang/String;)I

    move-result v1

    .line 1451
    const/16 v2, 0x119

    if-ne v1, v2, :cond_0

    .line 1453
    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_isAllowedToPost:Z

    .line 1457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public completePendingCommand()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1356
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public forwardArticle(Ljava/lang/String;)Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1409
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ihave(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    const/4 v0, 0x0

    .line 1413
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_writer_:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method public iterateArticleInfo(JJ)Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/net/nntp/Article;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1524
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(JJ)Ljava/io/BufferedReader;

    move-result-object v0

    .line 1525
    if-nez v0, :cond_0

    .line 1526
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XOVER command failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1529
    :cond_0
    new-instance v1, Lorg/apache/commons/net/nntp/ArticleIterator;

    new-instance v2, Lorg/apache/commons/net/nntp/ReplyIterator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;Z)V

    invoke-direct {v1, v2}, Lorg/apache/commons/net/nntp/ArticleIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v1
.end method

.method public iterateNewNews(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1314
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getNewsgroups()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v4

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/nntp/NNTPClient;->newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    new-instance v0, Lorg/apache/commons/net/nntp/ReplyIterator;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object v0

    .line 1319
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NEWNEWS command failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterateNewNewsgroupListing(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1201
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/net/nntp/NNTPClient;->newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    new-instance v0, Lorg/apache/commons/net/nntp/ReplyIterator;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object v0

    .line 1206
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NEWGROUPS command failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterateNewNewsgroups(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1229
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupIterator;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->iterateNewNewsgroupListing(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NewsgroupIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public iterateNewsgroupListing()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1062
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->list()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    new-instance v0, Lorg/apache/commons/net/nntp/ReplyIterator;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object v0

    .line 1065
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIST command failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterateNewsgroupListing(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->listActive(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    new-instance v0, Lorg/apache/commons/net/nntp/ReplyIterator;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object v0

    .line 1127
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIST ACTIVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterateNewsgroups()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1086
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupIterator;

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->iterateNewsgroupListing()Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NewsgroupIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public iterateNewsgroups(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupIterator;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->iterateNewsgroupListing(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NewsgroupIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public listHelp()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->help()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isInformational(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    const/4 v0, 0x0

    .line 777
    :goto_0
    return-object v0

    .line 772
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 773
    new-instance v1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 774
    invoke-static {v1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 775
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 776
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    .line 777
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public listNewNews(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getNewsgroups()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v4

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/nntp/NNTPClient;->newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    const/4 v0, 0x0

    .line 1287
    :goto_0
    return-object v0

    .line 1267
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1268
    new-instance v2, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 1272
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1273
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1276
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1279
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1280
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 1281
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    .line 1284
    :cond_2
    new-array v0, v0, [Ljava/lang/String;

    .line 1285
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public listNewNewsgroups(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/net/nntp/NNTPClient;->newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    const/4 v0, 0x0

    .line 1178
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->__readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public listNewsgroups()[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->list()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    const/4 v0, 0x0

    .line 1041
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->__readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public listNewsgroups(Ljava/lang/String;)[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->listActive(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    .line 1107
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->__readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public listOverviewFmt()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    const-string v0, "LIST"

    const-string v1, "OVERVIEW.FMT"

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    const/4 v0, 0x0

    .line 799
    :goto_0
    return-object v0

    .line 792
    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 794
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 795
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 796
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 798
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 799
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

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
    .line 1428
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->quit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public postArticle()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1399
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->post()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    const/4 v0, 0x0

    .line 1403
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_writer_:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method public retrieveArticle(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1733
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(J)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1718
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1719
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 1720
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1721
    return-object v1
.end method

.method public retrieveArticle(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1761
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1762
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 1763
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1764
    return-object v1
.end method

.method public retrieveArticleBody(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1705
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(J)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1745
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1746
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 1747
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1748
    return-object v1
.end method

.method public retrieveArticleBody(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1777
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1778
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 1779
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1780
    return-object v1
.end method

.method public retrieveArticleHeader(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1679
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(J)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1691
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1692
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 1693
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1694
    return-object v1
.end method

.method public retrieveArticleHeader(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1793
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1794
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 1795
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1796
    return-object v1
.end method

.method public retrieveArticleInfo(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieveArticleInfo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleInfo(JJ)Ljava/io/BufferedReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieveArticleInfo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleInfo(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1657
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(J)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleInfo(II)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1619
    int-to-long v0, p1

    int-to-long v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(JJ)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveHeader(Ljava/lang/String;J)Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1565
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveHeader(Ljava/lang/String;JJ)Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveHeader(Ljava/lang/String;I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1631
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;J)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveHeader(Ljava/lang/String;II)Ljava/io/Reader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1607
    int-to-long v2, p2

    int-to-long v4, p3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;JJ)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public selectArticle(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1668
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(J)Z

    move-result v0

    return v0
.end method

.method public selectArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1643
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1644
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 1645
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1646
    return v1
.end method

.method public selectArticle(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v0

    return v0
.end method

.method public selectArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->stat(J)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    const/4 v0, 0x0

    .line 907
    :goto_0
    return v0

    .line 903
    :cond_0
    if-eqz p3, :cond_1

    .line 904
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 907
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectArticle(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v0

    return v0
.end method

.method public selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 830
    if-eqz p1, :cond_1

    .line 831
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->stat(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 844
    :cond_0
    :goto_0
    return v0

    .line 835
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->stat()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    :cond_2
    if-eqz p2, :cond_3

    .line 841
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 844
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1809
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1810
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 1811
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1812
    return v1
.end method

.method public selectArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v0

    return v0
.end method

.method public selectArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1824
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1825
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 1826
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1827
    return v1
.end method

.method public selectNewsgroup(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNewsgroup(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)Z

    move-result v0

    return v0
.end method

.method public selectNewsgroup(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->group(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x0

    .line 740
    :goto_0
    return v0

    .line 736
    :cond_0
    if-eqz p2, :cond_1

    .line 737
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseGroupReply(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)V

    .line 740
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectNextArticle()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1011
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNextArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v0

    return v0
.end method

.method public selectNextArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->next()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return v0

    .line 998
    :cond_0
    if-eqz p1, :cond_1

    .line 999
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 1002
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectNextArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1839
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1840
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNextArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 1841
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1842
    return v1
.end method

.method public selectPreviousArticle()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v0

    return v0
.end method

.method public selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->last()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    const/4 v0, 0x0

    .line 956
    :goto_0
    return v0

    .line 952
    :cond_0
    if-eqz p1, :cond_1

    .line 953
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 956
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1854
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1855
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 1856
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 1857
    return v1
.end method
