.class public Lorg/apache/commons/net/imap/IMAP;
.super Lorg/apache/commons/net/SocketClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;,
        Lorg/apache/commons/net/imap/IMAP$IMAPState;
    }
.end annotation


# static fields
.field public static final DEFAULT_PORT:I = 0x8f

.field public static final TRUE_CHUNK_LISTENER:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

.field protected static final __DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field private volatile __chunkListener:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

.field private __state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field protected __writer:Ljava/io/BufferedWriter;

.field private final _initialID:[C

.field protected _reader:Ljava/io/BufferedReader;

.field private _replyCode:I

.field private final _replyLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/apache/commons/net/imap/IMAP$1;

    invoke-direct {v0}, Lorg/apache/commons/net/imap/IMAP$1;-><init>()V

    sput-object v0, Lorg/apache/commons/net/imap/IMAP;->TRUE_CHUNK_LISTENER:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    .line 120
    const/16 v0, 0x8f

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setDefaultPort(I)V

    .line 121
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 122
    iput-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    .line 123
    iput-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->createCommandSupport()V

    .line 126
    return-void

    .line 112
    :array_0
    .array-data 2
        0x41s
        0x41s
        0x41s
        0x41s
    .end array-data
.end method

.method private __getReply()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->__getReply(Z)V

    .line 136
    return-void
.end method

.method private __getReply(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 150
    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    if-eqz p1, :cond_7

    .line 157
    :goto_0
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isUntagged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 158
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->literalCount(Ljava/lang/String;)I

    move-result v1

    .line 159
    if-ltz v1, :cond_1

    const/4 v0, 0x1

    .line 160
    :goto_1
    if-ltz v1, :cond_3

    .line 161
    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 162
    if-nez v2, :cond_2

    .line 163
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 165
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 168
    :cond_3
    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__chunkListener:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

    .line 170
    if-eqz v0, :cond_4

    .line 171
    invoke-interface {v0, p0}, Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;->chunkReceived(Lorg/apache/commons/net/imap/IMAP;)Z

    move-result v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAP;->fireReplyReceived(ILjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_5

    .line 180
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_6
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyCode:I

    .line 190
    :goto_2
    iget v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/IMAP;->fireReplyReceived(ILjava/lang/String;)V

    .line 191
    return-void

    .line 187
    :cond_7
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->getUntaggedReplyCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyCode:I

    goto :goto_2
.end method

.method private sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    if-eqz p3, :cond_1

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 304
    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/net/imap/IMAP;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAP;->__getReply()V

    .line 307
    iget v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyCode:I

    return v0
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 217
    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->_input_:Ljava/io/InputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    .line 220
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->_output_:Ljava/io/OutputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    .line 223
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getSoTimeout()I

    move-result v0

    .line 224
    if-gtz v0, :cond_0

    .line 225
    iget v1, p0, Lorg/apache/commons/net/imap/IMAP;->connectTimeout:I

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/imap/IMAP;->setSoTimeout(I)V

    .line 227
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/commons/net/imap/IMAP;->__getReply(Z)V

    .line 228
    if-gtz v0, :cond_1

    .line 229
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setSoTimeout(I)V

    .line 231
    :cond_1
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 232
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

    .line 267
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    .line 268
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    .line 269
    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    .line 270
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 272
    return-void
.end method

.method public doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method protected fireReplyReceived(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method protected generateCommandID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 453
    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 455
    const/4 v0, 0x1

    .line 456
    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    .line 458
    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    aget-char v3, v3, v1

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_0

    .line 460
    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    const/16 v4, 0x41

    aput-char v4, v3, v1

    .line 456
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_initialID:[C

    aget-char v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 465
    const/4 v0, 0x0

    goto :goto_1

    .line 468
    :cond_1
    return-object v2
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 423
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->_replyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lorg/apache/commons/net/imap/IMAP$IMAPState;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->generateCommandID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1}, Lorg/apache/commons/net/imap/IMAPCommand;->getIMAPCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendData(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-direct {p0, v0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setChunkListener(Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->__chunkListener:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

    .line 445
    return-void
.end method

.method protected setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->__state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    .line 243
    return-void
.end method
