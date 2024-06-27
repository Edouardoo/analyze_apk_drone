.class final Lorg/apache/commons/net/telnet/TelnetOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final __client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private final __convertCRtoCRLF:Z

.field private __lastWasCR:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__convertCRtoCRLF:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 44
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_closeOutputStream()V

    .line 164
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 157
    return-void
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0xff

    .line 59
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 61
    and-int/lit16 v0, p1, 0xff

    .line 63
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedWont(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 70
    if-ne v0, v5, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 73
    monitor-exit v1

    .line 114
    :goto_0
    return-void

    .line 82
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 101
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 113
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 85
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    goto :goto_1

    .line 89
    :sswitch_1
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    if-nez v2, :cond_1

    .line 90
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 92
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    goto :goto_1

    .line 96
    :sswitch_2
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 97
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    goto :goto_1

    .line 106
    :cond_2
    if-ne v0, v4, :cond_3

    .line 108
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 109
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 82
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0xff -> :sswitch_2
    .end sparse-switch
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write([BII)V

    .line 128
    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v2

    .line 146
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_0

    .line 147
    add-int/lit8 v1, p2, 0x1

    :try_start_0
    aget-byte v3, p1, p2

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write(I)V

    move p3, v0

    move p2, v1

    goto :goto_0

    .line 149
    :cond_0
    monitor-exit v2

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
