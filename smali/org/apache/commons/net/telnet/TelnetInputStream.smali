.class final Lorg/apache/commons/net/telnet/TelnetInputStream;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EOF:I = -0x1

.field private static final WOULD_BLOCK:I = -0x2

.field static final _STATE_CR:I = 0x8

.field static final _STATE_DATA:I = 0x0

.field static final _STATE_DO:I = 0x4

.field static final _STATE_DONT:I = 0x5

.field static final _STATE_IAC:I = 0x1

.field static final _STATE_IAC_SB:I = 0x9

.field static final _STATE_SB:I = 0x6

.field static final _STATE_SE:I = 0x7

.field static final _STATE_WILL:I = 0x2

.field static final _STATE_WONT:I = 0x3


# instance fields
.field private __bytesAvailable:I

.field private final __client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private __hasReachedEOF:Z

.field private __ioException:Ljava/io/IOException;

.field private volatile __isClosed:Z

.field private final __queue:[I

.field private __queueHead:I

.field private __queueTail:I

.field private __readIsWaiting:Z

.field private __receiveState:I

.field private final __suboption:[I

.field private __suboption_count:I

.field private final __thread:Ljava/lang/Thread;

.field private volatile __threaded:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    .line 49
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    .line 58
    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 59
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 61
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    .line 64
    const/16 v0, 0x801

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    .line 65
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    .line 66
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    .line 67
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 68
    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 69
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    .line 70
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    .line 71
    if-eqz p3, :cond_0

    .line 72
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private __processChar(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v1

    .line 309
    :try_start_0
    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 310
    :cond_0
    :goto_0
    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_2

    .line 314
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 323
    :try_start_2
    throw v0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 330
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Queue is full! Cannot process another character."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_2
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v2, :cond_3

    .line 337
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 340
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    aput p1, v2, v3

    .line 341
    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 343
    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 344
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    .line 346
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    return v0
.end method

.method private __read(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 127
    :goto_0
    if-nez p1, :cond_0

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, -0x2

    .line 295
    :goto_1
    return v0

    .line 132
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    .line 133
    const/4 v0, -0x1

    goto :goto_1

    .line 136
    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 139
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_processAYTResponse()V

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_spyRead(I)V

    .line 149
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 165
    :cond_2
    :pswitch_1
    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 153
    :pswitch_2
    if-nez v0, :cond_2

    goto :goto_0

    .line 172
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 174
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 176
    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedDont(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 181
    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 179
    :cond_4
    const/4 v2, 0x0

    :try_start_3
    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 183
    :cond_5
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_1

    .line 188
    :pswitch_3
    packed-switch v0, :pswitch_data_1

    .line 215
    :pswitch_4
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 216
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processCommand(I)V

    goto :goto_0

    .line 191
    :pswitch_5
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    .line 194
    :pswitch_6
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    .line 197
    :pswitch_7
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    .line 200
    :pswitch_8
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    .line 204
    :pswitch_9
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    .line 205
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    .line 209
    :pswitch_a
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_1

    .line 212
    :pswitch_b
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_0

    .line 221
    :pswitch_c
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 223
    :try_start_4
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processWill(I)V

    .line 224
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 225
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 226
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    .line 225
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 229
    :pswitch_d
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 231
    :try_start_6
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processWont(I)V

    .line 232
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 233
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 234
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    .line 233
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 237
    :pswitch_e
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 239
    :try_start_8
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processDo(I)V

    .line 240
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 241
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 242
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    .line 241
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 245
    :pswitch_f
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 247
    :try_start_a
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processDont(I)V

    .line 248
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 249
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 250
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    .line 249
    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    .line 254
    :pswitch_10
    packed-switch v0, :pswitch_data_2

    .line 261
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 262
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    aput v0, v1, v2

    .line 266
    :cond_6
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    .line 257
    :pswitch_11
    const/16 v0, 0x9

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    .line 269
    :pswitch_12
    sparse-switch v0, :sswitch_data_0

    .line 287
    :cond_7
    :goto_3
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    .line 272
    :sswitch_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 274
    :try_start_c
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->_processSuboption([II)V

    .line 275
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 276
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 277
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto/16 :goto_0

    .line 276
    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0

    .line 280
    :sswitch_1
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 281
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    aput v0, v1, v2

    goto :goto_3

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_2
        :pswitch_12
    .end packed-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0xf0
        :pswitch_b
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 254
    :pswitch_data_2
    .packed-switch 0xff
        :pswitch_11
    .end packed-switch

    .line 269
    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method _start()V
    .locals 3

    .prologue
    const/16 v0, 0xa

    const/4 v2, 0x1

    .line 84
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 95
    if-le v1, v0, :cond_1

    .line 98
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 99
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 100
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v1

    .line 556
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v0, :cond_0

    .line 557
    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    monitor-exit v1

    .line 559
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    add-int/2addr v0, v2

    monitor-exit v1

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 576
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v1

    .line 578
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 581
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 587
    monitor-exit v1

    .line 589
    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x2

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 356
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v4

    .line 361
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 364
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 366
    throw v0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 369
    :cond_0
    :try_start_1
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-nez v1, :cond_6

    .line 372
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    if-eqz v1, :cond_1

    .line 373
    monitor-exit v4

    .line 470
    :goto_1
    return v0

    .line 377
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    .line 383
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 384
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Fatal thread interruption during read."

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    .line 402
    :goto_2
    :try_start_4
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__read(Z)I
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-gez v1, :cond_3

    .line 403
    if-eq v1, v6, :cond_3

    .line 404
    :try_start_5
    monitor-exit v4

    move v0, v1

    goto :goto_1

    .line 408
    :catch_1
    move-exception v1

    .line 410
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 412
    :try_start_6
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 413
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 416
    :try_start_7
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 422
    :goto_3
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 423
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 422
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 429
    :cond_3
    if-eq v1, v6, :cond_4

    .line 431
    :try_start_c
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__processChar(I)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 447
    :cond_4
    :try_start_d
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_9

    .line 449
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    goto :goto_0

    .line 434
    :catch_2
    move-exception v1

    .line 436
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v1, :cond_4

    .line 437
    monitor-exit v4

    goto :goto_1

    .line 457
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    aget v0, v0, v1

    .line 459
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v2, v2

    if-lt v1, v2, :cond_7

    .line 460
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    .line 463
    :cond_7
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 466
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v1, :cond_8

    .line 467
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 470
    :cond_8
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 418
    :catch_3
    move-exception v1

    goto :goto_3

    :cond_9
    move v1, v3

    goto :goto_2
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 514
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 539
    :goto_0
    return v0

    .line 519
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v2

    .line 521
    :try_start_0
    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-le p3, v0, :cond_4

    .line 522
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 524
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v4

    .line 527
    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v2, p2

    .line 534
    :goto_2
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 536
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 539
    :cond_2
    sub-int v0, v3, p2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move v1, p3

    goto :goto_1
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 599
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    .line 603
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__read(Z)I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-gez v0, :cond_3

    .line 663
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v2

    .line 665
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    .line 667
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 668
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 670
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    .line 671
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 609
    :try_start_3
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 611
    :try_start_4
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 612
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 615
    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 623
    :cond_2
    :try_start_6
    monitor-exit v2

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 654
    :catch_1
    move-exception v0

    .line 656
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v2

    .line 658
    :try_start_8
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 659
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 660
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    goto :goto_1

    .line 617
    :catch_2
    move-exception v0

    .line 619
    :try_start_9
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v0, :cond_2

    .line 620
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 625
    :catch_3
    move-exception v0

    .line 629
    :try_start_a
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    .line 639
    :cond_3
    :try_start_b
    invoke-direct {p0, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__processChar(I)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    move-result v0

    .line 649
    :goto_2
    if-eqz v0, :cond_0

    .line 650
    :try_start_c
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    goto :goto_0

    .line 641
    :catch_4
    move-exception v0

    .line 643
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_2

    .line 659
    :catchall_1
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 668
    :catchall_2
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0
.end method
