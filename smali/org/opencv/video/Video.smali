.class public Lorg/opencv/video/Video;
.super Ljava/lang/Object;
.source "Video.java"


# static fields
.field private static final CV_LKFLOW_GET_MIN_EIGENVALS:I = 0x8

.field private static final CV_LKFLOW_INITIAL_GUESSES:I = 0x4

.field public static final MOTION_AFFINE:I = 0x2

.field public static final MOTION_EUCLIDEAN:I = 0x1

.field public static final MOTION_HOMOGRAPHY:I = 0x3

.field public static final MOTION_TRANSLATION:I = 0x0

.field public static final OPTFLOW_FARNEBACK_GAUSSIAN:I = 0x100

.field public static final OPTFLOW_LK_GET_MIN_EIGENVALS:I = 0x8

.field public static final OPTFLOW_USE_INITIAL_FLOW:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CamShift(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;Lorg/opencv/core/TermCriteria;)Lorg/opencv/core/RotatedRect;
    .locals 12
    .param p0, "probImage"    # Lorg/opencv/core/Mat;
    .param p1, "window"    # Lorg/opencv/core/Rect;
    .param p2, "criteria"    # Lorg/opencv/core/TermCriteria;

    .prologue
    .line 116
    const/4 v0, 0x4

    new-array v6, v0, [D

    .line 117
    .local v6, "window_out":[D
    new-instance v11, Lorg/opencv/core/RotatedRect;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    iget v3, p1, Lorg/opencv/core/Rect;->y:I

    iget v4, p1, Lorg/opencv/core/Rect;->width:I

    iget v5, p1, Lorg/opencv/core/Rect;->height:I

    iget v7, p2, Lorg/opencv/core/TermCriteria;->type:I

    iget v8, p2, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v9, p2, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v10}, Lorg/opencv/video/Video;->CamShift_0(JIIII[DIID)[D

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/opencv/core/RotatedRect;-><init>([D)V

    .line 118
    .local v11, "retVal":Lorg/opencv/core/RotatedRect;
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->x:I

    const/4 v0, 0x1

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->y:I

    const/4 v0, 0x2

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->width:I

    const/4 v0, 0x3

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->height:I

    .line 119
    :cond_0
    return-object v11
.end method

.method private static native CamShift_0(JIIII[DIID)[D
.end method

.method public static buildOpticalFlowPyramid(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Size;I)I
    .locals 11
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p2, "winSize"    # Lorg/opencv/core/Size;
    .param p3, "maxLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "pyramid":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v9, Lorg/opencv/core/Mat;

    invoke-direct {v9}, Lorg/opencv/core/Mat;-><init>()V

    .line 173
    .local v9, "pyramid_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p2, Lorg/opencv/core/Size;->height:D

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/opencv/video/Video;->buildOpticalFlowPyramid_1(JJDDI)I

    move-result v10

    .line 174
    .local v10, "retVal":I
    invoke-static {v9, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 175
    invoke-virtual {v9}, Lorg/opencv/core/Mat;->release()V

    .line 176
    return v10
.end method

.method public static buildOpticalFlowPyramid(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Size;IZIIZ)I
    .locals 17
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p2, "winSize"    # Lorg/opencv/core/Size;
    .param p3, "maxLevel"    # I
    .param p4, "withDerivatives"    # Z
    .param p5, "pyrBorder"    # I
    .param p6, "derivBorder"    # I
    .param p7, "tryReuseInputImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "IZIIZ)I"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "pyramid":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v15, Lorg/opencv/core/Mat;

    invoke-direct {v15}, Lorg/opencv/core/Mat;-><init>()V

    .line 163
    .local v15, "pyramid_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-static/range {v2 .. v14}, Lorg/opencv/video/Video;->buildOpticalFlowPyramid_0(JJDDIZIIZ)I

    move-result v16

    .line 164
    .local v16, "retVal":I
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 165
    invoke-virtual {v15}, Lorg/opencv/core/Mat;->release()V

    .line 166
    return v16
.end method

.method private static native buildOpticalFlowPyramid_0(JJDDIZIIZ)I
.end method

.method private static native buildOpticalFlowPyramid_1(JJDDI)I
.end method

.method public static calcOpticalFlowFarneback(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DIIIIDI)V
    .locals 17
    .param p0, "prev"    # Lorg/opencv/core/Mat;
    .param p1, "next"    # Lorg/opencv/core/Mat;
    .param p2, "flow"    # Lorg/opencv/core/Mat;
    .param p3, "pyr_scale"    # D
    .param p5, "levels"    # I
    .param p6, "winsize"    # I
    .param p7, "iterations"    # I
    .param p8, "poly_n"    # I
    .param p9, "poly_sigma"    # D
    .param p11, "flags"    # I

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-wide/from16 v14, p9

    move/from16 v16, p11

    invoke-static/range {v2 .. v16}, Lorg/opencv/video/Video;->calcOpticalFlowFarneback_0(JJJDIIIIDI)V

    .line 204
    return-void
.end method

.method private static native calcOpticalFlowFarneback_0(JJJDIIIIDI)V
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;)V
    .locals 18
    .param p0, "prevImg"    # Lorg/opencv/core/Mat;
    .param p1, "nextImg"    # Lorg/opencv/core/Mat;
    .param p2, "prevPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "nextPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p4, "status"    # Lorg/opencv/core/MatOfByte;
    .param p5, "err"    # Lorg/opencv/core/MatOfFloat;

    .prologue
    .line 239
    move-object/from16 v16, p2

    .line 240
    .local v16, "prevPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p3

    .line 241
    .local v15, "nextPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v17, p4

    .line 242
    .local v17, "status_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p5

    .line 243
    .local v14, "err_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v17

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_2(JJJJJJ)V

    .line 245
    return-void
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;I)V
    .locals 23
    .param p0, "prevImg"    # Lorg/opencv/core/Mat;
    .param p1, "nextImg"    # Lorg/opencv/core/Mat;
    .param p2, "prevPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "nextPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p4, "status"    # Lorg/opencv/core/MatOfByte;
    .param p5, "err"    # Lorg/opencv/core/MatOfFloat;
    .param p6, "winSize"    # Lorg/opencv/core/Size;
    .param p7, "maxLevel"    # I

    .prologue
    .line 227
    move-object/from16 v21, p2

    .line 228
    .local v21, "prevPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v20, p3

    .line 229
    .local v20, "nextPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v22, p4

    .line 230
    .local v22, "status_mat":Lorg/opencv/core/Mat;
    move-object/from16 v19, p5

    .line 231
    .local v19, "err_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v21

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v22

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v19

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v0

    move/from16 v18, p7

    invoke-static/range {v2 .. v18}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_1(JJJJJJDDI)V

    .line 233
    return-void
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;ILorg/opencv/core/TermCriteria;ID)V
    .locals 30
    .param p0, "prevImg"    # Lorg/opencv/core/Mat;
    .param p1, "nextImg"    # Lorg/opencv/core/Mat;
    .param p2, "prevPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "nextPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p4, "status"    # Lorg/opencv/core/MatOfByte;
    .param p5, "err"    # Lorg/opencv/core/MatOfFloat;
    .param p6, "winSize"    # Lorg/opencv/core/Size;
    .param p7, "maxLevel"    # I
    .param p8, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p9, "flags"    # I
    .param p10, "minEigThreshold"    # D

    .prologue
    .line 215
    move-object/from16 v28, p2

    .line 216
    .local v28, "prevPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v27, p3

    .line 217
    .local v27, "nextPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v29, p4

    .line 218
    .local v29, "status_mat":Lorg/opencv/core/Mat;
    move-object/from16 v26, p5

    .line 219
    .local v26, "err_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v27

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v29

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v26

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p8

    iget v0, v0, Lorg/opencv/core/TermCriteria;->type:I

    move/from16 v19, v0

    move-object/from16 v0, p8

    iget v0, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move/from16 v20, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v21, v0

    move/from16 v18, p7

    move/from16 v23, p9

    move-wide/from16 v24, p10

    invoke-static/range {v2 .. v25}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_0(JJJJJJDDIIIDID)V

    .line 221
    return-void
.end method

.method private static native calcOpticalFlowPyrLK_0(JJJJJJDDIIIDID)V
.end method

.method private static native calcOpticalFlowPyrLK_1(JJJJJJDDI)V
.end method

.method private static native calcOpticalFlowPyrLK_2(JJJJJJ)V
.end method

.method public static createBackgroundSubtractorKNN()Lorg/opencv/video/BackgroundSubtractorKNN;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lorg/opencv/video/BackgroundSubtractorKNN;

    invoke-static {}, Lorg/opencv/video/Video;->createBackgroundSubtractorKNN_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/BackgroundSubtractorKNN;-><init>(J)V

    .line 68
    .local v0, "retVal":Lorg/opencv/video/BackgroundSubtractorKNN;
    return-object v0
.end method

.method public static createBackgroundSubtractorKNN(IDZ)Lorg/opencv/video/BackgroundSubtractorKNN;
    .locals 5
    .param p0, "history"    # I
    .param p1, "dist2Threshold"    # D
    .param p3, "detectShadows"    # Z

    .prologue
    .line 57
    new-instance v0, Lorg/opencv/video/BackgroundSubtractorKNN;

    invoke-static {p0, p1, p2, p3}, Lorg/opencv/video/Video;->createBackgroundSubtractorKNN_0(IDZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/BackgroundSubtractorKNN;-><init>(J)V

    .line 59
    .local v0, "retVal":Lorg/opencv/video/BackgroundSubtractorKNN;
    return-object v0
.end method

.method private static native createBackgroundSubtractorKNN_0(IDZ)J
.end method

.method private static native createBackgroundSubtractorKNN_1()J
.end method

.method public static createBackgroundSubtractorMOG2()Lorg/opencv/video/BackgroundSubtractorMOG2;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lorg/opencv/video/BackgroundSubtractorMOG2;

    invoke-static {}, Lorg/opencv/video/Video;->createBackgroundSubtractorMOG2_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;-><init>(J)V

    .line 91
    .local v0, "retVal":Lorg/opencv/video/BackgroundSubtractorMOG2;
    return-object v0
.end method

.method public static createBackgroundSubtractorMOG2(IDZ)Lorg/opencv/video/BackgroundSubtractorMOG2;
    .locals 5
    .param p0, "history"    # I
    .param p1, "varThreshold"    # D
    .param p3, "detectShadows"    # Z

    .prologue
    .line 80
    new-instance v0, Lorg/opencv/video/BackgroundSubtractorMOG2;

    invoke-static {p0, p1, p2, p3}, Lorg/opencv/video/Video;->createBackgroundSubtractorMOG2_0(IDZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/BackgroundSubtractorMOG2;-><init>(J)V

    .line 82
    .local v0, "retVal":Lorg/opencv/video/BackgroundSubtractorMOG2;
    return-object v0
.end method

.method private static native createBackgroundSubtractorMOG2_0(IDZ)J
.end method

.method private static native createBackgroundSubtractorMOG2_1()J
.end method

.method public static createOptFlow_DualTVL1()Lorg/opencv/video/DualTVL1OpticalFlow;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lorg/opencv/video/DualTVL1OpticalFlow;

    invoke-static {}, Lorg/opencv/video/Video;->createOptFlow_DualTVL1_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/video/DualTVL1OpticalFlow;-><init>(J)V

    .line 105
    .local v0, "retVal":Lorg/opencv/video/DualTVL1OpticalFlow;
    return-object v0
.end method

.method private static native createOptFlow_DualTVL1_0()J
.end method

.method public static estimateRigidTransform(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "fullAffine"    # Z

    .prologue
    .line 43
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/video/Video;->estimateRigidTransform_0(JJZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 45
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method private static native estimateRigidTransform_0(JJZ)J
.end method

.method public static findTransformECC(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 8
    .param p0, "templateImage"    # Lorg/opencv/core/Mat;
    .param p1, "inputImage"    # Lorg/opencv/core/Mat;
    .param p2, "warpMatrix"    # Lorg/opencv/core/Mat;

    .prologue
    .line 149
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/video/Video;->findTransformECC_2(JJJ)D

    move-result-wide v6

    .line 151
    .local v6, "retVal":D
    return-wide v6
.end method

.method public static findTransformECC(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 10
    .param p0, "templateImage"    # Lorg/opencv/core/Mat;
    .param p1, "inputImage"    # Lorg/opencv/core/Mat;
    .param p2, "warpMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "motionType"    # I

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/video/Video;->findTransformECC_1(JJJI)D

    move-result-wide v8

    .line 142
    .local v8, "retVal":D
    return-wide v8
.end method

.method public static findTransformECC(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;Lorg/opencv/core/Mat;)D
    .locals 18
    .param p0, "templateImage"    # Lorg/opencv/core/Mat;
    .param p1, "inputImage"    # Lorg/opencv/core/Mat;
    .param p2, "warpMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "motionType"    # I
    .param p4, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p5, "inputMask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget v9, v0, Lorg/opencv/core/TermCriteria;->type:I

    move-object/from16 v0, p4

    iget v10, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-object/from16 v0, p4

    iget-wide v11, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-object/from16 v0, p5

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    invoke-static/range {v2 .. v14}, Lorg/opencv/video/Video;->findTransformECC_0(JJJIIIDJ)D

    move-result-wide v16

    .line 133
    .local v16, "retVal":D
    return-wide v16
.end method

.method private static native findTransformECC_0(JJJIIIDJ)D
.end method

.method private static native findTransformECC_1(JJJI)D
.end method

.method private static native findTransformECC_2(JJJ)D
.end method

.method public static meanShift(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;Lorg/opencv/core/TermCriteria;)I
    .locals 12
    .param p0, "probImage"    # Lorg/opencv/core/Mat;
    .param p1, "window"    # Lorg/opencv/core/Rect;
    .param p2, "criteria"    # Lorg/opencv/core/TermCriteria;

    .prologue
    .line 187
    const/4 v0, 0x4

    new-array v6, v0, [D

    .line 188
    .local v6, "window_out":[D
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    iget v3, p1, Lorg/opencv/core/Rect;->y:I

    iget v4, p1, Lorg/opencv/core/Rect;->width:I

    iget v5, p1, Lorg/opencv/core/Rect;->height:I

    iget v7, p2, Lorg/opencv/core/TermCriteria;->type:I

    iget v8, p2, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v9, p2, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v10}, Lorg/opencv/video/Video;->meanShift_0(JIIII[DIID)I

    move-result v11

    .line 189
    .local v11, "retVal":I
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->x:I

    const/4 v0, 0x1

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->y:I

    const/4 v0, 0x2

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->width:I

    const/4 v0, 0x3

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->height:I

    .line 190
    :cond_0
    return v11
.end method

.method private static native meanShift_0(JIIII[DIID)I
.end method
