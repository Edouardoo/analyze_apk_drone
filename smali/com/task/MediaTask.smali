.class public Lcom/task/MediaTask;
.super Landroid/os/HandlerThread;
.source "MediaTask.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_ADD_TASK:I = 0x52

.field private static final MSG_START_TASK:I = 0x50

.field private static final MSG_STOP_TASK:I = 0x51

.field private static final TAG:Ljava/lang/String; = "MediaTask"


# instance fields
.field private isCancelTask:Z

.field private mCall:Lokhttp3/Call;

.field private mContext:Landroid/content/Context;

.field private mUIHandler:Landroid/os/Handler;

.field private mWorkHandler:Landroid/os/Handler;

.field private savePath:Ljava/lang/String;

.field private scanFilesHelper:Lcom/fh/hdutil/ScanFilesHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const/16 v1, -0x13

    invoke-direct {p0, p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 61
    const-string v1, ""

    iput-object v1, p0, Lcom/task/MediaTask;->savePath:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/task/MediaTask;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 66
    .local v0, "sd":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getSettingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/task/MediaTask;->savePath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/task/MediaTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/task/MediaTask;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/task/MediaTask;Lokhttp3/Call;)Lokhttp3/Call;
    .locals 0
    .param p0, "x0"    # Lcom/task/MediaTask;
    .param p1, "x1"    # Lokhttp3/Call;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/task/MediaTask;->mCall:Lokhttp3/Call;

    return-object p1
.end method

