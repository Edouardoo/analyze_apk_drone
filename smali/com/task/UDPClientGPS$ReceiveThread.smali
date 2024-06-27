.class Lcom/task/UDPClientGPS$ReceiveThread;
.super Ljava/lang/Thread;
.source "UDPClientGPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/task/UDPClientGPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveThread"
.end annotation


# instance fields
.field private volatile isThreadAlive:Z

.field private mSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/task/UDPClientGPS;


# direct methods
.method constructor <init>(Lcom/task/UDPClientGPS;Ljava/net/DatagramSocket;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/task/UDPClientGPS$ReceiveThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/task/UDPClientGPS$ReceiveThread;->isThreadAlive:Z

    .line 228
    iput-object p2, p0, Lcom/task/UDPClientGPS$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/task/UDPClientGPS$ReceiveThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/UDPClientGPS$ReceiveThread;

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/task/UDPClientGPS$ReceiveThread;->isThreadAlive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/task/UDPClientGPS$ReceiveThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/task/UDPClientGPS$ReceiveThread;

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/task/UDPClientGPS$ReceiveThread;->stopThread()V

    return-void
.end method

.method private declared-synchronized stopThread()V
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/task/UDPClientGPS$ReceiveThread;->isThreadAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private string2Int(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 352
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 358
    :cond_0
    :goto_0
    return v1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isReceiveConnected()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/task/UDPClientGPS$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 247
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/task/UDPClientGPS$ReceiveThread;->isThreadAlive:Z

    if-eqz v13, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/task/UDPClientGPS$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    if-nez v13, :cond_3

    .line 249
    invoke-static {}, Lcom/task/UDPClientGPS;->access$300()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mSocket == null..."

    invoke-static {v13, v14}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/task/UDPClientGPS$ReceiveThread;->this$0:Lcom/task/UDPClientGPS;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/UDPClientGPS$ReceiveThread;->this$0:Lcom/task/UDPClientGPS;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/task/UDPClientGPS;->access$400(Lcom/task/UDPClientGPS;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/task/UDPClientGPS;->access$500(Lcom/task/UDPClientGPS;ILjava/lang/String;)V

    .line 345
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/task/UDPClientGPS$ReceiveThread;->isThreadAlive:Z

    .line 346
    :cond_2
    return-void

    .line 254
    :cond_3
    const/16 v13, 0x50

    :try_start_0
    new-array v9, v13, [B

    .line 255
    .local v9, "mBuffer":[B
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v13, v9

    invoke-direct {v10, v9, v13}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 256
    .local v10, "mRcvDatagramPacket":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/task/UDPClientGPS$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v13, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 257
    invoke-static {}, Lcom/task/UDPClientGPS;->access$300()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mSocket.receive..."

    invoke-static {v13, v14}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 260
    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, "remoteIP":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_0

    .line 263
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 264
    .local v11, "mReceiveContent":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    .line 267
    .local v4, "data":[B
    const/4 v13, 0x0

    aget-byte v13, v4, v13

    const/16 v14, 0x46

    if-ne v13, v14, :cond_5

    const/4 v13, 0x1

    aget-byte v13, v4, v13

    const/16 v14, 0x48

    if-ne v13, v14, :cond_5

    .line 270
    const/4 v8, 0x0

    .line 271
    .local v8, "length":I
    const/4 v13, 0x1

    new-array v2, v13, [B

    .line 272
    .local v2, "checkSum2":[B
    const/4 v13, 0x1

    new-array v3, v13, [B

    .line 273
    .local v3, "checkSum3":[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-byte v14, v2, v13

    .line 275
    const/4 v13, 0x2

    new-array v7, v13, [B

    .line 276
    .local v7, "len":[B
    const/4 v13, 0x0

    const/4 v14, 0x5

    aget-byte v14, v4, v14

    aput-byte v14, v7, v13

    .line 277
    const/4 v13, 0x1

    const/4 v14, 0x4

    aget-byte v14, v4, v14

    aput-byte v14, v7, v13

    .line 278
    invoke-static {v7}, Lcom/fh/util/BufChangeHex;->bytesToInt([B)I

    move-result v8

    .line 279
    add-int/lit8 v13, v8, 0x6

    array-length v14, v4

    if-gt v13, v14, :cond_2

    .line 282
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    add-int/lit8 v13, v8, 0x3

    if-ge v6, v13, :cond_4

    .line 283
    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-byte v14, v2, v14

    add-int/lit8 v15, v6, 0x3

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v2, v13

    .line 282
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 285
    :cond_4
    const/4 v13, 0x0

    add-int/lit8 v14, v8, 0x6

    aget-byte v14, v4, v14

    aput-byte v14, v3, v13

    .line 287
    const/4 v13, 0x0

    aget-byte v13, v2, v13

    add-int/lit8 v14, v8, 0x6

    aget-byte v14, v4, v14

    if-ne v13, v14, :cond_0

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/task/UDPClientGPS$ReceiveThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v13, v4}, Lcom/task/UDPClientGPS;->access$600(Lcom/task/UDPClientGPS;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 340
    .end local v2    # "checkSum2":[B
    .end local v3    # "checkSum3":[B
    .end local v4    # "data":[B
    .end local v6    # "i":I
    .end local v7    # "len":[B
    .end local v8    # "length":I
    .end local v9    # "mBuffer":[B
    .end local v10    # "mRcvDatagramPacket":Ljava/net/DatagramPacket;
    .end local v11    # "mReceiveContent":Ljava/lang/String;
    .end local v12    # "remoteIP":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 341
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/task/UDPClientGPS$ReceiveThread;->this$0:Lcom/task/UDPClientGPS;

    const/4 v14, 0x2

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/task/UDPClientGPS;->access$500(Lcom/task/UDPClientGPS;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 320
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "data":[B
    .restart local v9    # "mBuffer":[B
    .restart local v10    # "mRcvDatagramPacket":Ljava/net/DatagramPacket;
    .restart local v11    # "mReceiveContent":Ljava/lang/String;
    .restart local v12    # "remoteIP":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    :try_start_1
    aget-byte v13, v4, v13

    const/16 v14, -0x67

    if-ne v13, v14, :cond_7

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/task/UDPClientGPS$ReceiveThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v13, v4}, Lcom/task/UDPClientGPS;->access$600(Lcom/task/UDPClientGPS;[B)V

    .line 322
    const/4 v13, 0x3

    aget-byte v13, v4, v13

    const/4 v14, 0x2

    aget-byte v14, v4, v14

    invoke-static {v13, v14}, Lcom/fh/util/BufChangeHex;->byteToInt(BB)I

    move-result v7

    .line 323
    .local v7, "len":I
    const/4 v1, 0x0

    .line 324
    .local v1, "checkSum":B
    const/4 v6, 0x4

    .restart local v6    # "i":I
    :goto_2
    add-int/lit8 v13, v7, 0x4

    if-ge v6, v13, :cond_0

    .line 325
    array-length v13, v4

    if-ge v6, v13, :cond_6

    .line 326
    aget-byte v13, v4, v6

    add-int/2addr v13, v1

    int-to-byte v1, v13

    .line 324
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 335
    .end local v1    # "checkSum":B
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/task/UDPClientGPS$ReceiveThread;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v13, v4}, Lcom/task/UDPClientGPS;->access$600(Lcom/task/UDPClientGPS;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/task/UDPClientGPS$ReceiveThread;->isThreadAlive:Z

    .line 237
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
