.class public final Lorg/apache/commons/net/io/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_COPY_BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 365
    if-eqz p0, :cond_0

    .line 367
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 382
    if-eqz p0, :cond_0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .prologue
    .line 354
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .prologue
    .line 339
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .prologue
    .line 272
    const-wide/16 v2, 0x0

    .line 273
    if-lez p2, :cond_2

    :goto_0
    new-array v7, p2, [C

    .line 277
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {p0, v7}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_1

    .line 281
    if-nez v4, :cond_4

    .line 283
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    .line 284
    if-gez v1, :cond_3

    .line 310
    :cond_1
    return-wide v2

    .line 273
    :cond_2
    const/16 p2, 0x400

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 288
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 289
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 290
    if-eqz p5, :cond_0

    .line 291
    const/4 v4, 0x1

    move-object v1, p5

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 304
    :catch_0
    move-exception v1

    .line 306
    new-instance v4, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v5, "IOException caught while copying."

    invoke-direct {v4, v5, v2, v3, v1}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v4

    .line 296
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v7, v1, v4}, Ljava/io/Writer;->write([CII)V

    .line 297
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 298
    int-to-long v5, v4

    add-long/2addr v2, v5

    .line 299
    if-eqz p5, :cond_0

    move-object v1, p5

    move-wide v5, p3

    .line 300
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .prologue
    .line 229
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .prologue
    .line 214
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .prologue
    .line 97
    const-wide/16 v2, 0x0

    .line 98
    if-lez p2, :cond_2

    :goto_0
    new-array v7, p2, [B

    .line 102
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {p0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_1

    .line 107
    if-nez v4, :cond_5

    .line 109
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 110
    if-gez v1, :cond_3

    .line 140
    :cond_1
    return-wide v2

    .line 98
    :cond_2
    const/16 p2, 0x400

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 114
    if-eqz p6, :cond_4

    .line 115
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 117
    :cond_4
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 118
    if-eqz p5, :cond_0

    .line 119
    const/4 v4, 0x1

    move-object v1, p5

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v1

    .line 136
    new-instance v4, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v5, "IOException caught while copying."

    invoke-direct {v4, v5, v2, v3, v1}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v4

    .line 124
    :cond_5
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v7, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    if-eqz p6, :cond_6

    .line 126
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 128
    :cond_6
    int-to-long v5, v4

    add-long/2addr v2, v5

    .line 129
    if-eqz p5, :cond_0

    move-object v1, p5

    move-wide v5, p3

    .line 130
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
