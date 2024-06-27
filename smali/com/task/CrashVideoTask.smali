.class public Lcom/task/CrashVideoTask;
.super Ljava/lang/Thread;
.source "CrashVideoTask.java"


# instance fields
.field private listener:Lcom/task/VideoServer$CrashVideoListener;

.field private mSocket:Ljava/net/Socket;

.field private movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

.field private onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

.field private savePath:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/task/VideoServer$CrashVideoListener;)V
    .locals 1
    .param p1, "mSocket"    # Ljava/net/Socket;
    .param p2, "listener"    # Lcom/task/VideoServer$CrashVideoListener;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    const-string v0, "CrashVideoTask"

    iput-object v0, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/task/CrashVideoTask$1;

    invoke-direct {v0, p0}, Lcom/task/CrashVideoTask$1;-><init>(Lcom/task/CrashVideoTask;)V

    iput-object v0, p0, Lcom/task/CrashVideoTask;->onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    .line 33
    iput-object p1, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    .line 34
    iput-object p2, p0, Lcom/task/CrashVideoTask;->listener:Lcom/task/VideoServer$CrashVideoListener;

    .line 35
    new-instance v0, Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/player/MovWrapper;-><init>()V

    iput-object v0, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/task/CrashVideoTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/task/CrashVideoTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/task/CrashVideoTask;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/task/CrashVideoTask;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/task/CrashVideoTask;->publishError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/task/CrashVideoTask;)Lcom/task/VideoServer$CrashVideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/task/CrashVideoTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/task/CrashVideoTask;->listener:Lcom/task/VideoServer$CrashVideoListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/task/CrashVideoTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/task/CrashVideoTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/task/CrashVideoTask;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method private getCameraLevel(I)I
    .locals 3
    .param p1, "cameraType"    # I

    .prologue
    .line 242
    const/4 v0, 0x1

    .line 243
    .local v0, "level":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    .line 244
    .local v1, "settingInfo":Lcom/hfufo/bean/DeviceSettingInfo;
    if-eqz v1, :cond_0

    .line 245
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 246
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearLevel()I

    move-result v0

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontLevel()I

    move-result v0

    goto :goto_0
.end method

.method private getVideoRate(I)I
    .locals 3
    .param p1, "cameraType"    # I

    .prologue
    .line 255
    const/16 v0, 0x1e

    .line 256
    .local v0, "rate":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    .line 257
    .local v1, "settingInfo":Lcom/hfufo/bean/DeviceSettingInfo;
    if-eqz v1, :cond_0

    .line 258
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 259
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearRate()I

    move-result v0

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v0

    goto :goto_0
.end method

