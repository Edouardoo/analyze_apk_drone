.class public Lcom/hfufo/widget/AvcDecoder;
.super Ljava/lang/Object;
.source "AvcDecoder.java"


# static fields
.field private static final COLOR_FormatI420:I = 0x1

.field private static final COLOR_FormatNV21:I = 0x2

.field private static final FRAME_MAX_LEN:I = 0x4b000

.field private static final FRAME_MIN_LEN:I = 0x14

.field private static final MAX_FRAME_SIZE:I = 0x28

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final PRE_FRAME_TIME:I = 0x28

.field private static final TAG:Ljava/lang/String; = "MeidaDecodec"


# instance fields
.field BUFFER_OK:I

.field BUFFER_TOO_SMALL:I

.field OUTPUT_UPDATE:I

.field private TIMEOUT_USEC:I

.field private TIME_INTERNAL:I

.field TRY_AGAIN_LATER:I

.field public canStop:Z

.field private final decodeColorFormat:I

.field private final decodeColorFormatF:I

.field private decoderOutputRunning:Z

.field private decoderRunning:Z

.field public failed:Z

.field private frameList:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

.field info:Landroid/media/MediaCodec$BufferInfo;

.field private isFinish:Z

.field private isFirst:Z

.field private mBI:Landroid/media/MediaCodec$BufferInfo;

.field mCount:I

.field private mFormat:Landroid/media/MediaFormat;

.field m_framerate:I

.field maxSize:I

.field private mediaCodec:Landroid/media/MediaCodec;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/hfufo/widget/AvcDecoder;->isFinish:Z

    .line 45
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/hfufo/widget/AvcDecoder;->TIMEOUT_USEC:I

    .line 48
    const/16 v0, 0x13

    iput v0, p0, Lcom/hfufo/widget/AvcDecoder;->decodeColorFormat:I

    .line 49
    const v0, 0x7f420888

    iput v0, p0, Lcom/hfufo/widget/AvcDecoder;->decodeColorFormatF:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/widget/AvcDecoder;->TRY_AGAIN_LATER:I

    .line 53
    iput v1, p0, Lcom/hfufo/widget/AvcDecoder;->BUFFER_OK:I

    .line 54
    iput v2, p0, Lcom/hfufo/widget/AvcDecoder;->BUFFER_TOO_SMALL:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/AvcDecoder;->OUTPUT_UPDATE:I

    .line 58
    const/16 v0, 0x500

    iput v0, p0, Lcom/hfufo/widget/AvcDecoder;->videoWidth:I

    .line 59
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/hfufo/widget/AvcDecoder;->videoHeight:I

    .line 60
    iput v1, p0, Lcom/hfufo/widget/AvcDecoder;->TIME_INTERNAL:I

    .line 66
    iput-boolean v2, p0, Lcom/hfufo/widget/AvcDecoder;->isFirst:Z

    .line 69
    iput v1, p0, Lcom/hfufo/widget/AvcDecoder;->mCount:I

    .line 250
    iput-boolean v1, p0, Lcom/hfufo/widget/AvcDecoder;->canStop:Z

    .line 251
    iput-boolean v2, p0, Lcom/hfufo/widget/AvcDecoder;->failed:Z

    .line 257
    iput-boolean v1, p0, Lcom/hfufo/widget/AvcDecoder;->decoderRunning:Z

    .line 305
    iput-boolean v1, p0, Lcom/hfufo/widget/AvcDecoder;->decoderOutputRunning:Z

    .line 76
    iput p1, p0, Lcom/hfufo/widget/AvcDecoder;->videoWidth:I

    .line 77
    iput p2, p0, Lcom/hfufo/widget/AvcDecoder;->videoHeight:I

    .line 78
    iget v0, p0, Lcom/hfufo/widget/AvcDecoder;->videoWidth:I

    iget v1, p0, Lcom/hfufo/widget/AvcDecoder;->videoHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/widget/AvcDecoder;->maxSize:I

    .line 80
    return-void
