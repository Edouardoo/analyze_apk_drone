.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private __maxTimeouts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    .line 75
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 76
    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    .line 133
    new-instance v12, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v12, v0, v1, v4}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v9, 0x1

    .line 140
    if-nez p2, :cond_0

    .line 141
    new-instance v4, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 p3, v4

    .line 144
    :cond_0
    new-instance v4, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    move-object v5, v4

    move v6, v7

    move v8, v7

    move v10, v7

    move v11, v7

    .line 150
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 159
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 189
    if-nez v10, :cond_2

    .line 191
    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v8

    .line 192
    invoke-virtual {v12, v8}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setPort(I)V

    .line 193
    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 195
    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    .line 196
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 197
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 203
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v7

    if-ne v7, v8, :cond_7

    .line 207
    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 258
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 259
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Received unexpected packet type."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    :catch_0
    move-exception v4

    .line 164
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-lt v4, v7, :cond_3

    .line 166
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 167
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Connection timed out."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v4, v5

    move v7, v8

    .line 282
    :goto_1
    const/16 v5, 0x200

    if-eq v6, v5, :cond_9

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 287
    return v11

    .line 171
    :catch_1
    move-exception v4

    .line 173
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-lt v4, v7, :cond_4

    .line 175
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 176
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Connection timed out."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-object v4, v5

    move v7, v8

    .line 178
    goto :goto_1

    .line 180
    :catch_2
    move-exception v4

    .line 182
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 183
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad packet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    :pswitch_1
    check-cast v4, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 211
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 212
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 215
    :pswitch_2
    check-cast v4, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .line 216
    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    move-result v6

    .line 218
    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v10

    .line 220
    if-ne v10, v9, :cond_5

    .line 224
    :try_start_1
    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 236
    add-int/lit8 v4, v9, 0x1

    .line 237
    const v5, 0xffff

    if-le v4, v5, :cond_8

    .line 240
    const/4 v4, 0x0

    move v5, v4

    .line 277
    :goto_2
    invoke-virtual {v12, v10}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V

    .line 279
    add-int/2addr v11, v6

    move-object v4, v12

    move v7, v8

    move v9, v5

    goto/16 :goto_1

    .line 227
    :catch_3
    move-exception v4

    .line 229
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const/4 v6, 0x3

    const-string v7, "File write failed."

    move-object/from16 v0, p4

    invoke-direct {v5, v0, v8, v6, v7}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 234
    throw v4

    .line 247
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    .line 249
    if-nez v9, :cond_6

    const v4, 0xffff

    :goto_3
    if-ne v10, v4, :cond_1

    move-object v4, v5

    move v7, v8

    .line 250
    goto/16 :goto_1

    .line 249
    :cond_6
    add-int/lit8 v4, v9, -0x1

    goto :goto_3

    .line 264
    :cond_7
    new-instance v7, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v4

    const/4 v14, 0x5

    const-string v15, "Unexpected host or port."

    invoke-direct {v7, v13, v4, v14, v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    move-object v4, v5

    move v7, v8

    .line 269
    goto/16 :goto_1

    :cond_8
    move v5, v4

    goto :goto_2

    :cond_9
    move-object v5, v4

    move v8, v7

    goto/16 :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 617
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 577
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 597
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    .line 380
    new-instance v4, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 384
    const/4 v7, 0x1

    .line 386
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 388
    const/4 v10, 0x0

    .line 389
    const/4 v12, 0x0

    .line 390
    const/4 v6, 0x0

    .line 392
    if-nez p2, :cond_0

    .line 393
    new-instance v5, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 p3, v5

    .line 396
    :cond_0
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    move-object v8, v5

    move v9, v10

    move v11, v10

    .line 404
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 416
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 448
    if-eqz v7, :cond_1

    .line 450
    const/4 v7, 0x0

    .line 451
    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v11

    .line 452
    invoke-virtual {v4, v11}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setPort(I)V

    .line 453
    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 455
    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    .line 456
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 457
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 463
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v10

    if-ne v10, v11, :cond_6

    .line 467
    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 504
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 505
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Received unexpected packet type."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 419
    :catch_0
    move-exception v5

    .line 421
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-lt v5, v10, :cond_2

    .line 423
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 424
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Connection timed out."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move v5, v6

    move v10, v11

    .line 545
    :goto_2
    if-gtz v9, :cond_9

    if-nez v5, :cond_9

    .line 550
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 551
    return-void

    .line 428
    :catch_1
    move-exception v5

    .line 430
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-lt v5, v10, :cond_4

    .line 432
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 433
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Connection timed out."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move v5, v6

    move v10, v11

    .line 435
    goto :goto_2

    .line 437
    :catch_2
    move-exception v4

    .line 439
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 440
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad packet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    move-object v4, v5

    .line 470
    check-cast v4, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 471
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 472
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 475
    :pswitch_1
    check-cast v5, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    .line 477
    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v5

    .line 479
    if-ne v5, v12, :cond_5

    .line 481
    add-int/lit8 v5, v12, 0x1

    .line 482
    const v8, 0xffff

    if-le v5, v8, :cond_a

    .line 485
    const/4 v5, 0x0

    move v12, v5

    .line 487
    :goto_3
    if-nez v6, :cond_3

    .line 526
    const/16 v10, 0x200

    .line 527
    const/4 v8, 0x4

    .line 528
    const/4 v5, 0x0

    move v9, v5

    .line 530
    :goto_4
    if-lez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_7

    .line 532
    add-int/2addr v8, v5

    .line 533
    sub-int/2addr v10, v5

    .line 534
    add-int/2addr v5, v9

    move v9, v5

    goto :goto_4

    .line 497
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    goto/16 :goto_1

    .line 510
    :cond_6
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v5

    const/4 v14, 0x5

    const-string v15, "Unexpected host or port."

    invoke-direct {v10, v13, v5, v14, v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    move v5, v6

    move v10, v11

    .line 515
    goto/16 :goto_2

    .line 537
    :cond_7
    const/16 v5, 0x200

    if-ge v9, v5, :cond_8

    .line 539
    const/4 v6, 0x1

    .line 541
    :cond_8
    invoke-virtual {v4, v12}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v8, 0x4

    invoke-virtual {v4, v5, v8, v9}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V

    move v5, v6

    move-object v8, v4

    move v10, v11

    .line 543
    goto/16 :goto_2

    :cond_9
    move v6, v5

    move v11, v10

    goto/16 :goto_0

    :cond_a
    move v12, v5

    goto :goto_3

    .line 467
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxTimeouts(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 90
    if-ge p1, v0, :cond_0

    .line 91
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    goto :goto_0
.end method
