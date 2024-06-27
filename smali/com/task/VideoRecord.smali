.class public Lcom/task/VideoRecord;
.super Ljava/lang/Object;
.source "VideoRecord.java"


# static fields
.field private static final DEFAULT_VIDEO_SIZE:J = 0x3c00000L

.field private static final MIN_STORAGE_LIMIT:J = 0xc800000L


# instance fields
.field private isMv:Z

.field private mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

.field private mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

.field private final onAviWrapperListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

.field private final onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

.field private onStreamRecordListener:Lcom/task/OnRecordStateListener;

.field private outputPath:Ljava/lang/String;

.field private selected:Z

.field private final tag:Ljava/lang/String;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 30
    iput-object v1, p0, Lcom/task/VideoRecord;->onStreamRecordListener:Lcom/task/OnRecordStateListener;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/task/VideoRecord;->isMv:Z

    .line 255
    new-instance v0, Lcom/task/VideoRecord$5;

    invoke-direct {v0, p0}, Lcom/task/VideoRecord$5;-><init>(Lcom/task/VideoRecord;)V

    iput-object v0, p0, Lcom/task/VideoRecord;->onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    .line 281
    new-instance v0, Lcom/task/VideoRecord$6;

    invoke-direct {v0, p0}, Lcom/task/VideoRecord$6;-><init>(Lcom/task/VideoRecord;)V

    iput-object v0, p0, Lcom/task/VideoRecord;->onAviWrapperListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/task/VideoRecord;->selected:Z

    .line 309
    const/16 v0, 0x500

    iput v0, p0, Lcom/task/VideoRecord;->videoWidth:I

    .line 310
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/task/VideoRecord;->videoHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/task/VideoRecord;)Lcom/task/OnRecordStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoRecord;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/task/VideoRecord;->onStreamRecordListener:Lcom/task/OnRecordStateListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/task/VideoRecord;Lcom/task/OnRecordStateListener;)Lcom/task/OnRecordStateListener;
    .locals 0
    .param p0, "x0"    # Lcom/task/VideoRecord;
    .param p1, "x1"    # Lcom/task/OnRecordStateListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/task/VideoRecord;->onStreamRecordListener:Lcom/task/OnRecordStateListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/task/VideoRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoRecord;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/task/VideoRecord;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/task/VideoRecord;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/task/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/task/VideoRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/task/VideoRecord;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private dispatchErrorMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/task/VideoRecord$1;

    invoke-direct {v0, p0, p1}, Lcom/task/VideoRecord$1;-><init>(Lcom/task/VideoRecord;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method private startAviWrapper()Z
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 135
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getAvailableExternalMemorySize()J

    move-result-wide v6

    .line 136
    .local v6, "storageSize":J
    const-wide/32 v12, 0xc800000

    cmp-long v11, v6, v12

    if-gez v11, :cond_0

    .line 137
    iget-object v10, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v11, "Not enough storage space"

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v10, "Not enough storage space"

    invoke-direct {p0, v10}, Lcom/task/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    .line 196
    :goto_0
    return v9

    .line 141
    :cond_0
    iget-object v11, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-eqz v11, :cond_1

    .line 142
    iget-object v11, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v11}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    .line 143
    iput-object v14, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 145
    :cond_1
    iget-object v11, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-eqz v11, :cond_3

    .line 146
    iget-object v11, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v11}, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 147
    iget-object v11, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v11}, Lcom/jieli/lib/dv/control/player/AviWrapper;->stopRecording()Z

    .line 149
    :cond_2
    iput-object v14, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    .line 155
    :cond_3
    iget-boolean v11, p0, Lcom/task/VideoRecord;->selected:Z

    if-eqz v11, :cond_4

    .line 156
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hfufo/rxdrone/MainApplication;->getPath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    .line 160
    :goto_1
    iget-object v11, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 161
    iget-object v10, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v11, "Output path is incorrect"

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v10, "Output path is incorrect"

    invoke-direct {p0, v10}, Lcom/task/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_4
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    goto :goto_1

    .line 165
    :cond_5
    iget-object v11, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Output Avi_path is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v11, Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-direct {v11}, Lcom/jieli/lib/dv/control/player/AviWrapper;-><init>()V

    iput-object v11, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    .line 167
    iget-object v11, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    iget-object v12, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/jieli/lib/dv/control/player/AviWrapper;->create(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 168
    const-string v10, "Create failed"

    invoke-direct {p0, v10}, Lcom/task/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getRecordAviName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "outp":Ljava/lang/String;
    iget-object v11, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    const-wide/16 v12, 0x1388

    invoke-virtual {v11, v12, v13}, Lcom/jieli/lib/dv/control/player/AviWrapper;->setVideoDuration(J)Z

    .line 174
    iget-object v11, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    iget-object v12, p0, Lcom/task/VideoRecord;->onAviWrapperListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    invoke-virtual {v11, v12}, Lcom/jieli/lib/dv/control/player/AviWrapper;->setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;)V

    .line 175
    iget-object v11, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    const/16 v12, 0x1f40

    const/16 v13, 0x10

    invoke-virtual {v11, v12, v10, v13}, Lcom/jieli/lib/dv/control/player/AviWrapper;->setAudioTrack(III)Z

    .line 176
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    .line 180
    .local v1, "deviceSettingInfo":Lcom/hfufo/bean/DeviceSettingInfo;
    const/4 v11, 0x2

    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v12

    if-ne v11, v12, :cond_7

    .line 181
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearRate()I

    move-result v2

    .line 185
    .local v2, "frameRate":I
    :goto_2
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getStreamResolutionLevel()I

    move-result v0

    .line 186
    .local v0, "currentLevel":I
    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->getRtsResolution(I)[I

    move-result-object v4

    .line 187
    .local v4, "rtsResolution":[I
    aget v8, v4, v9

    .line 188
    .local v8, "videoWidth":I
    aget v5, v4, v10

    .line 189
    .local v5, "videoHeight":I
    if-lez v2, :cond_8

    if-lez v8, :cond_8

    if-lez v5, :cond_8

    .line 190
    iget-object v9, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v9, v2, v8, v5}, Lcom/jieli/lib/dv/control/player/AviWrapper;->configureVideo(III)Z

    .line 195
    iget-object v9, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v9}, Lcom/jieli/lib/dv/control/player/AviWrapper;->startRecording()Z

    move v9, v10

    .line 196
    goto/16 :goto_0

    .line 183
    .end local v0    # "currentLevel":I
    .end local v2    # "frameRate":I
    .end local v4    # "rtsResolution":[I
    .end local v5    # "videoHeight":I
    .end local v8    # "videoWidth":I
    :cond_7
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v2

    .restart local v2    # "frameRate":I
    goto :goto_2

    .line 192
    .restart local v0    # "currentLevel":I
    .restart local v4    # "rtsResolution":[I
    .restart local v5    # "videoHeight":I
    .restart local v8    # "videoWidth":I
    :cond_8
    const-string v10, "params is incorrect"

    invoke-direct {p0, v10}, Lcom/task/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startMovWrapper()Z
    .locals 14

    .prologue
    const-wide/32 v12, 0x3c00000

    const/4 v8, 0x0

    const/16 v10, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getAvailableExternalMemorySize()J

    move-result-wide v2

    .line 70
    .local v2, "storageSize":J
    const-wide/32 v6, 0xc800000

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 71
    iget-object v5, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v6, "Not enough storage space"

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v5, "Not enough storage space"

    invoke-direct {p0, v5}, Lcom/task/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    .line 131
    :goto_0
    return v4

    .line 75
    :cond_0
    iget-object v6, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-eqz v6, :cond_2

    .line 76
    iget-object v6, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v6}, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    iget-object v6, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v6}, Lcom/jieli/lib/dv/control/player/AviWrapper;->stopRecording()Z

    .line 79
    :cond_1
    iput-object v8, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    .line 81
    :cond_2
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-eqz v6, :cond_3

    .line 82
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v6}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    .line 83
    iput-object v8, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 86
    :cond_3
    div-long v6, v2, v12

    const-wide/16 v8, 0x23

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 87
    const/16 v1, 0x1e

    .line 92
    .local v1, "duration":I
    :goto_1
    new-instance v6, Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-direct {v6}, Lcom/jieli/lib/dv/control/player/MovWrapper;-><init>()V

    iput-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 93
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    iget v7, p0, Lcom/task/VideoRecord;->videoWidth:I

    iget v8, p0, Lcom/task/VideoRecord;->videoHeight:I

    invoke-virtual {v6, v7, v8}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setResolution(II)Z

    .line 94
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setVideoDuration(I)Z

    .line 96
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    iget-object v7, p0, Lcom/task/VideoRecord;->onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    invoke-virtual {v6, v7}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnRecordListener;)V

    .line 97
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    .line 99
    .local v0, "deviceSettingInfo":Lcom/hfufo/bean/DeviceSettingInfo;
    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 100
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearRate()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setFrameRate(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 101
    iget-object v6, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v7, "Set frame rate failed"

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_4
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearSampleRate()I

    move-result v7

    invoke-virtual {v6, v7, v5, v10}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setAudioTrack(III)Z

    move-result v6

    if-nez v6, :cond_5

    .line 103
    iget-object v6, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v7, "Set audio track failed"

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getRecordMp4Name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    .line 116
    iget-object v6, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 117
    iget-object v5, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v6, "Output path is incorrect"

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v5, "Output path is incorrect"

    invoke-direct {p0, v5}, Lcom/task/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    .end local v0    # "deviceSettingInfo":Lcom/hfufo/bean/DeviceSettingInfo;
    .end local v1    # "duration":I
    :cond_6
    div-long v6, v2, v12

    long-to-int v6, v6

    add-int/lit8 v1, v6, -0x5

    .restart local v1    # "duration":I
    goto/16 :goto_1

    .line 105
    .restart local v0    # "deviceSettingInfo":Lcom/hfufo/bean/DeviceSettingInfo;
    :cond_7
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setFrameRate(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 106
    iget-object v6, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v7, "Set frame rate failed"

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_8
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontSampleRate()I

    move-result v7

    invoke-virtual {v6, v7, v5, v10}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setAudioTrack(III)Z

    move-result v6

    if-nez v6, :cond_5

    .line 109
    iget-object v6, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v7, "Set audio track failed"

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 121
    :cond_9
    iget-object v6, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "output Mov_path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-nez v6, :cond_a

    .line 123
    iget-object v5, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v6, "mMovWrapper is null "

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_a
    iget-object v6, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    iget-object v7, p0, Lcom/task/VideoRecord;->outputPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jieli/lib/dv/control/player/MovWrapper;->create(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 127
    iget-object v5, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v6, "Create MOV wrapper failed"

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "Create MOV wrapper failed"

    invoke-direct {p0, v5}, Lcom/task/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    .line 131
    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v1, "Close ========="

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v1, "mAviWrapper or mMovWrapper not init."

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->stopRecording()Z

    .line 226
    :cond_1
    new-instance v0, Lcom/task/VideoRecord$3;

    invoke-direct {v0, p0}, Lcom/task/VideoRecord$3;-><init>(Lcom/task/VideoRecord;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->destroy()Z

    .line 235
    iput-object v2, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    new-instance v0, Lcom/task/VideoRecord$4;

    invoke-direct {v0, p0}, Lcom/task/VideoRecord$4;-><init>(Lcom/task/VideoRecord;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    .line 251
    :goto_1
    iput-object v2, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v1, "Mov close failed"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAddMusic()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/task/VideoRecord;->selected:Z

    return v0
.end method

.method public prepare(Lcom/task/OnRecordStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/task/OnRecordStateListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/task/VideoRecord;->onStreamRecordListener:Lcom/task/OnRecordStateListener;

    .line 47
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceDesc;->getVideoType()I

    move-result v1

    if-nez v1, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/task/VideoRecord;->startAviWrapper()Z

    move-result v0

    .line 53
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Lcom/task/VideoRecord$2;

    invoke-direct {v1, p0}, Lcom/task/VideoRecord$2;-><init>(Lcom/task/VideoRecord;)V

    invoke-static {v1}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    .line 62
    :cond_0
    return-void

    .line 50
    .end local v0    # "ret":Z
    :cond_1
    invoke-direct {p0}, Lcom/task/VideoRecord;->startMovWrapper()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public setAddMusic(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/task/VideoRecord;->selected:Z

    .line 307
    return-void
.end method

.method public setResolution(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/task/VideoRecord;->videoWidth:I

    .line 313
    iput p2, p0, Lcom/task/VideoRecord;->videoHeight:I

    .line 314
    return-void
.end method

.method public write(I[B)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 202
    iget-object v1, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-nez v1, :cond_1

    .line 203
    const/4 v0, 0x0

    .line 210
    .local v0, "ret":Z
    :goto_0
    if-nez v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v2, "write data failed."

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/task/VideoRecord;->close()V

    .line 215
    :cond_0
    return v0

    .line 204
    .end local v0    # "ret":Z
    :cond_1
    iget-object v1, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/task/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v1, p1, p2}, Lcom/jieli/lib/dv/control/player/AviWrapper;->write(I[B)Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 207
    .end local v0    # "ret":Z
    :cond_2
    iget-object v1, p0, Lcom/task/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v1, p1, p2}, Lcom/jieli/lib/dv/control/player/MovWrapper;->write(I[B)Z

    move-result v0

    .line 208
    .restart local v0    # "ret":Z
    iget-object v1, p0, Lcom/task/VideoRecord;->tag:Ljava/lang/String;

    const-string v2, "write data failed.-1-"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
