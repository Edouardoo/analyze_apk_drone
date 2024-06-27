.class public final Lorg/apache/commons/net/io/FromNetASCIIInputStream;
.super Ljava/io/PushbackInputStream;
.source "SourceFile"


# static fields
.field static final _lineSeparator:Ljava/lang/String;

.field static final _lineSeparatorBytes:[B

.field static final _noConversionRequired:Z


# instance fields
.field private __length:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    .line 43
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    .line 45
    :try_start_0
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Broken JVM - cannot find US-ASCII charset!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 75
    return-void
.end method

.method private __read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xd

    .line 82
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 84
    if-ne v0, v1, :cond_0

    .line 86
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 87
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 89
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread([B)V

    .line 90
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 92
    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 97
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread(I)V

    :cond_2
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public static final isConversionRequired()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 166
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    .line 199
    :goto_0
    return v0

    .line 170
    :cond_0
    if-ge p3, v1, :cond_1

    .line 171
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->available()I

    move-result v0

    .line 178
    if-le p3, v0, :cond_2

    move p3, v0

    :cond_2
    iput p3, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 181
    iget v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-ge v0, v1, :cond_3

    .line 182
    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 186
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    .line 187
    goto :goto_0

    :cond_4
    move v1, p2

    .line 194
    :goto_1
    add-int/lit8 v2, v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 196
    iget v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-lez v0, :cond_5

    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 199
    :cond_5
    sub-int v0, v2, p2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method
