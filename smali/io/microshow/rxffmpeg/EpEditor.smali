.class public Lio/microshow/rxffmpeg/EpEditor;
.super Ljava/lang/Object;
.source "EpEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/microshow/rxffmpeg/EpEditor$OutputOption;,
        Lio/microshow/rxffmpeg/EpEditor$PTS;,
        Lio/microshow/rxffmpeg/EpEditor$Format;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT:I = 0x168

.field private static final DEFAULT_WIDTH:I = 0x1e0

.field private static instance:Lio/microshow/rxffmpeg/EpEditor;

.field public static type:I


# instance fields
.field private filter_cmd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    sput v0, Lio/microshow/rxffmpeg/EpEditor;->type:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 6
    .param p1, "cmd"    # Lio/microshow/rxffmpeg/CmdList;
    .param p2, "duration"    # J
    .param p4, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 859
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/CmdList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Lio/microshow/rxffmpeg/CmdList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 860
    .local v1, "cmds":[Ljava/lang/String;
    const-string v0, ""

    .line 861
    .local v0, "cmdLog":Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 862
    .local v2, "ss":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 865
    .end local v2    # "ss":Ljava/lang/String;
    :cond_0
    const-string v3, "rxffmpeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v3

    new-instance v4, Lio/microshow/rxffmpeg/EpEditor$2;

    invoke-direct {v4, p0, p4}, Lio/microshow/rxffmpeg/EpEditor$2;-><init>(Lio/microshow/rxffmpeg/EpEditor;Lio/microshow/rxffmpeg/OnEditorListener;)V

    invoke-virtual {v3, v1, p2, p3, v4}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->exec([Ljava/lang/String;JLio/microshow/rxffmpeg/OnEditorListener;)V

    .line 882
    return-void
.end method

.method public static declared-synchronized getInstance()Lio/microshow/rxffmpeg/EpEditor;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lio/microshow/rxffmpeg/EpEditor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/microshow/rxffmpeg/EpEditor;->instance:Lio/microshow/rxffmpeg/EpEditor;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lio/microshow/rxffmpeg/EpEditor;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/EpEditor;-><init>()V

    sput-object v0, Lio/microshow/rxffmpeg/EpEditor;->instance:Lio/microshow/rxffmpeg/EpEditor;

    .line 44
    :cond_0
    sget-object v0, Lio/microshow/rxffmpeg/EpEditor;->instance:Lio/microshow/rxffmpeg/EpEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addBackgroundMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 14
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "audioin"    # Ljava/lang/String;
    .param p3, "output"    # Ljava/lang/String;
    .param p4, "videoVolume"    # F
    .param p5, "audioVolume"    # F
    .param p6, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 453
    move-object/from16 v0, p6

    invoke-virtual {p0, v0, p1}, Lio/microshow/rxffmpeg/EpEditor;->checkFileIsDamage(Lio/microshow/rxffmpeg/OnEditorListener;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 487
    :goto_0
    return-void

    .line 456
    :cond_0
    new-instance v9, Landroid/media/MediaExtractor;

    invoke-direct {v9}, Landroid/media/MediaExtractor;-><init>()V

    .line 458
    .local v9, "mediaExtractor":Landroid/media/MediaExtractor;
    :try_start_0
    invoke-virtual {v9, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    invoke-static {v9}, Lio/microshow/rxffmpeg/TrackUtils;->selectAudioTrack(Landroid/media/MediaExtractor;)I

    move-result v3

    .line 464
    .local v3, "at":I
    new-instance v4, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v4}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 465
    .local v4, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v11, "ffmpeg"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-y"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-i"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    invoke-virtual {v11, p1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 466
    const/4 v11, -0x1

    if-ne v3, v11, :cond_1

    .line 467
    invoke-static {v9}, Lio/microshow/rxffmpeg/TrackUtils;->selectVideoTrack(Landroid/media/MediaExtractor;)I

    move-result v10

    .line 468
    .local v10, "vt":I
    const/4 v5, 0x0

    .line 470
    .local v5, "duration":F
    :try_start_1
    invoke-virtual {v9, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    const-string v12, "durationUs"

    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    long-to-float v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float v5, v11, v12

    .line 475
    const-string v11, "-ss"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-t"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    invoke-virtual {v11, v5}, Lio/microshow/rxffmpeg/CmdList;->append(F)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-i"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-acodec"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "copy"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-vcodec"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "copy"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 482
    .end local v5    # "duration":F
    .end local v10    # "vt":I
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 483
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    .line 484
    invoke-static {p1}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v6

    .line 485
    .local v6, "d":J
    const-string v11, "rxffmpeg"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addBackgroundMusic cmd: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lio/microshow/rxffmpeg/CmdList;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    move-object/from16 v0, p6

    invoke-direct {p0, v4, v6, v7, v0}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    goto/16 :goto_0

    .line 459
    .end local v3    # "at":I
    .end local v4    # "cmd":Lio/microshow/rxffmpeg/CmdList;
    .end local v6    # "d":J
    :catch_0
    move-exception v8

    .line 460
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 471
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "at":I
    .restart local v4    # "cmd":Lio/microshow/rxffmpeg/CmdList;
    .restart local v5    # "duration":F
    .restart local v10    # "vt":I
    :catch_1
    move-exception v2

    .line 472
    .local v2, "a":Ljava/lang/Exception;
    const-string v11, "Video has added music"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    .end local v2    # "a":Ljava/lang/Exception;
    .end local v5    # "duration":F
    .end local v10    # "vt":I
    :cond_1
    const-string v11, "-i"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-filter_complex"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[0:a]aformat=sample_fmts=fltp:sample_rates=44100:channel_layouts=stereo,volume="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "[a0];[1:a]aformat=sample_fmts=fltp:sample_rates=44100:channel_layouts=stereo,volume="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "[a1];[a0][a1]amix=inputs=2:duration=first[aout]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 478
    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-map"

    .line 479
    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "[aout]"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-ac"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "2"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-c:v"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "copy"

    .line 480
    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-map"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "0:v:0"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto/16 :goto_1
.end method

.method public changePTS(Ljava/lang/String;Ljava/lang/String;FLio/microshow/rxffmpeg/EpEditor$PTS;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 13
    .param p1, "videoin"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "times"    # F
    .param p4, "pts"    # Lio/microshow/rxffmpeg/EpEditor$PTS;
    .param p5, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 613
    const/high16 v10, 0x3e800000    # 0.25f

    cmpg-float v10, p3, v10

    if-ltz v10, :cond_0

    const/high16 v10, 0x40800000    # 4.0f

    cmpl-float v10, p3, v10

    if-lez v10, :cond_1

    .line 614
    :cond_0
    const-string v10, "ffmpeg"

    const-string v11, "times can only be 0.25 to 4"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v10, "times can only be 0.25 to 4"

    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 618
    :cond_1
    new-instance v2, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v2}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 619
    .local v2, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v10, "ffmpeg"

    invoke-virtual {v2, v10}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    const-string v11, "-y"

    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    const-string v11, "-i"

    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    invoke-virtual {v10, p1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 620
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "atempo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "t":Ljava/lang/String;
    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, p3, v10

    if-gez v10, :cond_3

    .line 622
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "atempo=0.5,atempo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x3f000000    # 0.5f

    div-float v11, p3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    :cond_2
    :goto_1
    const-string v10, "ffmpeg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "atempo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    sget-object v10, Lio/microshow/rxffmpeg/EpEditor$4;->$SwitchMap$io$microshow$rxffmpeg$EpEditor$PTS:[I

    invoke-virtual/range {p4 .. p4}, Lio/microshow/rxffmpeg/EpEditor$PTS;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 639
    :goto_2
    const-string v10, "-preset"

    invoke-virtual {v2, v10}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    const-string v11, "superfast"

    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    invoke-virtual {v10, p2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 640
    invoke-static {p1}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v4

    .line 641
    .local v4, "d":J
    long-to-float v10, v4

    div-float v10, v10, p3

    float-to-double v6, v10

    .line 642
    .local v6, "dd":D
    double-to-long v8, v6

    .line 643
    .local v8, "ddd":J
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v8, v9, v0}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    goto/16 :goto_0

    .line 623
    .end local v4    # "d":J
    .end local v6    # "dd":D
    .end local v8    # "ddd":J
    :cond_3
    const/high16 v10, 0x40000000    # 2.0f

    cmpl-float v10, p3, v10

    if-lez v10, :cond_2

    .line 624
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "atempo=2.0,atempo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, p3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 629
    :pswitch_0
    const-string v10, "-filter_complex"

    invoke-virtual {v2, v10}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[0:v]setpts="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v12, v12, p3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*PTS"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    const-string v11, "-an"

    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto :goto_2

    .line 632
    :pswitch_1
    const-string v10, "-filter:a"

    invoke-virtual {v2, v10}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    invoke-virtual {v10, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto :goto_2

    .line 635
    :pswitch_2
    const-string v10, "-filter_complex"

    invoke-virtual {v2, v10}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[0:v]setpts="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v12, v12, p3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*PTS[v];[0:a]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "[a]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    const-string v11, "-map"

    .line 636
    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    const-string v11, "[v]"

    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    const-string v11, "-map"

    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    const-string v11, "[a]"

    invoke-virtual {v10, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto/16 :goto_2

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkFileIsDamage(Lio/microshow/rxffmpeg/OnEditorListener;Ljava/lang/String;)Z
    .locals 11
    .param p1, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 496
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 498
    const-string v7, "rxffmpeg"

    const-string v8, "checkFileIsDamage \u89c6\u9891\u4e0d\u5b58\u5728"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v7, "Audio or video paths do not exist"

    invoke-interface {p1, v7}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    .line 536
    :goto_0
    return v6

    .line 503
    :cond_0
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 504
    .local v5, "mmr":Landroid/media/MediaMetadataRetriever;
    const-string v1, ""

    .line 505
    .local v1, "duration":Ljava/lang/String;
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 507
    .local v4, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v4, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_1
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    .line 513
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "avi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 514
    invoke-virtual {v5, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 516
    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 520
    :goto_2
    const-string v8, "0"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 521
    const-string v1, "6000"

    .line 528
    :cond_1
    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "date":Ljava/lang/String;
    const-string v8, "rxffmpeg"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkFileIsDamage "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 531
    invoke-virtual {p0, v1, v7}, Lio/microshow/rxffmpeg/EpEditor;->convertToInt(Ljava/lang/Object;I)I

    move-result v8

    const/16 v9, 0x7d0

    if-gt v8, v9, :cond_3

    .line 532
    const-string v7, "rxffmpeg"

    const-string v8, "checkFileIsDamage \u97f3\u89c6\u9891\u89c6\u9891\u635f\u574f"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v7, "Video error"

    invoke-interface {p1, v7}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    .end local v0    # "date":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 510
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 518
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    const-string v1, "6000"

    goto :goto_2

    .restart local v0    # "date":Ljava/lang/String;
    :cond_3
    move v6, v7

    .line 536
    goto :goto_0
.end method

.method public convertToInt(Ljava/lang/Object;I)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "defalut"    # I

    .prologue
    .line 890
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 903
    .end local p2    # "defalut":I
    :cond_0
    :goto_0
    return p2

    .line 893
    .restart local p2    # "defalut":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 898
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result p2

    goto :goto_0

    .line 902
    :catch_1
    move-exception v1

    .line 903
    .local v1, "el":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public demuxer(Ljava/lang/String;Ljava/lang/String;Lio/microshow/rxffmpeg/EpEditor$Format;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 5
    .param p1, "videoin"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "format"    # Lio/microshow/rxffmpeg/EpEditor$Format;
    .param p4, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 549
    new-instance v0, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 550
    .local v0, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-y"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-i"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 551
    sget-object v1, Lio/microshow/rxffmpeg/EpEditor$4;->$SwitchMap$io$microshow$rxffmpeg$EpEditor$Format:[I

    invoke-virtual {p3}, Lio/microshow/rxffmpeg/EpEditor$Format;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 559
    :goto_0
    invoke-virtual {v0, p2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 560
    invoke-static {p1}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    .line 561
    .local v2, "d":J
    invoke-direct {p0, v0, v2, v3, p4}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    .line 562
    return-void

    .line 553
    .end local v2    # "d":J
    :pswitch_0
    const-string v1, "-vn"

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-acodec"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "libmp3lame"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto :goto_0

    .line 556
    :pswitch_1
    const-string v1, "-vcodec"

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "copy"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-an"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public exec(Lio/microshow/rxffmpeg/EpVideo;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 12
    .param p1, "epVideo"    # Lio/microshow/rxffmpeg/EpVideo;
    .param p2, "outputOption"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;
    .param p3, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 190
    const/4 v8, 0x0

    .line 191
    .local v8, "isFilter":Z
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v3

    .line 193
    .local v3, "epDraws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/microshow/rxffmpeg/EpDraw;>;"
    new-instance v2, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v2}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 194
    .local v2, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v9, "ffmpeg"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 195
    const-string v9, "-y"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 196
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getVideoClip()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    const-string v9, "-ss"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v9

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getClipStart()F

    move-result v10

    invoke-virtual {v9, v10}, Lio/microshow/rxffmpeg/CmdList;->append(F)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v9

    const-string v10, "-t"

    invoke-virtual {v9, v10}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v9

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getClipDuration()F

    move-result v10

    invoke-virtual {v9, v10}, Lio/microshow/rxffmpeg/CmdList;->append(F)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v9

    const-string v10, "-accurate_seek"

    invoke-virtual {v9, v10}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 199
    :cond_0
    const-string v9, "-i"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v9

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 201
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_e

    .line 202
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 203
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpDraw;->isAnimation()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 204
    const-string v9, "-ignore_loop"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 205
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(I)Lio/microshow/rxffmpeg/CmdList;

    .line 207
    :cond_1
    const-string v9, "-i"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpDraw;->getPicPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 202
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 209
    :cond_2
    const-string v9, "-filter_complex"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v6, "filter_complex":Ljava/lang/StringBuilder;
    const-string v9, "[0:v]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "scale="

    .line 212
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "iw"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 213
    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "ih"

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 214
    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v9

    if-nez v9, :cond_6

    const-string v9, ""

    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "[outv0];"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_7

    .line 216
    const-string v9, "["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":0]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpDraw;->getPicFilter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "scale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpDraw;->getPicWidth()F

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 217
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpDraw;->getPicHeight()F

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "[outv"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "];"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 211
    :cond_3
    const-string v9, ""

    goto/16 :goto_1

    .line 212
    :cond_4
    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_2

    .line 213
    :cond_5
    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_3

    .line 214
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ",setdar="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getSar()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 219
    :cond_7
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_b

    .line 220
    if-nez v7, :cond_a

    .line 221
    const-string v9, "[outv"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "[outv"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :goto_7
    const-string v9, "overlay="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpDraw;->getPicX()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpDraw;->getPicY()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 226
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpDraw;->getTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpDraw;->isAnimation()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 228
    const-string v9, ":shortest=1"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_9

    .line 231
    const-string v9, "[outo"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "];"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 223
    :cond_a
    const-string v9, "[outo"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "[outv"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 234
    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 235
    const/4 v8, 0x1

    .line 261
    .end local v7    # "i":I
    :cond_c
    :goto_8
    invoke-virtual {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getOutputInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append([Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 262
    if-nez v8, :cond_12

    invoke-virtual {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getOutputInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 263
    const-string v9, "-vcodec"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 264
    const-string v9, "copy"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 265
    const-string v9, "-acodec"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 266
    const-string v9, "copy"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 271
    :goto_9
    iget-object v9, p2, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outPath:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 272
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v4

    .line 273
    .local v4, "duration":J
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getVideoClip()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 274
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getClipDuration()F

    move-result v9

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getClipStart()F

    move-result v10

    sub-float/2addr v9, v10

    const v10, 0x49742400    # 1000000.0f

    mul-float/2addr v9, v10

    float-to-long v0, v9

    .line 275
    .local v0, "clipTime":J
    cmp-long v9, v0, v4

    if-gez v9, :cond_d

    move-wide v4, v0

    .line 278
    .end local v0    # "clipTime":J
    :cond_d
    invoke-direct {p0, v2, v4, v5, p3}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    .line 279
    return-void

    .line 237
    .end local v4    # "duration":J
    .end local v6    # "filter_complex":Ljava/lang/StringBuilder;
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .restart local v6    # "filter_complex":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 239
    const-string v9, "-filter_complex"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 240
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 241
    const/4 v8, 0x1

    .line 244
    :cond_f
    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v9

    if-eqz v9, :cond_10

    .line 245
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 246
    const-string v9, ",scale="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",setdar="

    .line 247
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getSar()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_10
    :goto_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 256
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto/16 :goto_8

    .line 249
    :cond_11
    const-string v9, "-filter_complex"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 250
    const-string v9, "scale="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",setdar="

    .line 251
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getSar()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/4 v8, 0x1

    goto :goto_a

    .line 268
    :cond_12
    const-string v9, "-preset"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 269
    const-string v9, "superfast"

    invoke-virtual {v2, v9}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto/16 :goto_9
.end method

.method public execCmd(Ljava/lang/String;JLio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ffmpeg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 832
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "cmds":[Ljava/lang/String;
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    new-instance v2, Lio/microshow/rxffmpeg/EpEditor$1;

    invoke-direct {v2, p0, p4}, Lio/microshow/rxffmpeg/EpEditor$1;-><init>(Lio/microshow/rxffmpeg/EpEditor;Lio/microshow/rxffmpeg/OnEditorListener;)V

    invoke-virtual {v1, v0, p2, p3, v2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->exec([Ljava/lang/String;JLio/microshow/rxffmpeg/OnEditorListener;)V

    .line 849
    return-void
.end method

.method public execPicture(Lio/microshow/rxffmpeg/EpVideo;Lio/microshow/rxffmpeg/EpVideo;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 14
    .param p1, "epVideo"    # Lio/microshow/rxffmpeg/EpVideo;
    .param p2, "epVideoTest"    # Lio/microshow/rxffmpeg/EpVideo;
    .param p3, "outputOption"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;
    .param p4, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 54
    const/4 v10, 0x0

    .line 55
    .local v10, "isFilter":Z
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v5

    .line 57
    .local v5, "epDraws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/microshow/rxffmpeg/EpDraw;>;"
    new-instance v4, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v4}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 58
    .local v4, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v11, "ffmpeg"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 59
    const-string v11, "-y"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 61
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getVideoClip()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 63
    const-string v11, "-ss"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getClipStart()F

    move-result v12

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(F)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-t"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getClipDuration()F

    move-result v12

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(F)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-accurate_seek"

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 67
    :cond_0
    const-string v11, "-i"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 70
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_e

    .line 71
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_2

    .line 72
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v11}, Lio/microshow/rxffmpeg/EpDraw;->isAnimation()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 73
    const-string v11, "-ignore_loop"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 74
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(I)Lio/microshow/rxffmpeg/CmdList;

    .line 76
    :cond_1
    const-string v11, "-i"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v11}, Lio/microshow/rxffmpeg/EpDraw;->getPicPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 71
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 78
    :cond_2
    const-string v11, "-filter_complex"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v8, "filter_complex":Ljava/lang/StringBuilder;
    const-string v11, "[0:v]"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "scale="

    .line 81
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "iw"

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 82
    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "ih"

    :goto_3
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 83
    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v11

    if-nez v11, :cond_6

    const-string v11, ""

    :goto_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "[outv0];"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_7

    .line 85
    const-string v11, "["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":0]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v11}, Lio/microshow/rxffmpeg/EpDraw;->getPicFilter()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "scale="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v11}, Lio/microshow/rxffmpeg/EpDraw;->getPicWidth()F

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 86
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v11}, Lio/microshow/rxffmpeg/EpDraw;->getPicHeight()F

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "[outv"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "];"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 80
    :cond_3
    const-string v11, ""

    goto/16 :goto_1

    .line 81
    :cond_4
    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_2

    .line 82
    :cond_5
    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_3

    .line 83
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ",setdar="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getSar()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 88
    :cond_7
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_b

    .line 89
    if-nez v9, :cond_a

    .line 90
    const-string v11, "[outv"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "[outv"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_7
    const-string v11, "overlay="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v11}, Lio/microshow/rxffmpeg/EpDraw;->getPicX()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v11}, Lio/microshow/rxffmpeg/EpDraw;->getPicY()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 95
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v11}, Lio/microshow/rxffmpeg/EpDraw;->getTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual {v11}, Lio/microshow/rxffmpeg/EpDraw;->isAnimation()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 97
    const-string v11, ":shortest=1"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v9, v11, :cond_9

    .line 100
    const-string v11, "[outo"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "];"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 92
    :cond_a
    const-string v11, "[outo"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "[outv"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 103
    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 104
    const/4 v10, 0x1

    .line 156
    .end local v9    # "i":I
    :cond_c
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getOutputInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append([Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 158
    if-nez v10, :cond_15

    invoke-virtual/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getOutputInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 159
    const-string v11, "-vcodec"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 160
    const-string v11, "copy"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 161
    const-string v11, "-acodec"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 162
    const-string v11, "copy"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 173
    :goto_9
    move-object/from16 v0, p3

    iget-object v11, v0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outPath:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 174
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v6

    .line 175
    .local v6, "duration":J
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getVideoClip()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 176
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getClipDuration()F

    move-result v11

    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getClipStart()F

    move-result v12

    sub-float/2addr v11, v12

    const v12, 0x49742400    # 1000000.0f

    mul-float/2addr v11, v12

    float-to-long v2, v11

    .line 177
    .local v2, "clipTime":J
    cmp-long v11, v2, v6

    if-gez v11, :cond_d

    move-wide v6, v2

    .line 180
    .end local v2    # "clipTime":J
    :cond_d
    move-object/from16 v0, p4

    invoke-direct {p0, v4, v6, v7, v0}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    .line 181
    return-void

    .line 108
    .end local v6    # "duration":J
    .end local v8    # "filter_complex":Ljava/lang/StringBuilder;
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .restart local v8    # "filter_complex":Ljava/lang/StringBuilder;
    iget-boolean v11, p0, Lio/microshow/rxffmpeg/EpEditor;->filter_cmd:Z

    if-eqz v11, :cond_12

    .line 110
    invoke-virtual/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 112
    const-string v11, "-vf"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 113
    invoke-virtual/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 114
    const/4 v10, 0x1

    .line 116
    :cond_f
    const-string v11, "ffmpeg"

    const-string v12, "filter_cmd != false: "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v11

    if-eqz v11, :cond_10

    .line 118
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v11, :cond_11

    .line 119
    const-string v11, ",scale="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x780

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x438

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",setdar="

    .line 120
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getSar()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_10
    :goto_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 151
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto/16 :goto_8

    .line 122
    :cond_11
    const-string v11, "-filter_complex"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 123
    const-string v11, "scale="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",setdar="

    .line 124
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getSar()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/4 v10, 0x1

    goto :goto_a

    .line 129
    :cond_12
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 130
    const-string v11, "-filter_complex"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 132
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 133
    const/4 v10, 0x1

    .line 137
    :cond_13
    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v11

    if-eqz v11, :cond_10

    .line 138
    invoke-virtual {p1}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v11, :cond_14

    .line 139
    const-string v11, ",scale="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",setdar="

    .line 140
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getSar()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 142
    :cond_14
    const-string v11, "-filter_complex"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 143
    const-string v11, "scale="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",setdar="

    .line 144
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getSar()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const/4 v10, 0x1

    goto/16 :goto_a

    .line 164
    :cond_15
    const-string v11, "-preset"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 165
    const-string v11, "slower"

    invoke-virtual {v4, v11}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "-vcodec"

    .line 166
    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v11

    const-string v12, "mpeg4"

    .line 168
    invoke-virtual {v11, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto/16 :goto_9
.end method

.method public merge(Ljava/util/List;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 26
    .param p2, "outputOption"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;
    .param p3, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/microshow/rxffmpeg/EpVideo;",
            ">;",
            "Lio/microshow/rxffmpeg/EpEditor$OutputOption;",
            "Lio/microshow/rxffmpeg/OnEditorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "epVideos":Ljava/util/List;, "Ljava/util/List<Lio/microshow/rxffmpeg/EpVideo;>;"
    const/16 v19, 0x0

    .line 290
    .local v19, "isNoAudioTrack":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/microshow/rxffmpeg/EpVideo;

    .line 291
    .local v15, "epVideo":Lio/microshow/rxffmpeg/EpVideo;
    new-instance v21, Landroid/media/MediaExtractor;

    invoke-direct/range {v21 .. v21}, Landroid/media/MediaExtractor;-><init>()V

    .line 293
    .local v21, "mediaExtractor":Landroid/media/MediaExtractor;
    :try_start_0
    invoke-virtual {v15}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    invoke-static/range {v21 .. v21}, Lio/microshow/rxffmpeg/TrackUtils;->selectAudioTrack(Landroid/media/MediaExtractor;)I

    move-result v2

    .line 299
    .local v2, "at":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_2

    .line 300
    const/16 v19, 0x1

    .line 301
    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaExtractor;->release()V

    .line 307
    .end local v2    # "at":I
    .end local v15    # "epVideo":Lio/microshow/rxffmpeg/EpVideo;
    .end local v21    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_0
    invoke-static/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v22

    if-nez v22, :cond_3

    const/16 v22, 0x1e0

    :goto_1
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$002(Lio/microshow/rxffmpeg/EpEditor$OutputOption;I)I

    .line 308
    invoke-static/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v22

    if-nez v22, :cond_4

    const/16 v22, 0x168

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$102(Lio/microshow/rxffmpeg/EpEditor$OutputOption;I)I

    .line 310
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_17

    .line 311
    new-instance v3, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v3}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 312
    .local v3, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v22, "ffmpeg"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 313
    const-string v22, "-y"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 315
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/microshow/rxffmpeg/EpVideo;

    .line 316
    .local v12, "e":Lio/microshow/rxffmpeg/EpVideo;
    invoke-virtual {v12}, Lio/microshow/rxffmpeg/EpVideo;->getVideoClip()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 317
    const-string v23, "-ss"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v23

    invoke-virtual {v12}, Lio/microshow/rxffmpeg/EpVideo;->getClipStart()F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lio/microshow/rxffmpeg/CmdList;->append(F)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v23

    const-string v24, "-t"

    invoke-virtual/range {v23 .. v24}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v23

    invoke-virtual {v12}, Lio/microshow/rxffmpeg/EpVideo;->getClipDuration()F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lio/microshow/rxffmpeg/CmdList;->append(F)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v23

    const-string v24, "-accurate_seek"

    invoke-virtual/range {v23 .. v24}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 319
    :cond_1
    const-string v23, "-i"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v23

    invoke-virtual {v12}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto :goto_3

    .line 294
    .end local v3    # "cmd":Lio/microshow/rxffmpeg/CmdList;
    .end local v12    # "e":Lio/microshow/rxffmpeg/EpVideo;
    .restart local v15    # "epVideo":Lio/microshow/rxffmpeg/EpVideo;
    .restart local v21    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catch_0
    move-exception v12

    .line 295
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 400
    .end local v12    # "e":Ljava/io/IOException;
    .end local v15    # "epVideo":Lio/microshow/rxffmpeg/EpVideo;
    .end local v21    # "mediaExtractor":Landroid/media/MediaExtractor;
    :goto_4
    return-void

    .line 304
    .restart local v2    # "at":I
    .restart local v15    # "epVideo":Lio/microshow/rxffmpeg/EpVideo;
    .restart local v21    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaExtractor;->release()V

    goto/16 :goto_0

    .line 307
    .end local v2    # "at":I
    .end local v15    # "epVideo":Lio/microshow/rxffmpeg/EpVideo;
    .end local v21    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_3
    invoke-static/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v22

    goto/16 :goto_1

    .line 308
    :cond_4
    invoke-static/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v22

    goto/16 :goto_2

    .line 321
    .restart local v3    # "cmd":Lio/microshow/rxffmpeg/CmdList;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/microshow/rxffmpeg/EpVideo;

    .line 322
    .local v12, "e":Lio/microshow/rxffmpeg/EpVideo;
    invoke-virtual {v12}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v14

    .line 323
    .local v14, "epDraws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/microshow/rxffmpeg/EpDraw;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_6

    .line 324
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/microshow/rxffmpeg/EpDraw;

    .line 325
    .local v13, "ep":Lio/microshow/rxffmpeg/EpDraw;
    invoke-virtual {v13}, Lio/microshow/rxffmpeg/EpDraw;->isAnimation()Z

    move-result v24

    if-eqz v24, :cond_7

    const-string v24, "-ignore_loop"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lio/microshow/rxffmpeg/CmdList;->append(I)Lio/microshow/rxffmpeg/CmdList;

    .line 326
    :cond_7
    const-string v24, "-i"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v24

    invoke-virtual {v13}, Lio/microshow/rxffmpeg/EpDraw;->getPicPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    goto :goto_5

    .line 331
    .end local v12    # "e":Lio/microshow/rxffmpeg/EpVideo;
    .end local v13    # "ep":Lio/microshow/rxffmpeg/EpDraw;
    .end local v14    # "epDraws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/microshow/rxffmpeg/EpDraw;>;"
    :cond_8
    const-string v22, "-filter_complex"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 332
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v17, "filter_complex":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 334
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v22, :cond_9

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .local v16, "filter":Ljava/lang/StringBuilder;
    :goto_7
    const-string v22, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":v]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "scale="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$000(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->access$100(Lio/microshow/rxffmpeg/EpEditor$OutputOption;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",setdar="

    .line 336
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getSar()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "[outv"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "];"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 334
    .end local v16    # "filter":Ljava/lang/StringBuilder;
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getFilters()Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    goto :goto_7

    .line 339
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .line 340
    .local v8, "drawNum":I
    const/16 v18, 0x0

    :goto_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 341
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_9
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 342
    const-string v22, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "drawNum":I
    .local v9, "drawNum":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":0]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpDraw;->getPicFilter()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "scale="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 343
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpDraw;->getPicWidth()F

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpDraw;

    .line 344
    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpDraw;->getPicHeight()F

    move-result v22

    .line 343
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "[p"

    .line 344
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "a"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "];"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    add-int/lit8 v20, v20, 0x1

    move v8, v9

    .end local v9    # "drawNum":I
    .restart local v8    # "drawNum":I
    goto/16 :goto_9

    .line 340
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8

    .line 348
    .end local v20    # "j":I
    :cond_c
    const/16 v18, 0x0

    :goto_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 349
    const/16 v20, 0x0

    .restart local v20    # "j":I
    :goto_b
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 350
    const-string v22, "[outv"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "][p"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "a"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]overlay="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 351
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpDraw;->getPicX()I

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 352
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpDraw;->getPicY()I

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 353
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpDraw;->getTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpVideo;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpVideo;->getEpDraws()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lio/microshow/rxffmpeg/EpDraw;

    invoke-virtual/range {v22 .. v22}, Lio/microshow/rxffmpeg/EpDraw;->isAnimation()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 355
    const-string v22, ":shortest=1"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_d
    const-string v22, "[outv"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "];"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_b

    .line 348
    :cond_e
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a

    .line 361
    .end local v20    # "j":I
    :cond_f
    const/16 v18, 0x0

    :goto_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 362
    const-string v22, "[outv"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 364
    :cond_10
    const-string v22, "concat=n="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":v=1:a=0[outv]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    if-nez v19, :cond_12

    .line 367
    const-string v22, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const/16 v18, 0x0

    :goto_d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 369
    const-string v22, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":a]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    .line 371
    :cond_11
    const-string v22, "concat=n="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":v=0:a=1[outa]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_12
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_13

    .line 374
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 376
    :cond_13
    const-string v22, "-map"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v22

    const-string v23, "[outv]"

    invoke-virtual/range {v22 .. v23}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 377
    if-nez v19, :cond_14

    .line 378
    const-string v22, "-map"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v22

    const-string v23, "[outa]"

    invoke-virtual/range {v22 .. v23}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 380
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->getOutputInfo()Ljava/lang/String;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append([Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 381
    const-string v22, "-preset"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v22

    const-string v23, "superfast"

    invoke-virtual/range {v22 .. v23}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v22

    move-object/from16 v0, p2

    iget-object v0, v0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 382
    const-wide/16 v10, 0x0

    .line 383
    .local v10, "duration":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_16

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/microshow/rxffmpeg/EpVideo;

    .line 384
    .local v13, "ep":Lio/microshow/rxffmpeg/EpVideo;
    invoke-virtual {v13}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v6

    .line 385
    .local v6, "d":J
    invoke-virtual {v13}, Lio/microshow/rxffmpeg/EpVideo;->getVideoClip()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 386
    invoke-virtual {v13}, Lio/microshow/rxffmpeg/EpVideo;->getClipDuration()F

    move-result v23

    invoke-virtual {v13}, Lio/microshow/rxffmpeg/EpVideo;->getClipStart()F

    move-result v24

    sub-float v23, v23, v24

    const v24, 0x49742400    # 1000000.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-long v4, v0

    .line 387
    .local v4, "clipTime":J
    cmp-long v23, v4, v6

    if-gez v23, :cond_15

    move-wide v6, v4

    .line 389
    .end local v4    # "clipTime":J
    :cond_15
    const-wide/16 v24, 0x0

    cmp-long v23, v6, v24

    if-eqz v23, :cond_16

    .line 390
    add-long/2addr v10, v6

    .line 394
    goto :goto_e

    .line 396
    .end local v6    # "d":J
    .end local v13    # "ep":Lio/microshow/rxffmpeg/EpVideo;
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v10, v11, v1}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    goto/16 :goto_4

    .line 398
    .end local v3    # "cmd":Lio/microshow/rxffmpeg/CmdList;
    .end local v8    # "drawNum":I
    .end local v10    # "duration":J
    .end local v17    # "filter_complex":Ljava/lang/StringBuilder;
    .end local v18    # "i":I
    :cond_17
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "Need more than one video"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22
.end method

.method public mergeByLc(Landroid/content/Context;Ljava/util/List;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "outputOption"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;
    .param p4, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lio/microshow/rxffmpeg/EpVideo;",
            ">;",
            "Lio/microshow/rxffmpeg/EpEditor$OutputOption;",
            "Lio/microshow/rxffmpeg/OnEditorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 414
    .local p2, "epVideos":Ljava/util/List;, "Ljava/util/List<Lio/microshow/rxffmpeg/EpVideo;>;"
    const-string v12, "rxffmpeg"

    const-string v13, "mergeByLc"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/drone/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "appDir":Ljava/lang/String;
    const-string v10, "ffmpeg_concat.txt"

    .line 417
    .local v10, "fileName":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v11, "videos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/microshow/rxffmpeg/EpVideo;

    .line 419
    .local v8, "e":Lio/microshow/rxffmpeg/EpVideo;
    invoke-virtual {v8}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v13}, Lio/microshow/rxffmpeg/EpEditor;->checkFileIsDamage(Lio/microshow/rxffmpeg/OnEditorListener;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 440
    .end local v8    # "e":Lio/microshow/rxffmpeg/EpVideo;
    :goto_1
    return-void

    .line 422
    .restart local v8    # "e":Lio/microshow/rxffmpeg/EpVideo;
    :cond_0
    invoke-virtual {v8}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 424
    .end local v8    # "e":Lio/microshow/rxffmpeg/EpVideo;
    :cond_1
    invoke-static {v11, v2, v10}, Lio/microshow/rxffmpeg/FileUtils;->writeTxtToFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v3, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v3}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 426
    .local v3, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v12, "ffmpeg"

    invoke-virtual {v3, v12}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    const-string v13, "-y"

    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    const-string v13, "-f"

    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    const-string v13, "concat"

    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    const-string v13, "-safe"

    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    const-string v13, "0"

    .line 427
    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    const-string v13, "-i"

    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    const-string v13, "-c"

    .line 428
    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    const-string v13, "copy"

    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v12

    move-object/from16 v0, p3

    iget-object v13, v0, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 429
    const-wide/16 v6, 0x0

    .line 430
    .local v6, "duration":J
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/microshow/rxffmpeg/EpVideo;

    .line 431
    .local v9, "ep":Lio/microshow/rxffmpeg/EpVideo;
    invoke-virtual {v9}, Lio/microshow/rxffmpeg/EpVideo;->getVideoPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v4

    .line 432
    .local v4, "d":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-eqz v13, :cond_2

    .line 433
    add-long/2addr v6, v4

    .line 437
    goto :goto_2

    .line 438
    .end local v4    # "d":J
    .end local v9    # "ep":Lio/microshow/rxffmpeg/EpVideo;
    :cond_2
    const-string v12, "rxffmpeg"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mergeByLc cmd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lio/microshow/rxffmpeg/CmdList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v6, v7, v1}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    goto/16 :goto_1
.end method

.method public pic2video(Ljava/lang/String;Ljava/lang/String;IIFLio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 6
    .param p1, "videoin"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "rate"    # F
    .param p6, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 686
    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 687
    :cond_0
    const-string v1, "ffmpeg"

    const-string v4, "width and height must greater than 0"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v1, "width and height must greater than 0"

    invoke-interface {p6, v1}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    .line 707
    :goto_0
    return-void

    .line 691
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p5, v1

    if-gtz v1, :cond_2

    .line 692
    const-string v1, "ffmpeg"

    const-string v4, "rate must greater than 0"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v1, "rate must greater than 0"

    invoke-interface {p6, v1}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_2
    new-instance v0, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 697
    .local v0, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-y"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-f"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "image2"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-i"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-vcodec"

    .line 698
    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "libx264"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-r"

    .line 699
    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    invoke-virtual {v1, p5}, Lio/microshow/rxffmpeg/CmdList;->append(F)Lio/microshow/rxffmpeg/CmdList;

    .line 701
    if-lez p3, :cond_3

    if-lez p4, :cond_3

    .line 702
    const-string v1, "-s"

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 704
    :cond_3
    invoke-virtual {v0, p2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 705
    invoke-static {p1}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    .line 706
    .local v2, "d":J
    invoke-direct {p0, v0, v2, v3, p6}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    goto :goto_0
.end method

.method public resetCMDString(Z)V
    .locals 0
    .param p1, "used"    # Z

    .prologue
    .line 1032
    iput-boolean p1, p0, Lio/microshow/rxffmpeg/EpEditor;->filter_cmd:Z

    .line 1033
    return-void
.end method

.method public reverse(Ljava/lang/String;Ljava/lang/String;ZZLio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 6
    .param p1, "videoin"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "vr"    # Z
    .param p4, "ar"    # Z
    .param p5, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 574
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 575
    const-string v4, "ffmpeg"

    const-string v5, "parameter error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v4, "parameter error"

    invoke-interface {p5, v4}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    .line 601
    :goto_0
    return-void

    .line 579
    :cond_0
    new-instance v0, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 580
    .local v0, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v4, "ffmpeg"

    invoke-virtual {v0, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v4

    const-string v5, "-y"

    invoke-virtual {v4, v5}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v4

    const-string v5, "-i"

    invoke-virtual {v4, v5}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v4

    const-string v5, "-filter_complex"

    invoke-virtual {v4, v5}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 581
    const-string v1, ""

    .line 582
    .local v1, "filter":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[0:v]reverse[v];"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    :cond_1
    if-eqz p4, :cond_2

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[0:a]areverse[a];"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 589
    if-eqz p3, :cond_3

    .line 590
    const-string v4, "-map"

    invoke-virtual {v0, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v4

    const-string v5, "[v]"

    invoke-virtual {v4, v5}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 592
    :cond_3
    if-eqz p4, :cond_4

    .line 593
    const-string v4, "-map"

    invoke-virtual {v0, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v4

    const-string v5, "[a]"

    invoke-virtual {v4, v5}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 595
    :cond_4
    if-eqz p4, :cond_5

    if-nez p3, :cond_5

    .line 596
    const-string v4, "-acodec"

    invoke-virtual {v0, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v4

    const-string v5, "libmp3lame"

    invoke-virtual {v4, v5}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 598
    :cond_5
    const-string v4, "-preset"

    invoke-virtual {v0, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v4

    const-string v5, "superfast"

    invoke-virtual {v4, v5}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 599
    invoke-static {p1}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    .line 600
    .local v2, "d":J
    invoke-direct {p0, v0, v2, v3, p5}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    goto/16 :goto_0
.end method

.method public saveVideo(Landroid/net/Uri;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 4
    .param p1, "Url"    # Landroid/net/Uri;
    .param p2, "outputOption"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;
    .param p3, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 916
    new-instance v0, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 918
    .local v0, "cmd":Lio/microshow/rxffmpeg/CmdList;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .local v1, "filter_complex":Ljava/lang/StringBuilder;
    const-string v2, "ffmpeg"

    invoke-virtual {v0, v2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "-listen_timeout"

    .line 930
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const/16 v3, 0x7d0

    .line 931
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(I)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "-y"

    .line 934
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "-i"

    .line 935
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    .line 936
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 940
    const-string v2, "-vcodec"

    invoke-virtual {v0, v2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "copy"

    .line 944
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "-acodec"

    .line 945
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "copy"

    .line 946
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "-r"

    .line 947
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "25"

    .line 948
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "-f"

    .line 952
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v2

    const-string v3, "mp4"

    .line 953
    invoke-virtual {v2, v3}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 962
    iget-object v2, p2, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 964
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p3}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    .line 965
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 969
    new-instance v0, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 970
    .local v0, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v1, "q"

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 972
    const-wide/16 v2, 0x0

    new-instance v1, Lio/microshow/rxffmpeg/EpEditor$3;

    invoke-direct {v1, p0}, Lio/microshow/rxffmpeg/EpEditor$3;-><init>(Lio/microshow/rxffmpeg/EpEditor;)V

    invoke-direct {p0, v0, v2, v3, v1}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    .line 988
    return-void
.end method

.method public testCmd(Landroid/net/Uri;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 0
    .param p1, "Url"    # Landroid/net/Uri;
    .param p2, "outputOption"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;
    .param p3, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 1027
    return-void
.end method

.method public video2pic(Ljava/lang/String;Ljava/lang/String;IIFLio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 6
    .param p1, "videoin"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "rate"    # F
    .param p6, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 657
    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 658
    :cond_0
    const-string v1, "ffmpeg"

    const-string v4, "width and height must greater than 0"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v1, "width and height must greater than 0"

    invoke-interface {p6, v1}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    .line 673
    :goto_0
    return-void

    .line 662
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p5, v1

    if-gtz v1, :cond_2

    .line 663
    const-string v1, "ffmpeg"

    const-string v4, "rate must greater than 0"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v1, "rate must greater than 0"

    invoke-interface {p6, v1}, Lio/microshow/rxffmpeg/OnEditorListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_2
    new-instance v0, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 668
    .local v0, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-y"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-i"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-r"

    .line 669
    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    invoke-virtual {v1, p5}, Lio/microshow/rxffmpeg/CmdList;->append(F)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-s"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-q:v"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(I)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-f"

    .line 670
    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "image2"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "-preset"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v4, "superfast"

    invoke-virtual {v1, v4}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 671
    invoke-static {p1}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    .line 672
    .local v2, "d":J
    invoke-direct {p0, v0, v2, v3, p6}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    goto/16 :goto_0
.end method

.method public videoTranscod(Ljava/lang/String;Lio/microshow/rxffmpeg/EpEditor$OutputOption;Lio/microshow/rxffmpeg/OnEditorListener;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "outputOption"    # Lio/microshow/rxffmpeg/EpEditor$OutputOption;
    .param p3, "onEditorListener"    # Lio/microshow/rxffmpeg/OnEditorListener;

    .prologue
    .line 713
    invoke-virtual {p0, p3, p1}, Lio/microshow/rxffmpeg/EpEditor;->checkFileIsDamage(Lio/microshow/rxffmpeg/OnEditorListener;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    :goto_0
    return-void

    .line 716
    :cond_0
    new-instance v0, Lio/microshow/rxffmpeg/CmdList;

    invoke-direct {v0}, Lio/microshow/rxffmpeg/CmdList;-><init>()V

    .line 717
    .local v0, "cmd":Lio/microshow/rxffmpeg/CmdList;
    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v2, "-y"

    .line 718
    invoke-virtual {v1, v2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v2, "-i"

    .line 719
    invoke-virtual {v1, v2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    .line 720
    invoke-virtual {v1, p1}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v2, "-max_muxing_queue_size"

    .line 721
    invoke-virtual {v1, v2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    const-string v2, "1024"

    .line 722
    invoke-virtual {v1, v2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    move-result-object v1

    iget-object v2, p2, Lio/microshow/rxffmpeg/EpEditor$OutputOption;->outPath:Ljava/lang/String;

    .line 723
    invoke-virtual {v1, v2}, Lio/microshow/rxffmpeg/CmdList;->append(Ljava/lang/String;)Lio/microshow/rxffmpeg/CmdList;

    .line 724
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p3}, Lio/microshow/rxffmpeg/EpEditor;->execCmd(Lio/microshow/rxffmpeg/CmdList;JLio/microshow/rxffmpeg/OnEditorListener;)V

    goto :goto_0
.end method
