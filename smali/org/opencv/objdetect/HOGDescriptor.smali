.class public Lorg/opencv/objdetect/HOGDescriptor;
.super Ljava/lang/Object;
.source "HOGDescriptor.java"


# static fields
.field public static final DEFAULT_NLEVELS:I = 0x40

.field public static final L2Hys:I


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_3()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 77
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_2(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;I)V
    .locals 19
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p3

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p4

    iget-wide v14, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v0

    move/from16 v18, p5

    invoke-static/range {v2 .. v18}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_1(DDDDDDDDI)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;IIDIDZIZ)V
    .locals 28
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I
    .param p6, "_derivAperture"    # I
    .param p7, "_winSigma"    # D
    .param p9, "_histogramNormType"    # I
    .param p10, "_L2HysThreshold"    # D
    .param p12, "_gammaCorrection"    # Z
    .param p13, "_nlevels"    # I
    .param p14, "_signedGradient"    # Z

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p3

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p4

    iget-wide v14, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v0

    move/from16 v18, p5

    move/from16 v19, p6

    move-wide/from16 v20, p7

    move/from16 v22, p9

    move-wide/from16 v23, p10

    move/from16 v25, p12

    move/from16 v26, p13

    move/from16 v27, p14

    invoke-static/range {v2 .. v27}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_0(DDDDDDDDIIDIDZIZ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 40
    return-void
.end method

.method private static native HOGDescriptor_0(DDDDDDDDIIDIDZIZ)J
.end method

.method private static native HOGDescriptor_1(DDDDDDDDI)J
.end method

.method private static native HOGDescriptor_2(Ljava/lang/String;)J
.end method

.method private static native HOGDescriptor_3()J
.end method

.method private static native checkDetectorSize_0(J)Z
.end method

.method private static native computeGradient_0(JJJJDDDD)V
.end method

.method private static native computeGradient_1(JJJJ)V
.end method

.method private static native compute_0(JJJDDDDJ)V
.end method

.method private static native compute_1(JJJ)V
.end method

.method private static native delete(J)V
.end method

.method private static native detectMultiScale_0(JJJJDDDDDDDZ)V
.end method

.method private static native detectMultiScale_1(JJJJ)V
.end method

.method private static native detect_0(JJJJDDDDDJ)V
.end method

.method private static native detect_1(JJJJ)V
.end method

.method public static getDaimlerPeopleDetector()Lorg/opencv/core/MatOfFloat;
    .locals 4

    .prologue
    .line 154
    invoke-static {}, Lorg/opencv/objdetect/HOGDescriptor;->getDaimlerPeopleDetector_0()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/opencv/core/MatOfFloat;->fromNativeAddr(J)Lorg/opencv/core/MatOfFloat;

    move-result-object v0

    .line 156
    .local v0, "retVal":Lorg/opencv/core/MatOfFloat;
    return-object v0
.end method

.method private static native getDaimlerPeopleDetector_0()J
.end method

.method public static getDefaultPeopleDetector()Lorg/opencv/core/MatOfFloat;
    .locals 4

    .prologue
    .line 168
    invoke-static {}, Lorg/opencv/objdetect/HOGDescriptor;->getDefaultPeopleDetector_0()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/opencv/core/MatOfFloat;->fromNativeAddr(J)Lorg/opencv/core/MatOfFloat;

    move-result-object v0

    .line 170
    .local v0, "retVal":Lorg/opencv/core/MatOfFloat;
    return-object v0
.end method

.method private static native getDefaultPeopleDetector_0()J
.end method

.method private static native getDescriptorSize_0(J)J
.end method

.method private static native getWinSigma_0(J)D
.end method

.method private static native get_L2HysThreshold_0(J)D
.end method

.method private static native get_blockSize_0(J)[D
.end method

.method private static native get_blockStride_0(J)[D
.end method

.method private static native get_cellSize_0(J)[D
.end method

.method private static native get_derivAperture_0(J)I
.end method

.method private static native get_gammaCorrection_0(J)Z
.end method

.method private static native get_histogramNormType_0(J)I
.end method

.method private static native get_nbins_0(J)I
.end method

.method private static native get_nlevels_0(J)I
.end method

.method private static native get_signedGradient_0(J)Z
.end method

.method private static native get_svmDetector_0(J)J
.end method

.method private static native get_winSigma_0(J)D
.end method

.method private static native get_winSize_0(J)[D
.end method

.method private static native load_0(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native load_1(JLjava/lang/String;)Z
.end method

.method private static native save_0(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native save_1(JLjava/lang/String;)V
.end method

.method private static native setSVMDetector_0(JJ)V
.end method


# virtual methods
.method public checkDetectorSize()Z
    .locals 4

    .prologue
    .line 89
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->checkDetectorSize_0(J)Z

    move-result v0

    .line 91
    .local v0, "retVal":Z
    return v0
.end method

.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfFloat;)V
    .locals 7
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "descriptors"    # Lorg/opencv/core/MatOfFloat;

    .prologue
    .line 191
    move-object v6, p2

    .line 192
    .local v6, "descriptors_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v6, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/HOGDescriptor;->compute_1(JJJ)V

    .line 194
    return-void
.end method

.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint;)V
    .locals 20
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "descriptors"    # Lorg/opencv/core/MatOfFloat;
    .param p3, "winStride"    # Lorg/opencv/core/Size;
    .param p4, "padding"    # Lorg/opencv/core/Size;
    .param p5, "locations"    # Lorg/opencv/core/MatOfPoint;

    .prologue
    .line 181
    move-object/from16 v18, p2

    .line 182
    .local v18, "descriptors_mat":Lorg/opencv/core/Mat;
    move-object/from16 v19, p5

    .line 183
    .local v19, "locations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v18

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p4

    iget-wide v14, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    invoke-static/range {v2 .. v17}, Lorg/opencv/objdetect/HOGDescriptor;->compute_0(JJJDDDDJ)V

    .line 185
    return-void
.end method

.method public computeGradient(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "grad"    # Lorg/opencv/core/Mat;
    .param p3, "angleOfs"    # Lorg/opencv/core/Mat;

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/HOGDescriptor;->computeGradient_1(JJJJ)V

    .line 217
    return-void
.end method

.method public computeGradient(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 18
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "grad"    # Lorg/opencv/core/Mat;
    .param p3, "angleOfs"    # Lorg/opencv/core/Mat;
    .param p4, "paddingTL"    # Lorg/opencv/core/Size;
    .param p5, "paddingBR"    # Lorg/opencv/core/Size;

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v0

    invoke-static/range {v2 .. v17}, Lorg/opencv/objdetect/HOGDescriptor;->computeGradient_0(JJJJDDDD)V

    .line 208
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint;Lorg/opencv/core/MatOfDouble;)V
    .locals 10
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfPoint;
    .param p3, "weights"    # Lorg/opencv/core/MatOfDouble;

    .prologue
    .line 239
    move-object v8, p2

    .line 240
    .local v8, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object v9, p3

    .line 241
    .local v9, "weights_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v9, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/HOGDescriptor;->detect_1(JJJJ)V

    .line 243
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint;)V
    .locals 26
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfPoint;
    .param p3, "weights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;
    .param p7, "padding"    # Lorg/opencv/core/Size;
    .param p8, "searchLocations"    # Lorg/opencv/core/MatOfPoint;

    .prologue
    .line 228
    move-object/from16 v22, p2

    .line 229
    .local v22, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v24, p3

    .line 230
    .local v24, "weights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v23, p8

    .line 231
    .local v23, "searchLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v22

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v24

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-wide/from16 v10, p4

    invoke-static/range {v2 .. v21}, Lorg/opencv/objdetect/HOGDescriptor;->detect_0(JJJJDDDDDJ)V

    .line 233
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfDouble;)V
    .locals 10
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfRect;
    .param p3, "foundWeights"    # Lorg/opencv/core/MatOfDouble;

    .prologue
    .line 264
    move-object v8, p2

    .line 265
    .local v8, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object v9, p3

    .line 266
    .local v9, "foundWeights_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v9, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/HOGDescriptor;->detectMultiScale_1(JJJJ)V

    .line 268
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;Lorg/opencv/core/Size;DDZ)V
    .locals 28
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfRect;
    .param p3, "foundWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;
    .param p7, "padding"    # Lorg/opencv/core/Size;
    .param p8, "scale"    # D
    .param p10, "finalThreshold"    # D
    .param p12, "useMeanshiftGrouping"    # Z

    .prologue
    .line 254
    move-object/from16 v25, p2

    .line 255
    .local v25, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v26, p3

    .line 256
    .local v26, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v25

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-wide/from16 v10, p4

    move-wide/from16 v20, p8

    move-wide/from16 v22, p10

    move/from16 v24, p12

    invoke-static/range {v2 .. v24}, Lorg/opencv/objdetect/HOGDescriptor;->detectMultiScale_0(JJJJDDDDDDDZ)V

    .line 258
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 493
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->delete(J)V

    .line 494
    return-void
.end method

.method public getDescriptorSize()J
    .locals 4

    .prologue
    .line 140
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->getDescriptorSize_0(J)J

    move-result-wide v0

    .line 142
    .local v0, "retVal":J
    return-wide v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    return-wide v0
.end method

.method public getWinSigma()D
    .locals 4

    .prologue
    .line 126
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->getWinSigma_0(J)D

    move-result-wide v0

    .line 128
    .local v0, "retVal":D
    return-wide v0
.end method

.method public get_L2HysThreshold()D
    .locals 4

    .prologue
    .line 429
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_L2HysThreshold_0(J)D

    move-result-wide v0

    .line 431
    .local v0, "retVal":D
    return-wide v0
.end method

.method public get_blockSize()Lorg/opencv/core/Size;
    .locals 4

    .prologue
    .line 331
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_blockSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    .line 333
    .local v0, "retVal":Lorg/opencv/core/Size;
    return-object v0
.end method

.method public get_blockStride()Lorg/opencv/core/Size;
    .locals 4

    .prologue
    .line 345
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_blockStride_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    .line 347
    .local v0, "retVal":Lorg/opencv/core/Size;
    return-object v0
.end method

.method public get_cellSize()Lorg/opencv/core/Size;
    .locals 4

    .prologue
    .line 359
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_cellSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    .line 361
    .local v0, "retVal":Lorg/opencv/core/Size;
    return-object v0
.end method

.method public get_derivAperture()I
    .locals 4

    .prologue
    .line 387
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_derivAperture_0(J)I

    move-result v0

    .line 389
    .local v0, "retVal":I
    return v0
.end method

.method public get_gammaCorrection()Z
    .locals 4

    .prologue
    .line 443
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_gammaCorrection_0(J)Z

    move-result v0

    .line 445
    .local v0, "retVal":Z
    return v0
.end method

.method public get_histogramNormType()I
    .locals 4

    .prologue
    .line 415
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_histogramNormType_0(J)I

    move-result v0

    .line 417
    .local v0, "retVal":I
    return v0
.end method

.method public get_nbins()I
    .locals 4

    .prologue
    .line 373
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_nbins_0(J)I

    move-result v0

    .line 375
    .local v0, "retVal":I
    return v0
.end method

.method public get_nlevels()I
    .locals 4

    .prologue
    .line 471
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_nlevels_0(J)I

    move-result v0

    .line 473
    .local v0, "retVal":I
    return v0
.end method

.method public get_signedGradient()Z
    .locals 4

    .prologue
    .line 485
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_signedGradient_0(J)Z

    move-result v0

    .line 487
    .local v0, "retVal":Z
    return v0
.end method

.method public get_svmDetector()Lorg/opencv/core/MatOfFloat;
    .locals 4

    .prologue
    .line 457
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_svmDetector_0(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/opencv/core/MatOfFloat;->fromNativeAddr(J)Lorg/opencv/core/MatOfFloat;

    move-result-object v0

    .line 459
    .local v0, "retVal":Lorg/opencv/core/MatOfFloat;
    return-object v0
.end method

.method public get_winSigma()D
    .locals 4

    .prologue
    .line 401
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_winSigma_0(J)D

    move-result-wide v0

    .line 403
    .local v0, "retVal":D
    return-wide v0
.end method

.method public get_winSize()Lorg/opencv/core/Size;
    .locals 4

    .prologue
    .line 317
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->get_winSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    .line 319
    .local v0, "retVal":Lorg/opencv/core/Size;
    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/objdetect/HOGDescriptor;->load_1(JLjava/lang/String;)Z

    move-result v0

    .line 114
    .local v0, "retVal":Z
    return v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "objname"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/objdetect/HOGDescriptor;->load_0(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 105
    .local v0, "retVal":Z
    return v0
.end method

.method public save(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/HOGDescriptor;->save_1(JLjava/lang/String;)V

    .line 291
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "objname"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/HOGDescriptor;->save_0(JLjava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setSVMDetector(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "_svmdetector"    # Lorg/opencv/core/Mat;

    .prologue
    .line 303
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->setSVMDetector_0(JJ)V

    .line 305
    return-void
.end method
