.class public final Lorg/apache/commons/net/io/DotTerminatedMessageReader;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# static fields
.field private static final CR:C = '\r'

.field private static final DOT:I = 0x2e

.field private static final LF:C = '\n'


# instance fields
.field private atBeginning:Z

.field private eof:Z

.field private seenCR:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 61
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    if-nez v0, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 219
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 221
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/16 v1, 0x2e

    const/4 v0, -0x1

    .line 77
    iget-object v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 78
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    if-eqz v2, :cond_0

    .line 79
    monitor-exit v3

    .line 131
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .line 82
    if-ne v2, v0, :cond_1

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 84
    monitor-exit v3

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    if-eqz v4, :cond_6

    .line 87
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 88
    if-ne v2, v1, :cond_6

    .line 89
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->mark(I)V

    .line 90
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .line 91
    if-ne v2, v0, :cond_2

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 94
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 96
    :cond_2
    if-ne v2, v1, :cond_3

    .line 98
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 100
    :cond_3
    const/16 v4, 0xd

    if-ne v2, v4, :cond_5

    .line 101
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .line 102
    if-ne v2, v0, :cond_4

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->reset()V

    .line 105
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 107
    :cond_4
    if-ne v2, v5, :cond_5

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 111
    monitor-exit v3

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->reset()V

    .line 117
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 122
    :cond_6
    iget-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    if-eqz v0, :cond_7

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    .line 124
    if-ne v2, v5, :cond_7

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 128
    :cond_7
    const/16 v0, 0xd

    if-ne v2, v0, :cond_8

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    .line 131
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 169
    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 178
    monitor-exit v4

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v2, p2

    .line 185
    :goto_1
    add-int/lit8 v3, v2, 0x1

    int-to-char v1, v1

    :try_start_1
    aput-char v1, p1, v2

    .line 187
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 189
    :cond_2
    sub-int v0, v3, p2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 237
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    iget-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    if-eqz v3, :cond_1

    .line 238
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 249
    :cond_0
    :goto_1
    return-object v0

    .line 240
    :cond_1
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v0, 0x0

    goto :goto_1
.end method
