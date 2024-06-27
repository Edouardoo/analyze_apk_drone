.class public Lcom/hfufo/widget/AvcEncoder;
.super Ljava/lang/Object;
.source "AvcEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/AvcEncoder$H264CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MeidaCodec"

.field private static path:Ljava/lang/String;


# instance fields
.field public BYTEQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field public MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation
.end field

.field private TIMEOUT_USEC:I

.field public cByteQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field public canStop:Z

.field public configbyte:[B

.field count:I

.field private enColor:Z

.field public encodecRuning:Z

.field public failed:Z

.field firstRun:Z

.field generateIndex:J

.field private h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

.field info:Landroid/media/MediaCodec$BufferInfo;

.field private isDoubleS:Z

.field isJPEG:Z

.field private isThree:Z

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field mVideoTrackIndex:I

.field m_framerate:I

.field m_height:I

.field m_info:[B

.field m_width:I

.field maxSize:I

.field private mediaCodec:Landroid/media/MediaCodec;

.field nLenU:I

.field nLenY:I

.field private nvRunning:Z

.field private outPath:Ljava/lang/String;

.field outStream:Ljava/io/FileOutputStream;

.field private outputStream:Ljava/io/BufferedOutputStream;

.field pts:J

.field save:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/test1.h264"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hfufo/widget/AvcEncoder;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I
    .param p4, "bitrate"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->BYTEQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->cByteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 39
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/hfufo/widget/AvcEncoder;->TIMEOUT_USEC:I

    .line 46
    iput-object v4, p0, Lcom/hfufo/widget/AvcEncoder;->m_info:[B

    .line 48
    iput-boolean v2, p0, Lcom/hfufo/widget/AvcEncoder;->isDoubleS:Z

    .line 49
    iput-boolean v2, p0, Lcom/hfufo/widget/AvcEncoder;->isThree:Z

    .line 51
    iput-object v4, p0, Lcom/hfufo/widget/AvcEncoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/widget/AvcEncoder;->mVideoTrackIndex:I

    .line 55
    iput-boolean v2, p0, Lcom/hfufo/widget/AvcEncoder;->save:Z

    .line 57
    iput-boolean v3, p0, Lcom/hfufo/widget/AvcEncoder;->firstRun:Z

    .line 58
    iput-boolean v3, p0, Lcom/hfufo/widget/AvcEncoder;->isJPEG:Z

    .line 146
    iput-boolean v2, p0, Lcom/hfufo/widget/AvcEncoder;->encodecRuning:Z

    .line 147
    iput-boolean v2, p0, Lcom/hfufo/widget/AvcEncoder;->canStop:Z

    .line 148
    iput-boolean v3, p0, Lcom/hfufo/widget/AvcEncoder;->failed:Z

    .line 186
    iput-boolean v2, p0, Lcom/hfufo/widget/AvcEncoder;->nvRunning:Z

    .line 222
    iput-boolean v2, p0, Lcom/hfufo/widget/AvcEncoder;->enColor:Z

    .line 263
    iput v2, p0, Lcom/hfufo/widget/AvcEncoder;->count:I

    .line 264
    iput-wide v6, p0, Lcom/hfufo/widget/AvcEncoder;->pts:J

    .line 265
    iput-wide v6, p0, Lcom/hfufo/widget/AvcEncoder;->generateIndex:J

    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->outPath:Ljava/lang/String;

    .line 65
    iput p1, p0, Lcom/hfufo/widget/AvcEncoder;->m_width:I

    .line 66
    iput p2, p0, Lcom/hfufo/widget/AvcEncoder;->m_height:I

    .line 67
    iget v0, p0, Lcom/hfufo/widget/AvcEncoder;->m_width:I

    iget v1, p0, Lcom/hfufo/widget/AvcEncoder;->m_height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/AvcEncoder;->maxSize:I

    .line 68
    mul-int v0, p1, p2

    iput v0, p0, Lcom/hfufo/widget/AvcEncoder;->nLenY:I

    .line 69
    iget v0, p0, Lcom/hfufo/widget/AvcEncoder;->nLenY:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/hfufo/widget/AvcEncoder;->nLenU:I

    .line 70
    iput p3, p0, Lcom/hfufo/widget/AvcEncoder;->m_framerate:I

    .line 71
    invoke-virtual {p0}, Lcom/hfufo/widget/AvcEncoder;->initMediaCodec()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :cond_0
    return-void
.end method

.method private NV21ToNV12([B[BII)V
    .locals 5
    .param p1, "nv21"    # [B
    .param p2, "nv12"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 366
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 380
    :cond_0
    return-void

    .line 368
    :cond_1
    mul-int v0, p3, p4

    .line 369
    .local v0, "framesize":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .line 370
    .local v2, "j":I
    invoke-static {p1, v3, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 372
    aget-byte v3, p1, v1

    aput-byte v3, p2, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_2
    const/4 v2, 0x0

    :goto_1
    div-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_3

    .line 375
    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    add-int v4, v2, v0

    aget-byte v4, p1, v4

    aput-byte v4, p2, v3

    .line 374
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 377
    :cond_3
    const/4 v2, 0x0

    :goto_2
    div-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_0

    .line 378
    add-int v3, v0, v2

    add-int v4, v2, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    aput-byte v4, p2, v3

    .line 377
    add-int/lit8 v2, v2, 0x2

    goto :goto_2
.end method

.method private StopEncoder()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 137
    iget-object v1, p0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private YV12ToNV12([B[BII)V
    .locals 4
    .param p1, "yv12"    # [B
    .param p2, "nv12"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 388
    iget v1, p0, Lcom/hfufo/widget/AvcEncoder;->nLenY:I

    invoke-static {p1, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/hfufo/widget/AvcEncoder;->nLenU:I

    if-ge v0, v1, :cond_0

    .line 391
    iget v1, p0, Lcom/hfufo/widget/AvcEncoder;->nLenY:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/hfufo/widget/AvcEncoder;->nLenY:I

    add-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p2, v1

    .line 392
    iget v1, p0, Lcom/hfufo/widget/AvcEncoder;->nLenY:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/hfufo/widget/AvcEncoder;->nLenY:I

    iget v3, p0, Lcom/hfufo/widget/AvcEncoder;->nLenU:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p2, v1

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/AvcEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->nvRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/hfufo/widget/AvcEncoder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/hfufo/widget/AvcEncoder;->nvRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/hfufo/widget/AvcEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->enColor:Z

    return v0
.end method

.method static synthetic access$102(Lcom/hfufo/widget/AvcEncoder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/hfufo/widget/AvcEncoder;->enColor:Z

    return p1
.end method

.method static synthetic access$200(Lcom/hfufo/widget/AvcEncoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hfufo/widget/AvcEncoder;->deinitMediaMuxer()V

    return-void
.end method

.method static synthetic access$300(Lcom/hfufo/widget/AvcEncoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hfufo/widget/AvcEncoder;->StopEncoder()V

    return-void
.end method

.method static synthetic access$400(Lcom/hfufo/widget/AvcEncoder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->outPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hfufo/widget/AvcEncoder;)Lcom/hfufo/widget/AvcEncoder$H264CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hfufo/widget/AvcEncoder;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;
    .param p1, "x1"    # [B

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/hfufo/widget/AvcEncoder;->proccess([B)V

    return-void
.end method

.method static synthetic access$700(Lcom/hfufo/widget/AvcEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->isDoubleS:Z

    return v0
.end method

.method static synthetic access$702(Lcom/hfufo/widget/AvcEncoder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/hfufo/widget/AvcEncoder;->isDoubleS:Z

    return p1
.end method

.method static synthetic access$800(Lcom/hfufo/widget/AvcEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->isThree:Z

    return v0
.end method

.method static synthetic access$802(Lcom/hfufo/widget/AvcEncoder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcEncoder;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/hfufo/widget/AvcEncoder;->isThree:Z

    return p1
.end method

.method private computePresentationTime(J)J
    .locals 7
    .param p1, "frameIndex"    # J

    .prologue
    .line 451
    const-wide/16 v0, 0x84

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v4, p0, Lcom/hfufo/widget/AvcEncoder;->m_framerate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private createfile()V
    .locals 4

    .prologue
    .line 122
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/hfufo/widget/AvcEncoder;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 127
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/hfufo/widget/AvcEncoder;->outputStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private deinitMediaMuxer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 430
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 431
    iput-object v1, p0, Lcom/hfufo/widget/AvcEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 432
    iput-object v1, p0, Lcom/hfufo/widget/AvcEncoder;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->firstRun:Z

    .line 435
    :cond_0
    return-void
.end method

.method private initMediaMuxer(I)V
    .locals 6
    .param p1, "outputBufferIndex"    # I

    .prologue
    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getRecordMp4Name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/widget/AvcEncoder;->outPath:Ljava/lang/String;

    .line 400
    :try_start_0
    new-instance v2, Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/hfufo/widget/AvcEncoder;->outPath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/hfufo/widget/AvcEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    iget-object v2, p0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 406
    .local v1, "mediaFormat":Landroid/media/MediaFormat;
    const-string v2, "max-input-size"

    iget v3, p0, Lcom/hfufo/widget/AvcEncoder;->m_width:I

    iget v4, p0, Lcom/hfufo/widget/AvcEncoder;->m_height:I

    mul-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 407
    iget-object v2, p0, Lcom/hfufo/widget/AvcEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, p0, Lcom/hfufo/widget/AvcEncoder;->mVideoTrackIndex:I

    .line 408
    iget-object v2, p0, Lcom/hfufo/widget/AvcEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    .line 410
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, p0, Lcom/hfufo/widget/AvcEncoder;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 411
    iget-object v2, p0, Lcom/hfufo/widget/AvcEncoder;->info:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 426
    return-void

    .line 401
    .end local v1    # "mediaFormat":Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private proccess([B)V
    .locals 20
    .param p1, "input"    # [B

    .prologue
    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 474
    .local v18, "start":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 475
    .local v11, "inputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 476
    .local v16, "outputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2af8

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 477
    .local v3, "inputBufferIndex":I
    if-ltz v3, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hfufo/widget/AvcEncoder;->generateIndex:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/hfufo/widget/AvcEncoder;->computePresentationTime(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/hfufo/widget/AvcEncoder;->pts:J

    .line 479
    aget-object v10, v11, v3

    .line 480
    .local v10, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 481
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/hfufo/widget/AvcEncoder;->pts:J

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 483
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hfufo/widget/AvcEncoder;->generateIndex:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/hfufo/widget/AvcEncoder;->generateIndex:J

    .line 486
    .end local v10    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 487
    .local v9, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/hfufo/widget/AvcEncoder;->TIMEOUT_USEC:I

    int-to-long v4, v4

    invoke-virtual {v2, v9, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v15

    .line 490
    .local v15, "outputBufferIndex":I
    :goto_0
    if-ltz v15, :cond_8

    .line 492
    aget-object v14, v16, v15

    .line 493
    .local v14, "outputBuffer":Ljava/nio/ByteBuffer;
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v13, v2, [B

    .line 494
    .local v13, "outData":[B
    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 495
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 496
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/AvcEncoder;->isJPEG:Z

    if-nez v2, :cond_1

    .line 497
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->configbyte:[B

    .line 498
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/hfufo/widget/AvcEncoder;->configbyte:[B

    .line 526
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/AvcEncoder;->firstRun:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/AvcEncoder;->isJPEG:Z

    if-eqz v2, :cond_2

    .line 527
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/hfufo/widget/AvcEncoder;->firstRun:Z

    .line 528
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/hfufo/widget/AvcEncoder;->initMediaMuxer(I)V

    .line 531
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/AvcEncoder;->isJPEG:Z

    if-eqz v2, :cond_3

    .line 532
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/hfufo/widget/AvcEncoder;->saveData(Ljava/nio/ByteBuffer;I)V

    .line 536
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v15, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/hfufo/widget/AvcEncoder;->TIMEOUT_USEC:I

    int-to-long v4, v4

    invoke-virtual {v2, v9, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v15

    .line 538
    goto :goto_0

    .line 504
    :cond_4
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 505
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/AvcEncoder;->isJPEG:Z

    if-nez v2, :cond_5

    .line 506
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcEncoder;->configbyte:[B

    array-length v4, v4

    add-int/2addr v2, v4

    new-array v12, v2, [B

    .line 507
    .local v12, "keyframe":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->configbyte:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hfufo/widget/AvcEncoder;->configbyte:[B

    array-length v6, v6

    invoke-static {v2, v4, v12, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcEncoder;->configbyte:[B

    array-length v4, v4

    array-length v5, v13

    invoke-static {v13, v2, v12, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    invoke-interface {v2, v12}, Lcom/hfufo/widget/AvcEncoder$H264CallBack;->onFrame([B)V

    .line 514
    .end local v12    # "keyframe":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    invoke-interface {v2}, Lcom/hfufo/widget/AvcEncoder$H264CallBack;->onRate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 540
    .end local v3    # "inputBufferIndex":I
    .end local v9    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v11    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .end local v13    # "outData":[B
    .end local v14    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "outputBufferIndex":I
    .end local v16    # "outputBuffers":[Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v17

    .line 541
    .local v17, "t":Ljava/lang/Throwable;
    const-string v2, "dgptime"

    const-string v4, "t.printStackTrace"

    invoke-static {v2, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    .line 544
    .end local v17    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 518
    .restart local v3    # "inputBufferIndex":I
    .restart local v9    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v11    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v13    # "outData":[B
    .restart local v14    # "outputBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "outputBufferIndex":I
    .restart local v16    # "outputBuffers":[Ljava/nio/ByteBuffer;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hfufo/widget/AvcEncoder;->isJPEG:Z

    if-nez v2, :cond_7

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    invoke-interface {v2, v13}, Lcom/hfufo/widget/AvcEncoder$H264CallBack;->onFrame([B)V

    .line 522
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hfufo/widget/AvcEncoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    invoke-interface {v2}, Lcom/hfufo/widget/AvcEncoder$H264CallBack;->onRate()V

    goto/16 :goto_1

    .line 539
    .end local v13    # "outData":[B
    .end local v14    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_8
    const-string v2, "dgptime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4fdd\u5b58\u8017\u65f6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveData(Ljava/nio/ByteBuffer;I)V
    .locals 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 441
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iput p2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 442
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v1, 0x1

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 443
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const v1, 0xf4240

    iget v4, p0, Lcom/hfufo/widget/AvcEncoder;->m_framerate:I

    div-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 444
    iget-object v0, p0, Lcom/hfufo/widget/AvcEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/hfufo/widget/AvcEncoder;->mVideoTrackIndex:I

    iget-object v2, p0, Lcom/hfufo/widget/AvcEncoder;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 445
    return-void
.end method

.method private static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 555
    .local v3, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 556
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 557
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 555
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 562
    aget-object v5, v4, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 567
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :goto_2
    return-object v0

    .line 561
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "j":I
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 567
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public StartEncoderThread()V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/widget/AvcEncoder$3;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/AvcEncoder$3;-><init>(Lcom/hfufo/widget/AvcEncoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 361
    .local v0, "EncoderThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 363
    return-void
.end method

.method public StartEncoderThread_()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/widget/AvcEncoder$2;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/AvcEncoder$2;-><init>(Lcom/hfufo/widget/AvcEncoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 261
    .local v0, "colorThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method

.method public StartEncoderThread__()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/widget/AvcEncoder$1;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/AvcEncoder$1;-><init>(Lcom/hfufo/widget/AvcEncoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 219
    .local v0, "nvThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 220
    return-void
.end method

.method public StartThread()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-boolean v1, p0, Lcom/hfufo/widget/AvcEncoder;->encodecRuning:Z

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/widget/AvcEncoder;->initMediaCodec()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/hfufo/widget/AvcEncoder;->StartEncoderThread_()V

    .line 165
    invoke-virtual {p0}, Lcom/hfufo/widget/AvcEncoder;->StartEncoderThread__()V

    .line 166
    invoke-virtual {p0}, Lcom/hfufo/widget/AvcEncoder;->StartEncoderThread()V

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public StopThread()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->canStop:Z

    .line 184
    return-void
.end method

.method public initMediaCodec()Z
    .locals 8

    .prologue
    const/16 v7, 0x15

    const/4 v3, 0x1

    .line 77
    const-string v4, "MeidaCodec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initMediaCodec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/hfufo/widget/AvcEncoder;->m_width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/hfufo/widget/AvcEncoder;->m_height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v4, "video/avc"

    iget v5, p0, Lcom/hfufo/widget/AvcEncoder;->m_width:I

    iget v6, p0, Lcom/hfufo/widget/AvcEncoder;->m_height:I

    invoke-static {v4, v5, v6}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 81
    .local v2, "mediaFormat":Landroid/media/MediaFormat;
    const-string v4, "color-format"

    invoke-virtual {v2, v4, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 83
    const-string v4, "bitrate"

    iget v5, p0, Lcom/hfufo/widget/AvcEncoder;->m_width:I

    iget v6, p0, Lcom/hfufo/widget/AvcEncoder;->m_height:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 84
    const-string v4, "frame-rate"

    iget v5, p0, Lcom/hfufo/widget/AvcEncoder;->m_framerate:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 85
    const-string v4, "i-frame-interval"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 86
    const-string v4, "bitrate-mode"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 88
    const-string v4, "max-input-size"

    iget v5, p0, Lcom/hfufo/widget/AvcEncoder;->m_width:I

    iget v6, p0, Lcom/hfufo/widget/AvcEncoder;->m_height:I

    mul-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 89
    const-string v4, "height"

    iget v5, p0, Lcom/hfufo/widget/AvcEncoder;->m_height:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 90
    const-string v4, "width"

    iget v5, p0, Lcom/hfufo/widget/AvcEncoder;->m_width:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "mediaCodecList":Landroid/media/MediaCodecList;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_0

    .line 98
    new-instance v1, Landroid/media/MediaCodecList;

    .end local v1    # "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-direct {v1, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 99
    .restart local v1    # "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-virtual {v1, v2}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 101
    const/4 v3, 0x0

    .line 113
    :goto_0
    return v3

    .line 105
    :cond_0
    :try_start_0
    const-string v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 106
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    iget-object v4, p0, Lcom/hfufo/widget/AvcEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->enColor:Z

    .line 152
    iput-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->nvRunning:Z

    .line 153
    iput-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->encodecRuning:Z

    .line 154
    return-void
.end method

.method public setDoubles()V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->isDoubleS:Z

    .line 548
    return-void
.end method

.method public setH264CallBack(Lcom/hfufo/widget/AvcEncoder$H264CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/hfufo/widget/AvcEncoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    .line 456
    return-void
.end method

.method public setJpeg(Z)V
    .locals 0
    .param p1, "is"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/hfufo/widget/AvcEncoder;->isJPEG:Z

    .line 469
    return-void
.end method

.method public setThree()V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/AvcEncoder;->isThree:Z

    .line 551
    return-void
.end method
