.class public Lorg/apache/commons/net/ftp/FTPListParseEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _internalIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private final saveUnparseableEntries:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 88
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    .line 95
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getUnparseableEntries()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    goto :goto_0
.end method

.method private readStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lorg/apache/commons/net/util/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    if-eqz v0, :cond_0

    .line 147
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 151
    return-void
.end method


# virtual methods
.method public getFiles()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    sget-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 271
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    .line 274
    if-nez v1, :cond_2

    iget-boolean v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    if-eqz v4, :cond_2

    .line 275
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 277
    :goto_1
    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/FTPFileFilter;->accept(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getNext(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 4

    .prologue
    .line 177
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 179
    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    .line 182
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    if-eqz v3, :cond_1

    .line 183
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 185
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 p1, p1, -0x1

    .line 187
    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getPrevious(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 4

    .prologue
    .line 219
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 221
    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    .line 224
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    if-eqz v3, :cond_1

    .line 225
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 227
    :goto_1
    const/4 v1, 0x0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 228
    add-int/lit8 p1, p1, -0x1

    .line 229
    goto :goto_0

    .line 230
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public readServerList(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 119
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->preParse(Ljava/util/List;)Ljava/util/List;

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->resetIterator()V

    .line 122
    return-void
.end method

.method public resetIterator()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    .line 312
    return-void
.end method
