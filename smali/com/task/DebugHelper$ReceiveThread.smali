.class Lcom/task/DebugHelper$ReceiveThread;
.super Ljava/lang/Thread;
.source "DebugHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/task/DebugHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveThread"
.end annotation


# instance fields
.field private volatile isThreadAlive:Z

.field private mSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/task/DebugHelper;


# direct methods
.method constructor <init>(Lcom/task/DebugHelper;Ljava/net/DatagramSocket;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/task/DebugHelper$ReceiveThread;->this$0:Lcom/task/DebugHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    .line 168
    iput-object p2, p0, Lcom/task/DebugHelper$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/task/DebugHelper$ReceiveThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/DebugHelper$ReceiveThread;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/task/DebugHelper$ReceiveThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/task/DebugHelper$ReceiveThread;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/task/DebugHelper$ReceiveThread;->stopThread()V

    return-void
.end method

.method private declared-synchronized stopThread()V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/task/DebugHelper$ReceiveThread;->isThreadAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private string2Int(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 264
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :cond_0
    :goto_0
    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 183
    invoke-static {}, Lcom/task/DebugHelper;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ReceiveThread running..."

    invoke-static/range {v15 .. v16}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    if-eqz v15, :cond_1

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/DebugHelper$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    if-nez v15, :cond_2

    .line 186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/DebugHelper$ReceiveThread;->this$0:Lcom/task/DebugHelper;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/DebugHelper$ReceiveThread;->this$0:Lcom/task/DebugHelper;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/task/DebugHelper;->access$400(Lcom/task/DebugHelper;I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/task/DebugHelper;->access$500(Lcom/task/DebugHelper;ILjava/lang/String;)V

    .line 257
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    .line 258
    return-void

    .line 190
    :cond_2
    const/16 v15, 0x1400

    :try_start_0
    new-array v6, v15, [B

    .line 191
    .local v6, "mBuffer":[B
    new-instance v7, Ljava/net/DatagramPacket;

    array-length v15, v6

    invoke-direct {v7, v6, v15}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 192
    .local v7, "mRcvDatagramPacket":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/DebugHelper$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v15, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 193
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 194
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, "remoteIP":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v15

    array-length v15, v15

    if-lez v15, :cond_0

    .line 196
    new-instance v15, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "mReceiveContent":Ljava/lang/String;
    const-string v15, "MSSDP_NOTIFY "

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 199
    const-string v15, "MSSDP_NOTIFY "

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 200
    const-string v15, "UX_SEND_LEN"

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 201
    .local v5, "index":I
    const/4 v15, -0x1

    if-eq v5, v15, :cond_6

    .line 202
    const-string v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 203
    const/4 v12, 0x0

    .line 204
    .local v12, "sendDataLen":I
    const/4 v11, 0x0

    .line 205
    .local v11, "sendDataInterval":I
    const-string v15, ","

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "args":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v1, v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 207
    const/4 v15, 0x0

    aget-object v15, v1, v15

    const-string v16, ":"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "params":[Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v9, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/task/DebugHelper$ReceiveThread;->string2Int(Ljava/lang/String;)I

    move-result v12

    .line 210
    .end local v9    # "params":[Ljava/lang/String;
    :cond_3
    const/4 v15, 0x1

    aget-object v15, v1, v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 211
    const/4 v15, 0x1

    aget-object v15, v1, v15

    const-string v16, ":"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 212
    .restart local v9    # "params":[Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v9, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/task/DebugHelper$ReceiveThread;->string2Int(Ljava/lang/String;)I

    move-result v11

    .line 215
    .end local v9    # "params":[Ljava/lang/String;
    :cond_4
    if-lez v12, :cond_5

    .line 216
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/DebugHelper$ReceiveThread;->this$0:Lcom/task/DebugHelper;

    invoke-static {v15, v10, v12, v11}, Lcom/task/DebugHelper;->access$600(Lcom/task/DebugHelper;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 252
    .end local v1    # "args":[Ljava/lang/String;
    .end local v5    # "index":I
    .end local v6    # "mBuffer":[B
    .end local v7    # "mRcvDatagramPacket":Ljava/net/DatagramPacket;
    .end local v8    # "mReceiveContent":Ljava/lang/String;
    .end local v10    # "remoteIP":Ljava/lang/String;
    .end local v11    # "sendDataInterval":I
    .end local v12    # "sendDataLen":I
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/DebugHelper$ReceiveThread;->this$0:Lcom/task/DebugHelper;

    const/16 v16, 0x2

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/task/DebugHelper;->access$500(Lcom/task/DebugHelper;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 218
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "args":[Ljava/lang/String;
    .restart local v5    # "index":I
    .restart local v6    # "mBuffer":[B
    .restart local v7    # "mRcvDatagramPacket":Ljava/net/DatagramPacket;
    .restart local v8    # "mReceiveContent":Ljava/lang/String;
    .restart local v10    # "remoteIP":Ljava/lang/String;
    .restart local v11    # "sendDataInterval":I
    .restart local v12    # "sendDataLen":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/DebugHelper$ReceiveThread;->this$0:Lcom/task/DebugHelper;

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/DebugHelper$ReceiveThread;->this$0:Lcom/task/DebugHelper;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Lcom/task/DebugHelper;->access$400(Lcom/task/DebugHelper;I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/task/DebugHelper;->access$500(Lcom/task/DebugHelper;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 222
    .end local v1    # "args":[Ljava/lang/String;
    .end local v11    # "sendDataInterval":I
    .end local v12    # "sendDataLen":I
    :cond_6
    const-string v15, "UX_REPORT"

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 223
    const/4 v15, -0x1

    if-eq v5, v15, :cond_9

    .line 224
    const-string v15, ":"

    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 225
    const-string v15, ":"

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 226
    .local v14, "sons":[Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v13, v14, v15

    .line 228
    .local v13, "sonContent":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "dropCount":I
    const/4 v3, 0x0

    .line 231
    .local v3, "dropSum":I
    const-string v15, ","

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 232
    .restart local v1    # "args":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v1, v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 233
    const/4 v15, 0x0

    aget-object v15, v1, v15

    const-string v16, ":"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 234
    .restart local v9    # "params":[Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v9, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/task/DebugHelper$ReceiveThread;->string2Int(Ljava/lang/String;)I

    move-result v2

    .line 236
    .end local v9    # "params":[Ljava/lang/String;
    :cond_7
    const/4 v15, 0x1

    aget-object v15, v1, v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 237
    const/4 v15, 0x1

    aget-object v15, v1, v15

    const-string v16, ":"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 238
    .restart local v9    # "params":[Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v9, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/task/DebugHelper$ReceiveThread;->string2Int(Ljava/lang/String;)I

    move-result v3

    .line 241
    .end local v9    # "params":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/DebugHelper$ReceiveThread;->this$0:Lcom/task/DebugHelper;

    invoke-static {v15, v2, v3}, Lcom/task/DebugHelper;->access$700(Lcom/task/DebugHelper;II)V

    goto/16 :goto_0

    .line 245
    .end local v1    # "args":[Ljava/lang/String;
    .end local v2    # "dropCount":I
    .end local v3    # "dropSum":I
    .end local v13    # "sonContent":Ljava/lang/String;
    .end local v14    # "sons":[Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/task/DebugHelper;->access$300()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unknown data : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/DebugHelper$ReceiveThread;->this$0:Lcom/task/DebugHelper;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/task/DebugHelper;->access$500(Lcom/task/DebugHelper;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    .line 174
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
