.class public final Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private __lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 53
    return-void
.end method

.method private __write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    packed-switch p1, :pswitch_data_0

    .line 75
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iput-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 83
    :goto_0
    return-void

    .line 61
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    goto :goto_0

    .line 65
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 68
    iput-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    goto :goto_0

    .line 71
    :cond_1
    iput-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 72
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 173
    :cond_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :cond_1
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_0

    .line 150
    add-int/lit8 v1, p2, 0x1

    :try_start_1
    aget-byte v2, p1, p2

    invoke-direct {p0, v2}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p3, v0

    move p2, v1

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
