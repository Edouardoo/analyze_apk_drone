.class public Lcom/videooperate/utils/VideoManager;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/utils/VideoManager$Callback;
    }
.end annotation


# static fields
.field static mInstance:Lcom/videooperate/utils/VideoManager;


# instance fields
.field public final PLAY_ERR:I

.field public final PLAY_PROGRESS:I

.field public final PLAY_SUCCESS:I

.field final SD_MUSIC_PATH:Ljava/lang/String;

.field activity:Landroid/content/Context;

.field callback:Lcom/videooperate/utils/VideoManager$Callback;

.field composeVideoUrl:Ljava/lang/String;

.field inputVideoUrl:Ljava/lang/String;

.field private mHandler:Lcom/videooperate/utils/SafeHandler;

.field mp3Path:Ljava/lang/String;

.field private openDialog:Z

.field outputVideoUrl:Ljava/lang/String;

.field private progressDialog:Landroid/support/v7/app/AlertDialog;

.field private recordDir:Ljava/lang/String;

.field private save1080P:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)V
    .locals 3
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/videooperate/utils/VideoManager$Callback;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/drone/music/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/videooperate/utils/VideoManager;->SD_MUSIC_PATH:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/videooperate/utils/VideoManager;->inputVideoUrl:Ljava/lang/String;

    .line 41
    iput v2, p0, Lcom/videooperate/utils/VideoManager;->PLAY_PROGRESS:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/videooperate/utils/VideoManager;->PLAY_SUCCESS:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/videooperate/utils/VideoManager;->PLAY_ERR:I

    .line 45
    iput-boolean v2, p0, Lcom/videooperate/utils/VideoManager;->openDialog:Z

    .line 46
    new-instance v0, Lcom/videooperate/utils/SafeHandler;

    invoke-direct {v0, p0}, Lcom/videooperate/utils/SafeHandler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/videooperate/utils/VideoManager;->mHandler:Lcom/videooperate/utils/SafeHandler;

    .line 266
    iput-boolean v2, p0, Lcom/videooperate/utils/VideoManager;->save1080P:Z

    .line 51
    iput-object p1, p0, Lcom/videooperate/utils/VideoManager;->activity:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/videooperate/utils/VideoManager;->callback:Lcom/videooperate/utils/VideoManager$Callback;

    .line 53
    invoke-direct {p0}, Lcom/videooperate/utils/VideoManager;->initFile()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/videooperate/utils/VideoManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/utils/VideoManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/videooperate/utils/VideoManager;->addBackgroundMusic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/videooperate/utils/VideoManager;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/utils/VideoManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/videooperate/utils/VideoManager;->sendMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/videooperate/utils/VideoManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/videooperate/utils/VideoManager;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/videooperate/utils/VideoManager;->openDialog:Z

    return v0
.end method