.method private parsePacket(Ljava/io/InputStream;)I
    .locals 28
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 154
    const/4 v15, 0x0

    .line 155
    .local v15, "result":I
    if-eqz p1, :cond_8

    .line 157
    const/16 v25, 0x14

    :try_start_0
    move/from16 v0, v25

    new-array v9, v0, [B

    .line 158
    .local v9, "headBuf":[B
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 159
    .local v24, "typeBuf":[B
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 160
    .local v18, "seqBuf":[B
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v8, v0, [B

    .line 161
    .local v8, "frameSizeBuf":[B
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v5, v0, [B

    .line 163
    .local v5, "dateFlagBuf":[B
    const/4 v10, 0x0

    .line 165
    .local v10, "headSize":I
    :goto_0
    const/16 v25, 0x14

    move/from16 v0, v25

    if-eq v10, v0, :cond_3

    .line 166
    rsub-int/lit8 v19, v10, 0x14

    .line 167
    .local v19, "size":I
    const/16 v25, 0x4

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 168
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 172
    .local v21, "tempBuf":[B
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 173
    .local v12, "length":I
    if-gez v12, :cond_1

    .line 174
    const/16 v25, 0x0

    move/from16 v16, v15

    .line 238
    .end local v5    # "dateFlagBuf":[B
    .end local v8    # "frameSizeBuf":[B
    .end local v9    # "headBuf":[B
    .end local v10    # "headSize":I
    .end local v12    # "length":I
    .end local v15    # "result":I
    .end local v18    # "seqBuf":[B
    .end local v19    # "size":I
    .end local v21    # "tempBuf":[B
    .end local v24    # "typeBuf":[B
    .local v16, "result":I
    :goto_2
    return v25

    .line 170
    .end local v16    # "result":I
    .restart local v5    # "dateFlagBuf":[B
    .restart local v8    # "frameSizeBuf":[B
    .restart local v9    # "headBuf":[B
    .restart local v10    # "headSize":I
    .restart local v15    # "result":I
    .restart local v18    # "seqBuf":[B
    .restart local v19    # "size":I
    .restart local v24    # "typeBuf":[B
    :cond_0
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .restart local v21    # "tempBuf":[B
    goto :goto_1

    .line 176
    .restart local v12    # "length":I
    :cond_1
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/hfufo/rxdrone/MainApplication;->isAbnormalExitThread()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 177
    const/16 v25, -0x1

    move/from16 v16, v15

    .end local v15    # "result":I
    .restart local v16    # "result":I
    goto :goto_2

    .line 179
    .end local v16    # "result":I
    .restart local v15    # "result":I
    :cond_2
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v1, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    add-int/2addr v10, v12

    .line 181
    goto :goto_0

    .line 183
    .end local v12    # "length":I
    .end local v19    # "size":I
    .end local v21    # "tempBuf":[B
    :cond_3
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v27, 0x4

    move/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    const/16 v25, 0x8

    const/16 v26, 0x0

    const/16 v27, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v9, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    const/16 v25, 0x10

    const/16 v26, 0x0

    const/16 v27, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v9, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-static/range {v24 .. v24}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->byteArrayToInt([B)I

    move-result v23

    .line 189
    .local v23, "type":I
    invoke-static/range {v18 .. v18}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->byteArrayToInt([B)I

    move-result v17

    .line 190
    .local v17, "seq":I
    invoke-static {v8}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->byteArrayToInt([B)I

    move-result v7

    .line 191
    .local v7, "frameSize":I
    invoke-static {v5}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->byteArrayToInt([B)I

    move-result v4

    .line 194
    .local v4, "dateFlag":I
    if-lez v7, :cond_8

    const/high16 v25, 0x500000

    move/from16 v0, v25

    if-ge v7, v0, :cond_8

    .line 195
    new-array v13, v7, [B

    .line 197
    .local v13, "payload":[B
    const/16 v22, 0x0

    .line 199
    .local v22, "totalSize":I
    :goto_3
    move/from16 v0, v22

    if-eq v0, v7, :cond_7

    .line 200
    sub-int v11, v7, v22

    .line 201
    .local v11, "len":I
    const/16 v25, 0x400

    move/from16 v0, v25

    if-lt v11, v0, :cond_4

    .line 202
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 203
    .local v20, "temp":[B
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .line 209
    .local v14, "payloadLen":I
    :goto_4
    if-gez v14, :cond_5

    .line 210
    const/16 v25, 0x0

    move/from16 v16, v15

    .end local v15    # "result":I
    .restart local v16    # "result":I
    goto/16 :goto_2

    .line 205
    .end local v14    # "payloadLen":I
    .end local v16    # "result":I
    .end local v20    # "temp":[B
    .restart local v15    # "result":I
    :cond_4
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 206
    .restart local v20    # "temp":[B
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .restart local v14    # "payloadLen":I
    goto :goto_4

    .line 212
    :cond_5
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/hfufo/rxdrone/MainApplication;->isAbnormalExitThread()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 213
    const/16 v25, -0x1

    move/from16 v16, v15

    .end local v15    # "result":I
    .restart local v16    # "result":I
    goto/16 :goto_2

    .line 215
    .end local v16    # "result":I
    .restart local v15    # "result":I
    :cond_6
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-static {v0, v1, v13, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    add-int v22, v22, v14

    .line 217
    goto :goto_3

    .line 230
    .end local v11    # "len":I
    .end local v14    # "payloadLen":I
    .end local v20    # "temp":[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Lcom/jieli/lib/dv/control/player/MovWrapper;->write(I[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    const/4 v15, 0x1

    .end local v4    # "dateFlag":I
    .end local v5    # "dateFlagBuf":[B
    .end local v7    # "frameSize":I
    .end local v8    # "frameSizeBuf":[B
    .end local v9    # "headBuf":[B
    .end local v10    # "headSize":I
    .end local v13    # "payload":[B
    .end local v17    # "seq":I
    .end local v18    # "seqBuf":[B
    .end local v22    # "totalSize":I
    .end local v23    # "type":I
    .end local v24    # "typeBuf":[B
    :cond_8
    move/from16 v16, v15

    .end local v15    # "result":I
    .restart local v16    # "result":I
    move/from16 v25, v15

    .line 238
    goto/16 :goto_2

    .line 233
    .end local v16    # "result":I
    .restart local v15    # "result":I
    :catch_0
    move-exception v6

    .line 234
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    const/16 v25, -0x1

    move/from16 v16, v15

    .end local v15    # "result":I
    .restart local v16    # "result":I
    goto/16 :goto_2
.end method

.method private publishError(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v1, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/task/CrashVideoTask;->listener:Lcom/task/VideoServer$CrashVideoListener;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/task/CrashVideoTask;->listener:Lcom/task/VideoServer$CrashVideoListener;

    invoke-interface {v1, p1, p2}, Lcom/task/VideoServer$CrashVideoListener;->onError(ILjava/lang/String;)V

    .line 272
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/task/CrashVideoTask;->savePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 276
    :cond_1
    return-void
.end method


# virtual methods
.method public initMovWrapper(Ljava/lang/String;III)Z
    .locals 6
    .param p1, "savePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I

    .prologue
    .line 39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file success, saveFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/task/CrashVideoTask;->savePath:Ljava/lang/String;

    .line 51
    iget-object v3, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v3, p4}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setFrameRate(I)Z

    .line 52
    iget-object v3, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v3, p2, p3}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setResolution(II)Z

    .line 53
    iget-object v3, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    iget-object v4, p0, Lcom/task/CrashVideoTask;->onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    invoke-virtual {v3, v4}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnRecordListener;)V

    .line 54
    iget-object v3, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v3, p1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->create(Ljava/lang/String;)Z

    move-result v2

    .line 55
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create file result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , savePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return v2

    .line 45
    .end local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0xee2

    .line 88
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 89
    iget-object v9, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    if-nez v9, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getPort()I

    move-result v4

    .line 92
    .local v4, "port":I
    const-string v6, "FMedia"

    .line 93
    .local v6, "saveDir":Ljava/lang/String;
    const/4 v0, 0x1

    .line 94
    .local v0, "cameraType":I
    const/16 v9, 0x2711

    if-ne v4, v9, :cond_2

    .line 95
    const-string v6, "RMedia"

    .line 96
    const/4 v0, 0x2

    .line 98
    :cond_2
    invoke-direct {p0, v0}, Lcom/task/CrashVideoTask;->getCameraLevel(I)I

    move-result v9

    invoke-static {v9}, Lcom/fh/hdutil/AppUtils;->getRtsResolution(I)[I

    move-result-object v8

    .line 99
    .local v8, "videoParams":[I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hfufo/rxdrone/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Record"

    .line 99
    invoke-static {v10, v11, v6, v12}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 101
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCrashVideoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "savePath":Ljava/lang/String;
    iget-object v9, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveDir >> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v9, 0x0

    aget v9, v8, v9

    const/4 v10, 0x1

    aget v10, v8, v10

    invoke-direct {p0, v0}, Lcom/task/CrashVideoTask;->getVideoRate(I)I

    move-result v11

    invoke-virtual {p0, v7, v9, v10, v11}, Lcom/task/CrashVideoTask;->initMovWrapper(Ljava/lang/String;III)Z

    move-result v3

    .line 104
    .local v3, "isMovOk":Z
    if-nez v3, :cond_3

    .line 105
    const/16 v9, 0xee1

    const-string v10, "init mov wrapper failed."

    invoke-direct {p0, v9, v10}, Lcom/task/CrashVideoTask;->publishError(ILjava/lang/String;)V

    .line 107
    :cond_3
    iget-object v9, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v3, :cond_4

    .line 110
    :try_start_1
    iget-object v9, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 111
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/task/CrashVideoTask;->parsePacket(Ljava/io/InputStream;)I

    move-result v5

    .line 112
    .local v5, "ret":I
    if-gtz v5, :cond_3

    .line 113
    if-gez v5, :cond_4

    .line 114
    const/16 v9, 0xee4

    const-string v10, "device offline."

    invoke-direct {p0, v9, v10}, Lcom/task/CrashVideoTask;->publishError(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "ret":I
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    if-eqz v9, :cond_5

    .line 130
    :try_start_2
    iget-object v9, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-eqz v9, :cond_0

    .line 136
    iget-object v9, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v9}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    move-result v9

    if-nez v9, :cond_7

    .line 137
    iget-object v9, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    const-string v10, "movWrapper close failed."

    invoke-static {v9, v10}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v9, "close mov wrapper failed."

    invoke-direct {p0, v13, v9}, Lcom/task/CrashVideoTask;->publishError(ILjava/lang/String;)V

    .line 142
    :goto_3
    iget-object v9, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v9, v14}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnRecordListener;)V

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    const/16 v9, 0xee3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/task/CrashVideoTask;->publishError(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 124
    .end local v0    # "cameraType":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "isMovOk":Z
    .end local v4    # "port":I
    .end local v6    # "saveDir":Ljava/lang/String;
    .end local v7    # "savePath":Ljava/lang/String;
    .end local v8    # "videoParams":[I
    :catch_1
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const/16 v9, 0xee3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/task/CrashVideoTask;->publishError(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    iget-object v9, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    if-eqz v9, :cond_6

    .line 130
    :try_start_5
    iget-object v9, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-eqz v9, :cond_0

    .line 136
    iget-object v9, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v9}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    move-result v9

    if-nez v9, :cond_8

    .line 137
    iget-object v9, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    const-string v10, "movWrapper close failed."

    invoke-static {v9, v10}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v9, "close mov wrapper failed."

    invoke-direct {p0, v13, v9}, Lcom/task/CrashVideoTask;->publishError(ILjava/lang/String;)V

    .line 142
    :goto_5
    iget-object v9, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v9, v14}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnRecordListener;)V

    goto/16 :goto_0

    .line 131
    .restart local v0    # "cameraType":I
    .restart local v3    # "isMovOk":Z
    .restart local v4    # "port":I
    .restart local v6    # "saveDir":Ljava/lang/String;
    .restart local v7    # "savePath":Ljava/lang/String;
    .restart local v8    # "videoParams":[I
    :catch_2
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    iget-object v9, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movWrapper close ....savePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/task/CrashVideoTask;->savePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 131
    .end local v0    # "cameraType":I
    .end local v3    # "isMovOk":Z
    .end local v4    # "port":I
    .end local v6    # "saveDir":Ljava/lang/String;
    .end local v7    # "savePath":Ljava/lang/String;
    .end local v8    # "videoParams":[I
    .local v1, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    iget-object v9, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movWrapper close ....savePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/task/CrashVideoTask;->savePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 128
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    if-eqz v10, :cond_9

    .line 130
    :try_start_6
    iget-object v10, p0, Lcom/task/CrashVideoTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 135
    :cond_9
    :goto_6
    iget-object v10, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-eqz v10, :cond_a

    .line 136
    iget-object v10, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v10}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    move-result v10

    if-nez v10, :cond_b

    .line 137
    iget-object v10, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    const-string v11, "movWrapper close failed."

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v10, "close mov wrapper failed."

    invoke-direct {p0, v13, v10}, Lcom/task/CrashVideoTask;->publishError(ILjava/lang/String;)V

    .line 142
    :goto_7
    iget-object v10, p0, Lcom/task/CrashVideoTask;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v10, v14}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnRecordListener;)V

    :cond_a
    throw v9

    .line 131
    :catch_4
    move-exception v1

    .line 132
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :cond_b
    iget-object v10, p0, Lcom/task/CrashVideoTask;->tag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "movWrapper close ....savePath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/task/CrashVideoTask;->savePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method