.end method

.method private StopDecoder()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 233
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/hfufo/widget/AvcDecoder;->decoderOutputRunning:Z

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hfufo/widget/AvcDecoder;->decoderRunning:Z

    .line 235
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V

    .line 236
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 237
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 239
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hfufo/widget/AvcDecoder;->isFirst:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    iput-object v2, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    goto :goto_0
.end method

.method private static YUV_420_888toNV21(Landroid/media/Image;)[B
    .locals 10
    .param p0, "image"    # Landroid/media/Image;

    .prologue
    const/4 v9, 0x0

    .line 803
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 804
    .local v5, "yBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 805
    .local v1, "uBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 806
    .local v3, "vBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 807
    .local v6, "ySize":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 808
    .local v2, "uSize":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 809
    .local v4, "vSize":I
    add-int v7, v6, v2

    add-int/2addr v7, v4

    new-array v0, v7, [B

    .line 811
    .local v0, "nv21":[B
    invoke-virtual {v5, v0, v9, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 812
    invoke-virtual {v3, v0, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 813
    add-int v7, v6, v4

    invoke-virtual {v1, v0, v7, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 814
    return-object v0
.end method

.method static synthetic access$000(Lcom/hfufo/widget/AvcDecoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcDecoder;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/hfufo/widget/AvcDecoder;->decoderRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/hfufo/widget/AvcDecoder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcDecoder;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/hfufo/widget/AvcDecoder;->decoderRunning:Z

    return p1
.end method

.method static synthetic access$102(Lcom/hfufo/widget/AvcDecoder;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaCodec$BufferInfo;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcDecoder;
    .param p1, "x1"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/hfufo/widget/AvcDecoder;->mBI:Landroid/media/MediaCodec$BufferInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/hfufo/widget/AvcDecoder;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcDecoder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/widget/AvcDecoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcDecoder;

    .prologue
    .line 27
    iget v0, p0, Lcom/hfufo/widget/AvcDecoder;->TIME_INTERNAL:I

    return v0
.end method

.method static synthetic access$400(Lcom/hfufo/widget/AvcDecoder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcDecoder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hfufo/widget/AvcDecoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcDecoder;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/hfufo/widget/AvcDecoder;->StopDecoder()V

    return-void
.end method

.method static synthetic access$600(Lcom/hfufo/widget/AvcDecoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/AvcDecoder;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/hfufo/widget/AvcDecoder;->decoderOutputRunning:Z

    return v0
.end method

.method static synthetic access$602(Lcom/hfufo/widget/AvcDecoder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/AvcDecoder;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/hfufo/widget/AvcDecoder;->decoderOutputRunning:Z

    return p1
.end method

.method private findHead([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "max"    # I

    .prologue
    .line 573
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 575
    invoke-direct {p0, p1, v0}, Lcom/hfufo/widget/AvcDecoder;->isHead([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    :cond_0
    if-ne v0, p3, :cond_1

    .line 580
    const/4 v0, -0x1

    .line 582
    :cond_1
    return v0

    .line 573
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getDataFromImage(Landroid/media/Image;I)[B
    .locals 26
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "colorFormat"    # I

    .prologue
    .line 709
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 710
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 712
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/hfufo/widget/AvcDecoder;->isImageFormatSupported(Landroid/media/Image;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 713
    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "can\'t convert Image to byte array, format "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 715
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 716
    .local v5, "crop":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v7

    .line 718
    .local v7, "format":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 719
    .local v20, "width":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 720
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v14

    .line 721
    .local v14, "planes":[Landroid/media/Image$Plane;
    mul-int v21, v20, v9

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v22

    mul-int v21, v21, v22

    div-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    new-array v6, v0, [B

    .line 722
    .local v6, "data":[B
    const/16 v21, 0x0

    aget-object v21, v14, v21

    invoke-virtual/range {v21 .. v21}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 723
    .local v16, "rowData":[B
    const-string v21, "MeidaDecodec"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "get data from "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    array-length v0, v14

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " planes"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/fh/util/Dbug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v3, 0x0

    .line 726
    .local v3, "channelOffset":I
    const/4 v12, 0x1

    .line 727
    .local v12, "outputStride":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_a

    .line 728
    packed-switch v10, :pswitch_data_0

    .line 752
    :cond_2
    :goto_1
    aget-object v21, v14, v10

    invoke-virtual/range {v21 .. v21}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 753
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    aget-object v21, v14, v10

    invoke-virtual/range {v21 .. v21}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v17

    .line 754
    .local v17, "rowStride":I
    aget-object v21, v14, v10

    invoke-virtual/range {v21 .. v21}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    .line 756
    .local v13, "pixelStride":I
    const-string v21, "MeidaDecodec"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "pixelStride "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/fh/util/Dbug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v21, "MeidaDecodec"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "rowStride "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/fh/util/Dbug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v21, "MeidaDecodec"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "width "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/fh/util/Dbug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v21, "MeidaDecodec"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "height "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/fh/util/Dbug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v21, "MeidaDecodec"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "buffer size "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/fh/util/Dbug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    if-nez v10, :cond_7

    const/16 v18, 0x0

    .line 763
    .local v18, "shift":I
    :goto_2
    shr-int v19, v20, v18

    .line 764
    .local v19, "w":I
    shr-int v8, v9, v18

    .line 765
    .local v8, "h":I
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    shr-int v21, v21, v18

    mul-int v21, v21, v17

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    shr-int v22, v22, v18

    mul-int v22, v22, v13

    add-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 766
    const/4 v15, 0x0

    .local v15, "row":I
    :goto_3
    if-ge v15, v8, :cond_9

    .line 768
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_8

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_8

    .line 769
    move/from16 v11, v19

    .line 770
    .local v11, "length":I
    invoke-virtual {v2, v6, v3, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 771
    add-int/2addr v3, v11

    .line 780
    :cond_3
    add-int/lit8 v21, v8, -0x1

    move/from16 v0, v21

    if-ge v15, v0, :cond_4

    .line 781
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    add-int v21, v21, v17

    sub-int v21, v21, v11

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 766
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 730
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "h":I
    .end local v11    # "length":I
    .end local v13    # "pixelStride":I
    .end local v15    # "row":I
    .end local v17    # "rowStride":I
    .end local v18    # "shift":I
    .end local v19    # "w":I
    :pswitch_0
    const/4 v3, 0x0

    .line 731
    const/4 v12, 0x1

    .line 732
    goto/16 :goto_1

    .line 734
    :pswitch_1
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 735
    mul-int v3, v20, v9

    .line 736
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 737
    :cond_5
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 738
    mul-int v21, v20, v9

    add-int/lit8 v3, v21, 0x1

    .line 739
    const/4 v12, 0x2

    goto/16 :goto_1

    .line 743
    :pswitch_2
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 744
    mul-int v21, v20, v9

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff4000000000000L    # 1.25

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v3, v0

    .line 745
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 746
    :cond_6
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 747
    mul-int v3, v20, v9

    .line 748
    const/4 v12, 0x2

    goto/16 :goto_1

    .line 762
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "pixelStride":I
    .restart local v17    # "rowStride":I
    :cond_7
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 773
    .restart local v8    # "h":I
    .restart local v15    # "row":I
    .restart local v18    # "shift":I
    .restart local v19    # "w":I
    :cond_8
    add-int/lit8 v21, v19, -0x1

    mul-int v21, v21, v13

    add-int/lit8 v11, v21, 0x1

    .line 774
    .restart local v11    # "length":I
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 775
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_4
    move/from16 v0, v19

    if-ge v4, v0, :cond_3

    .line 776
    mul-int v21, v4, v13

    aget-byte v21, v16, v21

    aput-byte v21, v6, v3

    .line 777
    add-int/2addr v3, v12

    .line 775
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 784
    .end local v4    # "col":I
    .end local v11    # "length":I
    :cond_9
    const-string v21, "MeidaDecodec"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Finished reading data from plane "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/fh/util/Dbug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 786
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "h":I
    .end local v13    # "pixelStride":I
    .end local v15    # "row":I
    .end local v17    # "rowStride":I
    .end local v18    # "shift":I
    .end local v19    # "w":I
    :cond_a
    return-object v6

    .line 728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isColorFormatSupported(ILandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 8
    .param p1, "colorFormat"    # I
    .param p2, "caps"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-object v3, p2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 542
    .local v0, "c":I
    const-string v5, "MeidaDecodec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorFormats : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    if-ne v0, p1, :cond_1

    .line 544
    const/4 v1, 0x1

    .line 547
    .end local v0    # "c":I
    :cond_0
    return v1

    .line 540
    .restart local v0    # "c":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isHead([BI)Z
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x1

    .line 597
    const/4 v0, 0x0

    .line 599
    .local v0, "result":Z
    aget-byte v1, p1, p2

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    .line 600
    invoke-direct {p0, v1}, Lcom/hfufo/widget/AvcDecoder;->isVideoFrameHeadType(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    const/4 v0, 0x1

    .line 604
    :cond_0
    aget-byte v1, p1, p2

    if-nez v1, :cond_1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    .line 605
    invoke-direct {p0, v1}, Lcom/hfufo/widget/AvcDecoder;->isVideoFrameHeadType(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    const/4 v0, 0x1

    .line 608
    :cond_1
    return v0
.end method

.method private static isImageFormatSupported(Landroid/media/Image;)Z
    .locals 2
    .param p0, "image"    # Landroid/media/Image;

    .prologue
    .line 698
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 699
    .local v0, "format":I
    sparse-switch v0, :sswitch_data_0

    .line 705
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 703
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 699
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x23 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method private isVideoFrameHeadType(B)Z
    .locals 1
    .param p1, "head"    # B

    .prologue
    .line 615
    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x61

    if-eq p1, v0, :cond_0

    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    const/16 v0, 0x68

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFile(Ljava/lang/String;)V
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const v13, 0x4b000

    .line 633
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 635
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 637
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 639
    .local v2, "fis":Ljava/io/FileInputStream;
    const v10, 0x4b000

    new-array v3, v10, [B

    .line 641
    .local v3, "frame":[B
    const/4 v4, 0x0

    .line 643
    .local v4, "frameLen":I
    const/16 v10, 0x2800

    new-array v7, v10, [B

    .line 645
    .local v7, "readData":[B
    :cond_0
    :goto_0
    iget-boolean v10, p0, Lcom/hfufo/widget/AvcDecoder;->isFinish:Z

    if-nez v10, :cond_4

    .line 646
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v10

    if-lez v10, :cond_3

    .line 647
    invoke-virtual {v2, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 649
    .local v8, "readLen":I
    add-int v10, v4, v8

    if-ge v10, v13, :cond_2

    .line 651
    const/4 v10, 0x0

    invoke-static {v7, v10, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    add-int/2addr v4, v8

    .line 655
    const/4 v10, 0x0

    invoke-direct {p0, v3, v10, v4}, Lcom/hfufo/widget/AvcDecoder;->findHead([BII)I

    move-result v5

    .line 656
    .local v5, "headFirstIndex":I
    :goto_1
    if-ltz v5, :cond_0

    invoke-direct {p0, v3, v5}, Lcom/hfufo/widget/AvcDecoder;->isHead([BI)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 658
    add-int/lit8 v10, v5, 0x14

    invoke-direct {p0, v3, v10, v4}, Lcom/hfufo/widget/AvcDecoder;->findHead([BII)I

    move-result v6

    .line 660
    .local v6, "headSecondIndex":I
    if-lez v6, :cond_1

    invoke-direct {p0, v3, v6}, Lcom/hfufo/widget/AvcDecoder;->isHead([BI)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 663
    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/hfufo/widget/AvcDecoder;->addFrame([B)V

    .line 665
    invoke-static {v3, v6, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 666
    .local v9, "temp":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v9

    invoke-static {v9, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    array-length v4, v9

    .line 670
    const/4 v10, 0x0

    invoke-direct {p0, v3, v10, v4}, Lcom/hfufo/widget/AvcDecoder;->findHead([BII)I

    move-result v5

    .line 671
    goto :goto_1

    .line 673
    .end local v9    # "temp":[B
    :cond_1
    const/4 v5, -0x1

    goto :goto_1

    .line 678
    .end local v5    # "headFirstIndex":I
    .end local v6    # "headSecondIndex":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 682
    .end local v8    # "readLen":I
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/hfufo/widget/AvcDecoder;->isFinish:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "frame":[B
    .end local v4    # "frameLen":I
    .end local v7    # "readData":[B
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void

    .line 689
    :cond_5
    const-string v10, "TAG"

    const-string v11, "File not found"

    invoke-static {v10, v11}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 523
    .local v3, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 524
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 525
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 523
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 530
    aget-object v5, v4, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 535
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :goto_2
    return-object v0

    .line 529
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "j":I
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 535
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static selectTrack(Landroid/media/MediaExtractor;)I
    .locals 7
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    .line 552
    .local v3, "numTracks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 553
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 554
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "mime":Ljava/lang/String;
    const-string v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    const-string v4, "MeidaDecodec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extractor selected track "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v1    # "i":I
    .end local v2    # "mime":Ljava/lang/String;
    :goto_1
    return v1

    .line 552
    .restart local v0    # "format":Landroid/media/MediaFormat;
    .restart local v1    # "i":I
    .restart local v2    # "mime":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private sleepThread(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 622
    const-wide/16 v4, 0x28

    sub-long v6, p3, p1

    sub-long v2, v4, v6

    .line 623
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 625
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private static yuv420spToYuv420P([BII)[B
    .locals 6
    .param p0, "yuv420spData"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 790
    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 791
    .local v3, "yuv420pData":[B
    mul-int v2, p1, p2

    .line 792
    .local v2, "ySize":I
    invoke-static {p0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v4, v2, 0x2

    if-ge v1, v4, :cond_0

    .line 795
    add-int v4, v2, v0

    add-int v5, v2, v1

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 796
    mul-int/lit8 v4, v2, 0x5

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    add-int v5, v2, v1

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v3, v4

    .line 794
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_0
    return-object v3
.end method


# virtual methods
.method public addFrame([B)V
    .locals 2
    .param p1, "frame"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 347
    const-string v0, "MeidaDecodec"

    const-string v1, "\u957f\u5ea6\u591a\u4e8eMAX_FRAME_SIZE"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 349
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public checkCallback()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearFrameList()V
    .locals 2

    .prologue
    .line 355
    const-string v0, "MeidaDecodec"

    const-string v1, "clearFrameList"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 362
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 519
    return-void
.end method

.method public initDecoder(II)Z
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f420888

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    iget-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v4, :cond_0

    .line 96
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->frameList:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_1

    .line 219
    :goto_0
    return v2

    .line 102
    :cond_1
    :try_start_0
    const-string v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    iput p1, p0, Lcom/hfufo/widget/AvcDecoder;->videoWidth:I

    .line 107
    iput p2, p0, Lcom/hfufo/widget/AvcDecoder;->videoHeight:I

    .line 109
    const-string v4, "video/avc"

    iget v5, p0, Lcom/hfufo/widget/AvcDecoder;->videoWidth:I

    iget v6, p0, Lcom/hfufo/widget/AvcDecoder;->videoHeight:I

    invoke-static {v4, v5, v6}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->mFormat:Landroid/media/MediaFormat;

    .line 110
    iget-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->mFormat:Landroid/media/MediaFormat;

    const-string v5, "max-input-size"

    iget v6, p0, Lcom/hfufo/widget/AvcDecoder;->videoWidth:I

    iget v7, p0, Lcom/hfufo/widget/AvcDecoder;->videoHeight:I

    mul-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 111
    iget-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->mFormat:Landroid/media/MediaFormat;

    const-string v5, "frame-rate"

    const/16 v6, 0x1e

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 113
    iget-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v4

    const-string v5, "video/avc"

    invoke-virtual {v4, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    invoke-direct {p0, v8, v4}, Lcom/hfufo/widget/AvcDecoder;->isColorFormatSupported(ILandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->mFormat:Landroid/media/MediaFormat;

    const-string v5, "color-format"

    invoke-virtual {v4, v5, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 117
    :cond_2
    const/4 v1, 0x0

    .line 118
    .local v1, "mediaCodecList":Landroid/media/MediaCodecList;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 119
    new-instance v1, Landroid/media/MediaCodecList;

    .end local v1    # "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 120
    .restart local v1    # "mediaCodecList":Landroid/media/MediaCodecList;
    const-string v4, "MeidaDecodec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaCodecList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v4}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move v2, v3

    .line 123
    goto :goto_0

    .line 103
    .end local v1    # "mediaCodecList":Landroid/media/MediaCodecList;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "mediaCodecList":Landroid/media/MediaCodecList;
    :cond_3
    iget-object v4, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/hfufo/widget/AvcDecoder;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v5, v9, v9, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto/16 :goto_0
.end method

.method public onFrame([BII)Z
    .locals 20
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 371
    .local v18, "start":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x50

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 373
    .local v5, "inputBufferIndex":I
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFrame start index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-ltz v5, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 378
    .local v13, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 379
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/hfufo/widget/AvcDecoder;->TIME_INTERNAL:I

    int-to-long v8, v7

    const/4 v10, 0x0

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 381
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInputFormat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget v4, v0, Lcom/hfufo/widget/AvcDecoder;->mCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/hfufo/widget/AvcDecoder;->mCount:I

    .line 388
    .end local v13    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 389
    .local v12, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v8, 0xa

    invoke-virtual {v4, v12, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v14

    .line 390
    .local v14, "outputBufferIndex":I
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFrame start outputBufferIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    if-ltz v14, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v14}, Landroid/media/MediaCodec;->getOutputFormat(I)Landroid/media/MediaFormat;

    move-result-object v15

    .line 403
    .local v15, "outputFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v14}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object v16

    .line 404
    .local v16, "outputImage":Landroid/media/Image;
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8017\u65f6 1\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 406
    new-instance v6, Landroid/graphics/YuvImage;

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/hfufo/widget/AvcDecoder;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object v7

    const/16 v8, 0x11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/hfufo/widget/AvcDecoder;->videoWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hfufo/widget/AvcDecoder;->videoHeight:I

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 408
    .local v6, "mYuvImage":Landroid/graphics/YuvImage;
    invoke-virtual {v6}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v17

    .line 409
    .local v17, "yuvBytes":[B
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8017\u65f6 2\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 415
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOutputFormat toString : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOutputFormat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "color-format"

    invoke-virtual {v15, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImageFormat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->getFormat()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getYuvFormat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcDecoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    if-eqz v4, :cond_1

    invoke-virtual {v6}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v4

    const/16 v7, 0x11

    if-ne v4, v7, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcDecoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/hfufo/widget/AvcEncoder$H264CallBack;->onFrame([B)V

    .line 453
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v4, v14, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 455
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFrame start outputBufferIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .end local v6    # "mYuvImage":Landroid/graphics/YuvImage;
    .end local v15    # "outputFormat":Landroid/media/MediaFormat;
    .end local v16    # "outputImage":Landroid/media/Image;
    .end local v17    # "yuvBytes":[B
    :cond_2
    const-string v4, "MeidaDecodec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8017\u65f6 3\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v4, 0x1

    return v4
.end method

.method public output()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 477
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/hfufo/widget/AvcDecoder;->mBI:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 478
    .local v6, "index":I
    if-ltz v6, :cond_3

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 480
    .local v10, "start":J
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v6}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object v9

    .line 482
    .local v9, "outputImage":Landroid/media/Image;
    new-instance v0, Landroid/graphics/YuvImage;

    const/4 v1, 0x2

    invoke-static {v9, v1}, Lcom/hfufo/widget/AvcDecoder;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object v1

    const/16 v2, 0x11

    iget v3, p0, Lcom/hfufo/widget/AvcDecoder;->videoWidth:I

    iget v4, p0, Lcom/hfufo/widget/AvcDecoder;->videoHeight:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 485
    .local v0, "mYuvImage":Landroid/graphics/YuvImage;
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 486
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/hfufo/widget/AvcEncoder$H264CallBack;->onFrame([B)V

    .line 487
    :cond_0
    const-string v1, "MeidaDecodec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8017\u65f6 onFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 500
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/hfufo/widget/AvcDecoder;->mBI:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    .line 501
    .local v7, "index_":I
    if-ltz v7, :cond_1

    .line 503
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 505
    :cond_1
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/hfufo/widget/AvcDecoder;->mBI:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    .line 506
    .local v8, "index_1":I
    if-ltz v8, :cond_2

    .line 508
    iget-object v1, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 514
    :cond_2
    iget v1, p0, Lcom/hfufo/widget/AvcDecoder;->BUFFER_OK:I

    .end local v0    # "mYuvImage":Landroid/graphics/YuvImage;
    .end local v7    # "index_":I
    .end local v8    # "index_1":I
    .end local v9    # "outputImage":Landroid/media/Image;
    .end local v10    # "start":J
    :goto_0
    return v1

    .line 512
    :cond_3
    iget v1, p0, Lcom/hfufo/widget/AvcDecoder;->TRY_AGAIN_LATER:I

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public setH264CallBack(Lcom/hfufo/widget/AvcEncoder$H264CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/hfufo/widget/AvcDecoder;->h264CallBack:Lcom/hfufo/widget/AvcEncoder$H264CallBack;

    .line 92
    return-void
.end method

.method public startDecoderThread()V
    .locals 2

    .prologue
    .line 260
    iget-boolean v1, p0, Lcom/hfufo/widget/AvcDecoder;->decoderRunning:Z

    if-eqz v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/widget/AvcDecoder$1;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/AvcDecoder$1;-><init>(Lcom/hfufo/widget/AvcDecoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 302
    .local v0, "decoderThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public startMediaCodec()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/hfufo/widget/AvcDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 225
    invoke-virtual {p0}, Lcom/hfufo/widget/AvcDecoder;->startDecoderThread()V

    .line 226
    invoke-virtual {p0}, Lcom/hfufo/widget/AvcDecoder;->startOutputThread()V

    .line 228
    return-void
.end method

.method public startOutputThread()V
    .locals 2

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/hfufo/widget/AvcDecoder;->decoderOutputRunning:Z

    if-eqz v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/widget/AvcDecoder$2;

    invoke-direct {v1, p0}, Lcom/hfufo/widget/AvcDecoder$2;-><init>(Lcom/hfufo/widget/AvcDecoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 334
    .local v0, "outputThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopDecode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/hfufo/widget/AvcDecoder;->decoderOutputRunning:Z

    .line 339
    iput-boolean v0, p0, Lcom/hfufo/widget/AvcDecoder;->decoderRunning:Z

    .line 340
    return-void
.end method