.method static synthetic access$200(Lcom/task/MediaTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/task/MediaTask;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/task/MediaTask;->isCancelTask:Z

    return v0
.end method

.method static synthetic access$202(Lcom/task/MediaTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/task/MediaTask;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/task/MediaTask;->isCancelTask:Z

    return p1
.end method

.method static synthetic access$300(Lcom/task/MediaTask;)Lcom/fh/hdutil/ScanFilesHelper;
    .locals 1
    .param p0, "x0"    # Lcom/task/MediaTask;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/task/MediaTask;->scanFilesHelper:Lcom/fh/hdutil/ScanFilesHelper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/task/MediaTask;Lcom/fh/hdutil/ScanFilesHelper;)Lcom/fh/hdutil/ScanFilesHelper;
    .locals 0
    .param p0, "x0"    # Lcom/task/MediaTask;
    .param p1, "x1"    # Lcom/fh/hdutil/ScanFilesHelper;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/task/MediaTask;->scanFilesHelper:Lcom/fh/hdutil/ScanFilesHelper;

    return-object p1
.end method

.method static synthetic access$400(Lcom/task/MediaTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/task/MediaTask;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/task/MediaTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handlerTask(Lcom/hfufo/bean/MediaTaskInfo;)V
    .locals 4
    .param p1, "taskInfo"    # Lcom/hfufo/bean/MediaTaskInfo;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v2, "gggg"

    const-string v3, "handlerTask: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p1}, Lcom/hfufo/bean/MediaTaskInfo;->getInfo()Lcom/hfufo/bean/FileInfo;

    move-result-object v0

    .line 125
    .local v0, "fileInfo":Lcom/hfufo/bean/FileInfo;
    invoke-virtual {p1}, Lcom/hfufo/bean/MediaTaskInfo;->getOp()I

    move-result v1

    .line 126
    .local v1, "op":I
    if-eqz v0, :cond_0

    .line 127
    packed-switch v1, :pswitch_data_0

    .line 137
    .end local v0    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v1    # "op":I
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v0    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .restart local v1    # "op":I
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/task/MediaTask;->tryToDownload(Lcom/hfufo/bean/FileInfo;)V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/task/MediaTask;->tryToDelete(Lcom/hfufo/bean/FileInfo;)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private tryToDelete(Lcom/hfufo/bean/FileInfo;)V
    .locals 10
    .param p1, "fileInfo"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x54

    .line 368
    if-nez p1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getSource()I

    move-result v5

    .line 370
    .local v5, "source":I
    if-ne v5, v9, :cond_5

    .line 371
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 375
    iget-object v6, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 376
    iget-object v6, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 377
    .local v2, "message":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 378
    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 379
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    iget-object v6, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "saveUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/task/MediaTask;->scanFilesHelper:Lcom/fh/hdutil/ScanFilesHelper;

    if-nez v6, :cond_2

    .line 383
    new-instance v6, Lcom/fh/hdutil/ScanFilesHelper;

    iget-object v7, p0, Lcom/task/MediaTask;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/fh/hdutil/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/task/MediaTask;->scanFilesHelper:Lcom/fh/hdutil/ScanFilesHelper;

    .line 384
    :cond_2
    iget-object v6, p0, Lcom/task/MediaTask;->scanFilesHelper:Lcom/fh/hdutil/ScanFilesHelper;

    invoke-virtual {v6, v4}, Lcom/fh/hdutil/ScanFilesHelper;->updateToDeleteFile(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v2    # "message":Landroid/os/Message;
    .end local v4    # "saveUrl":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 388
    iget-object v6, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 389
    .restart local v2    # "message":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 390
    iput v8, v2, Landroid/os/Message;->arg1:I

    .line 391
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    iget-object v6, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 396
    .end local v2    # "message":Landroid/os/Message;
    :cond_4
    iget-object v6, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 397
    iget-object v6, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 398
    .restart local v2    # "message":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 399
    iput v8, v2, Landroid/os/Message;->arg1:I

    .line 400
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    iget-object v6, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 405
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "message":Landroid/os/Message;
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v6

    new-instance v7, Lcom/task/MediaTask$3;

    invoke-direct {v7, p0, p1}, Lcom/task/MediaTask$3;-><init>(Lcom/task/MediaTask;Lcom/hfufo/bean/FileInfo;)V

    invoke-virtual {v6, v3, v7}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToDeleteFile(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto/16 :goto_0
.end method

.method private tryToDownload(Lcom/hfufo/bean/FileInfo;)V
    .locals 18
    .param p1, "fileInfo"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    .line 140
    if-nez p1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/hfufo/bean/FileInfo;->getSource()I

    move-result v13

    .line 142
    .local v13, "source":I
    const/4 v2, 0x1

    if-eq v13, v2, :cond_0

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/hfufo/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "filename":Ljava/lang/String;
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->getConnectedIP()Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, "ip":Ljava/lang/String;
    const/16 v2, 0x1f90

    invoke-virtual/range {p1 .. p1}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v2, v3}, Lcom/fh/hdutil/AppUtils;->formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, "webUrl":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/fh/hdutil/AppUtils;->getDownloadFilename(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;

    move-result-object v12

    .line 148
    .local v12, "saveFilename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/hfufo/rxdrone/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v15

    .line 149
    invoke-static/range {p1 .. p1}, Lcom/fh/hdutil/AppUtils;->checkCameraDir(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "Download"

    .line 148
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v3, v15, v0, v1}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "test"

    .line 149
    invoke-static {v3}, Lcom/fh/hdutil/AppUtils;->getLocalPhotoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "saveUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/hfufo/bean/FileInfo;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 153
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/hfufo/bean/FileInfo;->getSize()J

    move-result-wide v16

    cmp-long v2, v2, v16

    if-ltz v2, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 158
    .local v10, "message":Landroid/os/Message;
    const/16 v2, 0x53

    iput v2, v10, Landroid/os/Message;->what:I

    .line 159
    const/4 v2, 0x2

    iput v2, v10, Landroid/os/Message;->arg1:I

    .line 160
    iput-object v4, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 164
    .end local v10    # "message":Landroid/os/Message;
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    invoke-direct/range {p0 .. p1}, Lcom/task/MediaTask;->tryToDownload(Lcom/hfufo/bean/FileInfo;)V

    goto/16 :goto_0

    .line 167
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 169
    .restart local v10    # "message":Landroid/os/Message;
    const/16 v2, 0x53

    iput v2, v10, Landroid/os/Message;->what:I

    .line 170
    const/4 v2, 0x0

    iput v2, v10, Landroid/os/Message;->arg1:I

    .line 171
    iput-object v5, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 177
    .end local v10    # "message":Landroid/os/Message;
    :cond_4
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 178
    invoke-virtual {v2, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v11

    .line 179
    .local v11, "request":Lokhttp3/Request;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    const-wide/16 v16, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 180
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v11}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/task/MediaTask;->mCall:Lokhttp3/Call;

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/hfufo/bean/FileInfo;->getSize()J

    move-result-wide v6

    .line 183
    .local v6, "total":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/task/MediaTask;->mCall:Lokhttp3/Call;

    new-instance v2, Lcom/task/MediaTask$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/task/MediaTask$1;-><init>(Lcom/task/MediaTask;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v15, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto/16 :goto_0

    .line 296
    .end local v6    # "total":J
    .end local v8    # "file":Ljava/io/File;
    .end local v11    # "request":Lokhttp3/Request;
    :cond_5
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 298
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/hfufo/bean/FileInfo;->getSize()J

    move-result-wide v16

    cmp-long v2, v2, v16

    if-ltz v2, :cond_6

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 301
    .restart local v10    # "message":Landroid/os/Message;
    const/16 v2, 0x53

    iput v2, v10, Landroid/os/Message;->what:I

    .line 302
    const/4 v2, 0x2

    iput v2, v10, Landroid/os/Message;->arg1:I

    .line 303
    iput-object v4, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 307
    .end local v10    # "message":Landroid/os/Message;
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 308
    invoke-direct/range {p0 .. p1}, Lcom/task/MediaTask;->tryToDownload(Lcom/hfufo/bean/FileInfo;)V

    goto/16 :goto_0

    .line 310
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 312
    .restart local v10    # "message":Landroid/os/Message;
    const/16 v2, 0x53

    iput v2, v10, Landroid/os/Message;->what:I

    .line 313
    const/4 v2, 0x0

    iput v2, v10, Landroid/os/Message;->arg1:I

    .line 314
    iput-object v5, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 320
    .end local v10    # "message":Landroid/os/Message;
    :cond_8
    invoke-static {}, Lcom/fh/util/ThumbLoader;->getInstance()Lcom/fh/util/ThumbLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/task/MediaTask;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/task/MediaTask$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4, v5}, Lcom/task/MediaTask$2;-><init>(Lcom/task/MediaTask;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v14, v4, v15}, Lcom/fh/util/ThumbLoader;->downloadWebImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fh/util/ThumbLoader$OnDownloadListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 86
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 88
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 90
    const-string v2, "media_task"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/MediaTaskInfo;

    .line 91
    .local v1, "taskInfo":Lcom/hfufo/bean/MediaTaskInfo;
    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0, v1}, Lcom/task/MediaTask;->handlerTask(Lcom/hfufo/bean/MediaTaskInfo;)V

    goto :goto_0

    .line 101
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "taskInfo":Lcom/hfufo/bean/MediaTaskInfo;
    :pswitch_1
    iget-object v2, p0, Lcom/task/MediaTask;->mCall:Lokhttp3/Call;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/task/MediaTask;->mCall:Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->isExecuted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/task/MediaTask;->mCall:Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 104
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/task/MediaTask;->isCancelTask:Z

    .line 105
    iget-object v2, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/task/MediaTask;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    .line 75
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 76
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    iput-object v1, p0, Lcom/task/MediaTask;->mContext:Landroid/content/Context;

    .line 462
    iget-object v0, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 464
    iput-object v1, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 468
    iput-object v1, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    .line 470
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 471
    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method public tryToStartTask(Lcom/hfufo/bean/MediaTaskInfo;)V
    .locals 4
    .param p1, "taskInfo"    # Lcom/hfufo/bean/MediaTaskInfo;

    .prologue
    .line 441
    iget-object v2, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 442
    const-string v2, "gggg"

    const-string v3, "tryToStartTask: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 444
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "media_task"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 445
    iget-object v2, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 446
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x50

    iput v2, v1, Landroid/os/Message;->what:I

    .line 447
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 448
    iget-object v2, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v2, "gggg"

    const-string v3, "mWorkHandler == null: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tryToStopTask()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    :cond_0
    return-void
.end method