.method private addBackgroundMusic(Ljava/lang/String;)V
    .locals 7
    .param p1, "inputVideoUrl"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/videooperate/utils/VideoManager;->composeVideoUrl:Ljava/lang/String;

    .line 134
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor;->getInstance()Lio/microshow/rxffmpeg/EpEditor;

    move-result-object v0

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->mp3Path:Ljava/lang/String;

    iget-object v3, p0, Lcom/videooperate/utils/VideoManager;->outputVideoUrl:Ljava/lang/String;

    const v4, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x40000000    # 2.0f

    new-instance v6, Lcom/videooperate/utils/VideoManager$2;

    invoke-direct {v6, p0}, Lcom/videooperate/utils/VideoManager$2;-><init>(Lcom/videooperate/utils/VideoManager;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lio/microshow/rxffmpeg/EpEditor;->addBackgroundMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLio/microshow/rxffmpeg/OnEditorListener;)V

    .line 152
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)Lcom/videooperate/utils/VideoManager;
    .locals 2
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/videooperate/utils/VideoManager$Callback;

    .prologue
    .line 69
    const-class v1, Lcom/videooperate/utils/VideoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/videooperate/utils/VideoManager;->mInstance:Lcom/videooperate/utils/VideoManager;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/videooperate/utils/VideoManager;

    invoke-direct {v0, p0, p1}, Lcom/videooperate/utils/VideoManager;-><init>(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)V

    sput-object v0, Lcom/videooperate/utils/VideoManager;->mInstance:Lcom/videooperate/utils/VideoManager;

    .line 74
    :goto_0
    sget-object v0, Lcom/videooperate/utils/VideoManager;->mInstance:Lcom/videooperate/utils/VideoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :cond_0
    :try_start_1
    sget-object v0, Lcom/videooperate/utils/VideoManager;->mInstance:Lcom/videooperate/utils/VideoManager;

    invoke-direct {v0, p1}, Lcom/videooperate/utils/VideoManager;->setCallback(Lcom/videooperate/utils/VideoManager$Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initFile()V
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 61
    .local v1, "sd":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getSettingPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/videooperate/utils/VideoManager;->recordDir:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->recordDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_0
    return-void
.end method

.method private sendMessage(ILjava/lang/String;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/videooperate/utils/VideoManager;->mHandler:Lcom/videooperate/utils/SafeHandler;

    invoke-virtual {v1}, Lcom/videooperate/utils/SafeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/videooperate/utils/VideoManager;->mHandler:Lcom/videooperate/utils/SafeHandler;

    invoke-virtual {v1, v0}, Lcom/videooperate/utils/SafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
.end method

.method private setCallback(Lcom/videooperate/utils/VideoManager$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/videooperate/utils/VideoManager$Callback;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/videooperate/utils/VideoManager;->callback:Lcom/videooperate/utils/VideoManager$Callback;

    .line 58
    return-void
.end method


# virtual methods
.method public checkVideoType(Lcom/videooperate/bean/Song;Ljava/lang/String;)Z
    .locals 6
    .param p1, "song"    # Lcom/videooperate/bean/Song;
    .param p2, "oldVideoUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 155
    if-nez p2, :cond_0

    .line 187
    :goto_0
    return v1

    .line 160
    :cond_0
    const-string v2, ".avi"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".AVI"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    :cond_1
    const-string v2, "rxffmpeg"

    const-string v3, "PLAY_PROGRESS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/videooperate/utils/VideoManager;->sendMessage(ILjava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/videooperate/utils/VideoManager;->recordDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/REC_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "currentTimeMillis":Ljava/lang/String;
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor;->getInstance()Lio/microshow/rxffmpeg/EpEditor;

    move-result-object v2

    new-instance v3, Lio/microshow/rxffmpeg/EpEditor$OutputOption;

    invoke-direct {v3, v0}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/videooperate/utils/VideoManager$3;

    invoke-direct {v4, p0, v0, p2, p1}, Lcom/videooperate/utils/VideoManager$3;-><init>(Lcom/videooperate/utils/VideoManager;Ljava/lang/String;Ljava/lang/String;Lcom/videooperate/bean/Song;)V

    invoke-virtual {v2, p2, v3, v4}, Lio/microshow/rxffmpeg/EpEditor;->videoTranscod(Ljava/lang/String;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V

    goto :goto_0

    .line 187
    .end local v0    # "currentTimeMillis":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "oldVideoUrl"    # Ljava/lang/String;
    .param p2, "outputVideoUrl"    # Ljava/lang/String;

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/videooperate/utils/VideoManager;->save1080P:Z

    .line 272
    iput-object p2, p0, Lcom/videooperate/utils/VideoManager;->outputVideoUrl:Ljava/lang/String;

    .line 273
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/videooperate/utils/VideoManager;->sendMessage(ILjava/lang/String;)V

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->recordDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "currentTimeMillis":Ljava/lang/String;
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor;->getInstance()Lio/microshow/rxffmpeg/EpEditor;

    move-result-object v1

    new-instance v2, Lio/microshow/rxffmpeg/EpVideo;

    invoke-direct {v2, p1}, Lio/microshow/rxffmpeg/EpVideo;-><init>(Ljava/lang/String;)V

    new-instance v3, Lio/microshow/rxffmpeg/EpEditor$OutputOption;

    invoke-direct {v3, p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/videooperate/utils/VideoManager$4;

    invoke-direct {v4, p0, p2}, Lcom/videooperate/utils/VideoManager$4;-><init>(Lcom/videooperate/utils/VideoManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lio/microshow/rxffmpeg/EpEditor;->exec(Lio/microshow/rxffmpeg/EpVideo;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 202
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return v5

    .line 204
    :pswitch_0
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->progressDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->progressDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 206
    iput-object v6, p0, Lcom/videooperate/utils/VideoManager;->progressDialog:Landroid/support/v7/app/AlertDialog;

    .line 208
    :cond_1
    const-string v2, "rxffmpeg"

    const-string v3, "handleMessage PLAY_ERR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v1, "message":Ljava/lang/StringBuilder;
    const-string v2, "Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->activity:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 215
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->callback:Lcom/videooperate/utils/VideoManager$Callback;

    invoke-interface {v2}, Lcom/videooperate/utils/VideoManager$Callback;->onFailure()V

    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 217
    iput-boolean v5, p0, Lcom/videooperate/utils/VideoManager;->save1080P:Z

    goto :goto_0

    .line 220
    .end local v1    # "message":Ljava/lang/StringBuilder;
    :pswitch_1
    const-string v2, "rxffmpeg"

    const-string v3, "handleMessage PLAY_SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->activity:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800a7

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 222
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->callback:Lcom/videooperate/utils/VideoManager$Callback;

    iget-object v3, p0, Lcom/videooperate/utils/VideoManager;->composeVideoUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/videooperate/utils/VideoManager;->outputVideoUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/videooperate/utils/VideoManager$Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-boolean v2, p0, Lcom/videooperate/utils/VideoManager;->save1080P:Z

    if-eqz v2, :cond_3

    .line 224
    iput-boolean v5, p0, Lcom/videooperate/utils/VideoManager;->save1080P:Z

    goto/16 :goto_0

    .line 227
    :cond_3
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->progressDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_4

    .line 228
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->progressDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 229
    iput-object v6, p0, Lcom/videooperate/utils/VideoManager;->progressDialog:Landroid/support/v7/app/AlertDialog;

    .line 231
    :cond_4
    iget-boolean v2, p0, Lcom/videooperate/utils/VideoManager;->openDialog:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->inputVideoUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 232
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->inputVideoUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->inputVideoUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 239
    .end local v0    # "file":Ljava/io/File;
    :pswitch_2
    const-string v2, "rxffmpeg"

    const-string v3, "handleMessage PLAY_PROGRESS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->callback:Lcom/videooperate/utils/VideoManager$Callback;

    invoke-interface {v2}, Lcom/videooperate/utils/VideoManager$Callback;->onProgress()V

    .line 241
    iget-boolean v2, p0, Lcom/videooperate/utils/VideoManager;->save1080P:Z

    if-nez v2, :cond_0

    .line 244
    iget-boolean v2, p0, Lcom/videooperate/utils/VideoManager;->openDialog:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->progressDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mergeLocationVideo(Lcom/videooperate/bean/Song;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "song"    # Lcom/videooperate/bean/Song;
    .param p2, "inputVideoUrl"    # Ljava/lang/String;
    .param p3, "outputVideoUrl"    # Ljava/lang/String;
    .param p4, "openDialog"    # Z

    .prologue
    .line 78
    iput-object p3, p0, Lcom/videooperate/utils/VideoManager;->outputVideoUrl:Ljava/lang/String;

    .line 79
    iput-boolean p4, p0, Lcom/videooperate/utils/VideoManager;->openDialog:Z

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/videooperate/utils/VideoManager;->checkVideoType(Lcom/videooperate/bean/Song;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v0, "rxffmpeg"

    const-string v1, "PLAY_PROGRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/videooperate/utils/VideoManager;->sendMessage(ILjava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/videooperate/utils/VideoManager;->mHandler:Lcom/videooperate/utils/SafeHandler;

    new-instance v1, Lcom/videooperate/utils/VideoManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/videooperate/utils/VideoManager$1;-><init>(Lcom/videooperate/utils/VideoManager;Lcom/videooperate/bean/Song;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/videooperate/utils/SafeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public resetCMDString(Z)V
    .locals 1
    .param p1, "u"    # Z

    .prologue
    .line 358
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor;->getInstance()Lio/microshow/rxffmpeg/EpEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/microshow/rxffmpeg/EpEditor;->resetCMDString(Z)V

    .line 359
    return-void
.end method

.method public saveVideo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "Url"    # Landroid/net/Uri;
    .param p2, "outputVideoUrl"    # Ljava/lang/String;

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor;->getInstance()Lio/microshow/rxffmpeg/EpEditor;

    move-result-object v0

    new-instance v1, Lio/microshow/rxffmpeg/EpEditor$OutputOption;

    invoke-direct {v1, p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/videooperate/utils/VideoManager$5;

    invoke-direct {v2, p0}, Lcom/videooperate/utils/VideoManager$5;-><init>(Lcom/videooperate/utils/VideoManager;)V

    invoke-virtual {v0, p1, v1, v2}, Lio/microshow/rxffmpeg/EpEditor;->saveVideo(Landroid/net/Uri;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V

    goto :goto_0
.end method

.method public showProgressDialog()Landroid/support/v7/app/AlertDialog;
    .locals 4

    .prologue
    .line 254
    iget-object v1, p0, Lcom/videooperate/utils/VideoManager;->activity:Landroid/content/Context;

    const v2, 0x7f04003a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/videooperate/utils/VideoManager;->activity:Landroid/content/Context;

    const v3, 0x7f0a00dc

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor;->getInstance()Lio/microshow/rxffmpeg/EpEditor;

    move-result-object v0

    invoke-virtual {v0}, Lio/microshow/rxffmpeg/EpEditor;->stop()V

    .line 363
    return-void
.end method

.method public testCmd(Ljava/lang/String;Ljava/lang/String;Lio/microshow/rxffmpeg/EpVideo;)V
    .locals 4
    .param p1, "oldVideoUrl"    # Ljava/lang/String;
    .param p2, "outputVideoUrl"    # Ljava/lang/String;
    .param p3, "epvideoTest"    # Lio/microshow/rxffmpeg/EpVideo;

    .prologue
    .line 329
    new-instance v0, Lio/microshow/rxffmpeg/EpVideo;

    invoke-direct {v0, p1}, Lio/microshow/rxffmpeg/EpVideo;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "epvideo":Lio/microshow/rxffmpeg/EpVideo;
    const-string v1, "curves=vintage "

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/EpVideo;->addFilter(Ljava/lang/String;)Lio/microshow/rxffmpeg/EpVideo;

    .line 334
    invoke-static {}, Lio/microshow/rxffmpeg/EpEditor;->getInstance()Lio/microshow/rxffmpeg/EpEditor;

    move-result-object v1

    new-instance v2, Lio/microshow/rxffmpeg/EpEditor$OutputOption;

    invoke-direct {v2, p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/videooperate/utils/VideoManager$6;

    invoke-direct {v3, p0, p2}, Lcom/videooperate/utils/VideoManager$6;-><init>(Lcom/videooperate/utils/VideoManager;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p3, v2, v3}, Lio/microshow/rxffmpeg/EpEditor;->execPicture(Lio/microshow/rxffmpeg/EpVideo;Lio/microshow/rxffmpeg/EpVideo;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V

    .line 355
    return-void
.end method
