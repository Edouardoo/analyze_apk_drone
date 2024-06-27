.class public Lcom/fh/hdutil/AviThumbUtil;
.super Ljava/lang/Object;
.source "AviThumbUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AviThumbUtil"

.field private static mOnAviThumbListener:Lcom/fh/hdutil/OnAviThumbListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/fh/hdutil/OnAviThumbListener;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/fh/hdutil/AviThumbUtil;->mOnAviThumbListener:Lcom/fh/hdutil/OnAviThumbListener;

    return-object v0
.end method

.method private static dispenseOnCompletedEvent([BLcom/jieli/media/codec/bean/MediaMeta;)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "meta"    # Lcom/jieli/media/codec/bean/MediaMeta;

    .prologue
    .line 23
    new-instance v0, Lcom/fh/hdutil/AviThumbUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/fh/hdutil/AviThumbUtil$1;-><init>([BLcom/jieli/media/codec/bean/MediaMeta;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method private static dispenseOnErrorEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/fh/hdutil/AviThumbUtil$2;

    invoke-direct {v0, p0}, Lcom/fh/hdutil/AviThumbUtil$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public static getLong([BZ)J
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "asc"    # Z

    .prologue
    const/16 v6, 0x8

    .line 156
    if-nez p0, :cond_0

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "byte array is null!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_0
    array-length v1, p0

    if-le v1, v6, :cond_1

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "byte array size > 8 !"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_1
    const-wide/16 v2, 0x0

    .line 163
    .local v2, "r":J
    if-eqz p1, :cond_2

    .line 164
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 165
    shl-long/2addr v2, v6

    .line 166
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 164
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 170
    shl-long/2addr v2, v6

    .line 171
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_3
    return-wide v2
.end method

.method public static getRecordVideoThumb(Ljava/lang/String;Lcom/fh/hdutil/OnAviThumbListener;)V
    .locals 40
    .param p0, "inPath"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/fh/hdutil/OnAviThumbListener;

    .prologue
    .line 45
    sput-object p1, Lcom/fh/hdutil/AviThumbUtil;->mOnAviThumbListener:Lcom/fh/hdutil/OnAviThumbListener;

    .line 46
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 48
    const-string v33, "params is not be empty."

    invoke-static/range {v33 .. v33}, Lcom/fh/hdutil/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const/4 v11, 0x0

    .line 52
    .local v11, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v33, 0x400

    move/from16 v0, v33

    new-array v6, v0, [B

    .line 53
    .local v6, "data":[B
    const v33, 0x4b000

    move/from16 v0, v33

    new-array v14, v0, [B

    .line 54
    .local v14, "headData":[B
    const-wide/16 v20, 0x0

    .line 55
    .local v20, "picSize":J
    const/4 v5, 0x0

    .line 57
    .local v5, "currentSize":I
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 58
    .local v23, "secPerFrame":[B
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v4, v0, [B

    .line 59
    .local v4, "allFrameCount":[B
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v32, v0

    .line 60
    .local v32, "width":[B
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v15, v0, [B

    .line 61
    .local v15, "height":[B
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 66
    .local v25, "thumbSize":[B
    const-wide/16 v8, 0x0

    .line 67
    .local v8, "duration":J
    const/4 v13, -0x1

    .line 68
    .local v13, "firstThumbPos":I
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v22, "recordFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 70
    new-instance v17, Lcom/jieli/media/codec/bean/MediaMeta;

    invoke-direct/range {v17 .. v17}, Lcom/jieli/media/codec/bean/MediaMeta;-><init>()V

    .line 71
    .local v17, "mediaMeta":Lcom/jieli/media/codec/bean/MediaMeta;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/jieli/media/codec/bean/MediaMeta;->setPath(Ljava/lang/String;)V

    .line 73
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .local v12, "fileInputStream":Ljava/io/FileInputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v12, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "dataLength":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v7, v0, :cond_8

    .line 75
    add-int v33, v5, v7

    array-length v0, v14

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_3

    .line 76
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-static {v6, v0, v14, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    :cond_3
    add-int/2addr v5, v7

    .line 79
    array-length v0, v14

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v0, v0, -0x400

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v5, v0, :cond_2

    .line 80
    const/16 v33, 0x7800

    move/from16 v0, v33

    if-lt v5, v0, :cond_c

    .line 81
    const-wide/16 v34, 0x0

    cmp-long v33, v20, v34

    if-nez v33, :cond_c

    .line 82
    const/16 v33, 0x20

    const/16 v34, 0x0

    const/16 v35, 0x4

    move/from16 v0, v33

    move-object/from16 v1, v23

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    const/16 v33, 0x30

    const/16 v34, 0x0

    const/16 v35, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v14, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    const/16 v33, 0x40

    const/16 v34, 0x0

    const/16 v35, 0x4

    move/from16 v0, v33

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    const/16 v33, 0x44

    const/16 v34, 0x0

    const/16 v35, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v14, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-static {v4, v0}, Lcom/fh/hdutil/AviThumbUtil;->getLong([BZ)J

    move-result-wide v26

    .line 88
    .local v26, "totalFrames":J
    const/16 v33, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/fh/hdutil/AviThumbUtil;->getLong([BZ)J

    move-result-wide v18

    .line 89
    .local v18, "microSecPerFrame":J
    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/fh/hdutil/AviThumbUtil;->getLong([BZ)J

    move-result-wide v30

    .line 90
    .local v30, "videoWidth":J
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-static {v15, v0}, Lcom/fh/hdutil/AviThumbUtil;->getLong([BZ)J

    move-result-wide v28

    .line 91
    .local v28, "videoHeight":J
    const-wide/16 v34, 0x0

    cmp-long v33, v18, v34

    if-lez v33, :cond_4

    .line 92
    const-wide/32 v34, 0xf4240

    div-long v34, v34, v18

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-lez v33, :cond_4

    .line 93
    const-wide/32 v34, 0xf4240

    div-long v34, v34, v18

    rem-long v34, v26, v34

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-nez v33, :cond_a

    .line 94
    const-wide/32 v34, 0xf4240

    div-long v34, v34, v18

    div-long v8, v26, v34

    .line 100
    :cond_4
    :goto_1
    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jieli/media/codec/bean/MediaMeta;->setWidth(I)V

    .line 101
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jieli/media/codec/bean/MediaMeta;->setHeight(I)V

    .line 102
    long-to-int v0, v8

    move/from16 v33, v0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jieli/media/codec/bean/MediaMeta;->setDuration(I)V

    .line 104
    const/16 v16, 0x3

    .local v16, "i":I
    :goto_2
    array-length v0, v14

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_5

    .line 105
    add-int/lit8 v33, v16, -0x3

    aget-byte v33, v14, v33

    const/16 v34, 0x30

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    add-int/lit8 v33, v16, -0x2

    aget-byte v33, v14, v33

    const/16 v34, 0x30

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    add-int/lit8 v33, v16, -0x1

    aget-byte v33, v14, v33

    const/16 v34, 0x64

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    aget-byte v33, v14, v16

    const/16 v34, 0x63

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 106
    add-int/lit8 v13, v16, 0x1

    .line 110
    :cond_5
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v0, v13, :cond_6

    .line 111
    const/16 v33, 0x0

    const/16 v34, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v14, v13, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    const/16 v33, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/fh/hdutil/AviThumbUtil;->getLong([BZ)J

    move-result-wide v20

    .line 114
    :cond_6
    const-string v33, "AviThumbUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getRecordVideoThumb firstThumbPos ==> "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v33, "AviThumbUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getRecordVideoThumb thumbSize ==> "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v33, "AviThumbUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getRecordVideoThumb allFrameCount ==> "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v33, "AviThumbUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getRecordVideoThumb secPerFrame ==> "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v33, "AviThumbUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getRecordVideoThumb duration =====> "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v33, "AviThumbUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getRecordVideoThumb width ==> "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v33, "AviThumbUtil"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getRecordVideoThumb height ==> "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-wide/16 v34, 0x0

    cmp-long v33, v20, v34

    if-eqz v33, :cond_7

    const-wide/16 v34, 0x0

    cmp-long v33, v8, v34

    if-nez v33, :cond_c

    .line 122
    :cond_7
    const-string v33, "thumbnail is null."

    invoke-static/range {v33 .. v33}, Lcom/fh/hdutil/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v16    # "i":I
    .end local v18    # "microSecPerFrame":J
    .end local v26    # "totalFrames":J
    .end local v28    # "videoHeight":J
    .end local v30    # "videoWidth":J
    :cond_8
    :goto_3
    if-eqz v12, :cond_9

    .line 145
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_9
    move-object v11, v12

    .line 149
    .end local v12    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 96
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v12    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v18    # "microSecPerFrame":J
    .restart local v26    # "totalFrames":J
    .restart local v28    # "videoHeight":J
    .restart local v30    # "videoWidth":J
    :cond_a
    const-wide/32 v34, 0xf4240

    :try_start_3
    div-long v34, v34, v18

    div-long v34, v26, v34

    const-wide/16 v36, 0x1

    add-long v8, v34, v36

    goto/16 :goto_1

    .line 104
    .restart local v16    # "i":I
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 127
    .end local v16    # "i":I
    .end local v18    # "microSecPerFrame":J
    .end local v26    # "totalFrames":J
    .end local v28    # "videoHeight":J
    .end local v30    # "videoWidth":J
    :cond_c
    const-wide/16 v34, 0x0

    cmp-long v33, v20, v34

    if-lez v33, :cond_2

    int-to-long v0, v5

    move-wide/from16 v34, v0

    int-to-long v0, v13

    move-wide/from16 v36, v0

    add-long v36, v36, v20

    const-wide/16 v38, 0x400

    add-long v36, v36, v38

    cmp-long v33, v34, v36

    if-ltz v33, :cond_2

    .line 128
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 129
    .local v24, "thumbData":[B
    int-to-long v0, v13

    move-wide/from16 v34, v0

    add-long v34, v34, v20

    const-wide/16 v36, 0x4

    add-long v34, v34, v36

    array-length v0, v14

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-gtz v33, :cond_d

    .line 130
    add-int/lit8 v33, v13, 0x4

    const/16 v34, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v33

    move-object/from16 v1, v24

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/fh/hdutil/AviThumbUtil;->dispenseOnCompletedEvent([BLcom/jieli/media/codec/bean/MediaMeta;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 139
    .end local v7    # "dataLength":I
    .end local v24    # "thumbData":[B
    :catch_0
    move-exception v10

    move-object v11, v12

    .line 140
    .end local v12    # "fileInputStream":Ljava/io/FileInputStream;
    .local v10, "e":Ljava/io/IOException;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_4
    :try_start_4
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fh/hdutil/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    if-eqz v11, :cond_0

    .line 145
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 147
    :catch_1
    move-exception v10

    .line 148
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 133
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "dataLength":I
    .restart local v12    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "thumbData":[B
    :cond_d
    :try_start_6
    const-string v33, "thumbnail data is not enough."

    invoke-static/range {v33 .. v33}, Lcom/fh/hdutil/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 143
    .end local v7    # "dataLength":I
    .end local v24    # "thumbData":[B
    :catchall_0
    move-exception v33

    move-object v11, v12

    .line 144
    .end local v12    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v11, :cond_e

    .line 145
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 149
    :cond_e
    :goto_6
    throw v33

    .line 147
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "dataLength":I
    .restart local v12    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .line 148
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object v11, v12

    .line 150
    .end local v12    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 147
    .end local v7    # "dataLength":I
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 148
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 143
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v33

    goto :goto_5

    .line 139
    :catch_4
    move-exception v10

    goto :goto_4
.end method
