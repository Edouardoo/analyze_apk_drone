.class public Lorg/opencv/calib3d/Calib3d;
.super Ljava/lang/Object;
.source "Calib3d.java"


# static fields
.field public static final CALIB_CB_ADAPTIVE_THRESH:I = 0x1

.field public static final CALIB_CB_ASYMMETRIC_GRID:I = 0x2

.field public static final CALIB_CB_CLUSTERING:I = 0x4

.field public static final CALIB_CB_FAST_CHECK:I = 0x8

.field public static final CALIB_CB_FILTER_QUADS:I = 0x4

.field public static final CALIB_CB_NORMALIZE_IMAGE:I = 0x2

.field public static final CALIB_CB_SYMMETRIC_GRID:I = 0x1

.field public static final CALIB_CHECK_COND:I = 0x4

.field public static final CALIB_FIX_ASPECT_RATIO:I = 0x2

.field public static final CALIB_FIX_FOCAL_LENGTH:I = 0x10

.field public static final CALIB_FIX_INTRINSIC:I = 0x100

.field public static final CALIB_FIX_K1:I = 0x10

.field public static final CALIB_FIX_K2:I = 0x20

.field public static final CALIB_FIX_K3:I = 0x40

.field public static final CALIB_FIX_K4:I = 0x80

.field public static final CALIB_FIX_K5:I = 0x1000

.field public static final CALIB_FIX_K6:I = 0x2000

.field public static final CALIB_FIX_PRINCIPAL_POINT:I = 0x4

.field public static final CALIB_FIX_S1_S2_S3_S4:I = 0x10000

.field public static final CALIB_FIX_SKEW:I = 0x8

.field public static final CALIB_FIX_TANGENT_DIST:I = 0x200000

.field public static final CALIB_FIX_TAUX_TAUY:I = 0x80000

.field public static final CALIB_RATIONAL_MODEL:I = 0x4000

.field public static final CALIB_RECOMPUTE_EXTRINSIC:I = 0x2

.field public static final CALIB_SAME_FOCAL_LENGTH:I = 0x200

.field public static final CALIB_THIN_PRISM_MODEL:I = 0x8000

.field public static final CALIB_TILTED_MODEL:I = 0x40000

.field public static final CALIB_USE_INTRINSIC_GUESS:I = 0x1

.field public static final CALIB_USE_LU:I = 0x20000

.field public static final CALIB_USE_QR:I = 0x100000

.field public static final CALIB_ZERO_DISPARITY:I = 0x400

.field public static final CALIB_ZERO_TANGENT_DIST:I = 0x8

.field public static final CV_DLS:I = 0x3

.field public static final CV_EPNP:I = 0x1

.field public static final CV_ITERATIVE:I = 0x0

.field public static final CV_P3P:I = 0x2

.field public static final FM_7POINT:I = 0x1

.field public static final FM_8POINT:I = 0x2

.field public static final FM_LMEDS:I = 0x4

.field public static final FM_RANSAC:I = 0x8

.field public static final LMEDS:I = 0x4

.field public static final RANSAC:I = 0x8

.field public static final RHO:I = 0x10

.field public static final SOLVEPNP_AP3P:I = 0x5

.field public static final SOLVEPNP_DLS:I = 0x3

.field public static final SOLVEPNP_EPNP:I = 0x1

.field public static final SOLVEPNP_ITERATIVE:I = 0x0

.field public static final SOLVEPNP_MAX_COUNT:I = 0x6

.field public static final SOLVEPNP_P3P:I = 0x2

.field public static final SOLVEPNP_UPNP:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RQDecomp3x3(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)[D
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mtxR"    # Lorg/opencv/core/Mat;
    .param p2, "mtxQ"    # Lorg/opencv/core/Mat;

    .prologue
    .line 337
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->RQDecomp3x3_1(JJJ)[D

    move-result-object v6

    .line 339
    .local v6, "retVal":[D
    return-object v6
.end method

.method public static RQDecomp3x3(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)[D
    .locals 15
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mtxR"    # Lorg/opencv/core/Mat;
    .param p2, "mtxQ"    # Lorg/opencv/core/Mat;
    .param p3, "Qx"    # Lorg/opencv/core/Mat;
    .param p4, "Qy"    # Lorg/opencv/core/Mat;
    .param p5, "Qz"    # Lorg/opencv/core/Mat;

    .prologue
    .line 328
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->RQDecomp3x3_0(JJJJJJ)[D

    move-result-object v14

    .line 330
    .local v14, "retVal":[D
    return-object v14
.end method

.method private static native RQDecomp3x3_0(JJJJJJ)[D
.end method

.method private static native RQDecomp3x3_1(JJJ)[D
.end method

.method public static Rodrigues(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 888
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/calib3d/Calib3d;->Rodrigues_1(JJ)V

    .line 890
    return-void
.end method

.method public static Rodrigues(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "jacobian"    # Lorg/opencv/core/Mat;

    .prologue
    .line 879
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->Rodrigues_0(JJJ)V

    .line 881
    return-void
.end method

.method private static native Rodrigues_0(JJJ)V
.end method

.method private static native Rodrigues_1(JJ)V
.end method

.method public static calibrate(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;)D
    .locals 24
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "K"    # Lorg/opencv/core/Mat;
    .param p4, "D"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v19

    .line 663
    .local v19, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v18

    .line 664
    .local v18, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v22, Lorg/opencv/core/Mat;

    invoke-direct/range {v22 .. v22}, Lorg/opencv/core/Mat;-><init>()V

    .line 665
    .local v22, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v23, Lorg/opencv/core/Mat;

    invoke-direct/range {v23 .. v23}, Lorg/opencv/core/Mat;-><init>()V

    .line 666
    .local v23, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v18

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v22

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v23

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->calibrate_2(JJDDJJJJ)D

    move-result-wide v20

    .line 667
    .local v20, "retVal":D
    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 668
    invoke-virtual/range {v22 .. v22}, Lorg/opencv/core/Mat;->release()V

    .line 669
    move-object/from16 v0, v23

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 670
    invoke-virtual/range {v23 .. v23}, Lorg/opencv/core/Mat;->release()V

    .line 671
    return-wide v20
.end method

.method public static calibrate(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;I)D
    .locals 25
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "K"    # Lorg/opencv/core/Mat;
    .param p4, "D"    # Lorg/opencv/core/Mat;
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;I)D"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v20

    .line 648
    .local v20, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v19

    .line 649
    .local v19, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v21, Lorg/opencv/core/Mat;

    invoke-direct/range {v21 .. v21}, Lorg/opencv/core/Mat;-><init>()V

    .line 650
    .local v21, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v24, Lorg/opencv/core/Mat;

    invoke-direct/range {v24 .. v24}, Lorg/opencv/core/Mat;-><init>()V

    .line 651
    .local v24, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v20

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v19

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v24

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move/from16 v18, p7

    invoke-static/range {v2 .. v18}, Lorg/opencv/calib3d/Calib3d;->calibrate_1(JJDDJJJJI)D

    move-result-wide v22

    .line 652
    .local v22, "retVal":D
    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 653
    invoke-virtual/range {v21 .. v21}, Lorg/opencv/core/Mat;->release()V

    .line 654
    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 655
    invoke-virtual/range {v24 .. v24}, Lorg/opencv/core/Mat;->release()V

    .line 656
    return-wide v22
.end method

.method public static calibrate(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;ILorg/opencv/core/TermCriteria;)D
    .locals 29
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "K"    # Lorg/opencv/core/Mat;
    .param p4, "D"    # Lorg/opencv/core/Mat;
    .param p7, "flags"    # I
    .param p8, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v24

    .line 633
    .local v24, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v23

    .line 634
    .local v23, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v25, Lorg/opencv/core/Mat;

    invoke-direct/range {v25 .. v25}, Lorg/opencv/core/Mat;-><init>()V

    .line 635
    .local v25, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v28, Lorg/opencv/core/Mat;

    invoke-direct/range {v28 .. v28}, Lorg/opencv/core/Mat;-><init>()V

    .line 636
    .local v28, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v24

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v23

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v25

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v28

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

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

    invoke-static/range {v2 .. v22}, Lorg/opencv/calib3d/Calib3d;->calibrate_0(JJDDJJJJIIID)D

    move-result-wide v26

    .line 637
    .local v26, "retVal":D
    move-object/from16 v0, v25

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 638
    invoke-virtual/range {v25 .. v25}, Lorg/opencv/core/Mat;->release()V

    .line 639
    move-object/from16 v0, v28

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 640
    invoke-virtual/range {v28 .. v28}, Lorg/opencv/core/Mat;->release()V

    .line 641
    return-wide v26
.end method

.method public static calibrateCamera(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;)D
    .locals 24
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v19

    .line 561
    .local v19, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v18

    .line 562
    .local v18, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v22, Lorg/opencv/core/Mat;

    invoke-direct/range {v22 .. v22}, Lorg/opencv/core/Mat;-><init>()V

    .line 563
    .local v22, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v23, Lorg/opencv/core/Mat;

    invoke-direct/range {v23 .. v23}, Lorg/opencv/core/Mat;-><init>()V

    .line 564
    .local v23, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v18

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v22

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v23

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->calibrateCamera_2(JJDDJJJJ)D

    move-result-wide v20

    .line 565
    .local v20, "retVal":D
    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 566
    invoke-virtual/range {v22 .. v22}, Lorg/opencv/core/Mat;->release()V

    .line 567
    move-object/from16 v0, v23

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 568
    invoke-virtual/range {v23 .. v23}, Lorg/opencv/core/Mat;->release()V

    .line 569
    return-wide v20
.end method

.method public static calibrateCamera(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;I)D
    .locals 25
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;I)D"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v20

    .line 546
    .local v20, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v19

    .line 547
    .local v19, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v21, Lorg/opencv/core/Mat;

    invoke-direct/range {v21 .. v21}, Lorg/opencv/core/Mat;-><init>()V

    .line 548
    .local v21, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v24, Lorg/opencv/core/Mat;

    invoke-direct/range {v24 .. v24}, Lorg/opencv/core/Mat;-><init>()V

    .line 549
    .local v24, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v20

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v19

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v24

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move/from16 v18, p7

    invoke-static/range {v2 .. v18}, Lorg/opencv/calib3d/Calib3d;->calibrateCamera_1(JJDDJJJJI)D

    move-result-wide v22

    .line 550
    .local v22, "retVal":D
    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 551
    invoke-virtual/range {v21 .. v21}, Lorg/opencv/core/Mat;->release()V

    .line 552
    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 553
    invoke-virtual/range {v24 .. v24}, Lorg/opencv/core/Mat;->release()V

    .line 554
    return-wide v22
.end method

.method public static calibrateCamera(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;ILorg/opencv/core/TermCriteria;)D
    .locals 29
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "flags"    # I
    .param p8, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v24

    .line 531
    .local v24, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v23

    .line 532
    .local v23, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v25, Lorg/opencv/core/Mat;

    invoke-direct/range {v25 .. v25}, Lorg/opencv/core/Mat;-><init>()V

    .line 533
    .local v25, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v28, Lorg/opencv/core/Mat;

    invoke-direct/range {v28 .. v28}, Lorg/opencv/core/Mat;-><init>()V

    .line 534
    .local v28, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v24

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v23

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v25

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v28

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

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

    invoke-static/range {v2 .. v22}, Lorg/opencv/calib3d/Calib3d;->calibrateCamera_0(JJDDJJJJIIID)D

    move-result-wide v26

    .line 535
    .local v26, "retVal":D
    move-object/from16 v0, v25

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 536
    invoke-virtual/range {v25 .. v25}, Lorg/opencv/core/Mat;->release()V

    .line 537
    move-object/from16 v0, v28

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 538
    invoke-virtual/range {v28 .. v28}, Lorg/opencv/core/Mat;->release()V

    .line 539
    return-wide v26
.end method

.method public static calibrateCameraExtended(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 30
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "stdDeviationsIntrinsics"    # Lorg/opencv/core/Mat;
    .param p8, "stdDeviationsExtrinsics"    # Lorg/opencv/core/Mat;
    .param p9, "perViewErrors"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")D"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v25

    .line 511
    .local v25, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v24

    .line 512
    .local v24, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v28, Lorg/opencv/core/Mat;

    invoke-direct/range {v28 .. v28}, Lorg/opencv/core/Mat;-><init>()V

    .line 513
    .local v28, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v29, Lorg/opencv/core/Mat;

    invoke-direct/range {v29 .. v29}, Lorg/opencv/core/Mat;-><init>()V

    .line 514
    .local v29, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v25

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v24

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v28

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v29

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    invoke-static/range {v2 .. v23}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraExtended_2(JJDDJJJJJJJ)D

    move-result-wide v26

    .line 515
    .local v26, "retVal":D
    move-object/from16 v0, v28

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 516
    invoke-virtual/range {v28 .. v28}, Lorg/opencv/core/Mat;->release()V

    .line 517
    move-object/from16 v0, v29

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 518
    invoke-virtual/range {v29 .. v29}, Lorg/opencv/core/Mat;->release()V

    .line 519
    return-wide v26
.end method

.method public static calibrateCameraExtended(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 31
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "stdDeviationsIntrinsics"    # Lorg/opencv/core/Mat;
    .param p8, "stdDeviationsExtrinsics"    # Lorg/opencv/core/Mat;
    .param p9, "perViewErrors"    # Lorg/opencv/core/Mat;
    .param p10, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I)D"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v26

    .line 496
    .local v26, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v25

    .line 497
    .local v25, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v27, Lorg/opencv/core/Mat;

    invoke-direct/range {v27 .. v27}, Lorg/opencv/core/Mat;-><init>()V

    .line 498
    .local v27, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v30, Lorg/opencv/core/Mat;

    invoke-direct/range {v30 .. v30}, Lorg/opencv/core/Mat;-><init>()V

    .line 499
    .local v30, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v26

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v25

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v27

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v30

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move/from16 v24, p10

    invoke-static/range {v2 .. v24}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraExtended_1(JJDDJJJJJJJI)D

    move-result-wide v28

    .line 500
    .local v28, "retVal":D
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 501
    invoke-virtual/range {v27 .. v27}, Lorg/opencv/core/Mat;->release()V

    .line 502
    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 503
    invoke-virtual/range {v30 .. v30}, Lorg/opencv/core/Mat;->release()V

    .line 504
    return-wide v28
.end method

.method public static calibrateCameraExtended(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;)D
    .locals 35
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "stdDeviationsIntrinsics"    # Lorg/opencv/core/Mat;
    .param p8, "stdDeviationsExtrinsics"    # Lorg/opencv/core/Mat;
    .param p9, "perViewErrors"    # Lorg/opencv/core/Mat;
    .param p10, "flags"    # I
    .param p11, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v30

    .line 481
    .local v30, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v29

    .line 482
    .local v29, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v31, Lorg/opencv/core/Mat;

    invoke-direct/range {v31 .. v31}, Lorg/opencv/core/Mat;-><init>()V

    .line 483
    .local v31, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v34, Lorg/opencv/core/Mat;

    invoke-direct/range {v34 .. v34}, Lorg/opencv/core/Mat;-><init>()V

    .line 484
    .local v34, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v30

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v29

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p11

    iget v0, v0, Lorg/opencv/core/TermCriteria;->type:I

    move/from16 v25, v0

    move-object/from16 v0, p11

    iget v0, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move/from16 v26, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v27, v0

    move/from16 v24, p10

    invoke-static/range {v2 .. v28}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraExtended_0(JJDDJJJJJJJIIID)D

    move-result-wide v32

    .line 485
    .local v32, "retVal":D
    move-object/from16 v0, v31

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 486
    invoke-virtual/range {v31 .. v31}, Lorg/opencv/core/Mat;->release()V

    .line 487
    move-object/from16 v0, v34

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 488
    invoke-virtual/range {v34 .. v34}, Lorg/opencv/core/Mat;->release()V

    .line 489
    return-wide v32
.end method

.method private static native calibrateCameraExtended_0(JJDDJJJJJJJIIID)D
.end method

.method private static native calibrateCameraExtended_1(JJDDJJJJJJJI)D
.end method

.method private static native calibrateCameraExtended_2(JJDDJJJJJJJ)D
.end method

.method private static native calibrateCamera_0(JJDDJJJJIIID)D
.end method

.method private static native calibrateCamera_1(JJDDJJJJI)D
.end method

.method private static native calibrateCamera_2(JJDDJJJJ)D
.end method

.method private static native calibrate_0(JJDDJJJJIIID)D
.end method

.method private static native calibrate_1(JJDDJJJJI)D
.end method

.method private static native calibrate_2(JJDDJJJJ)D
.end method

.method public static calibrationMatrixValues(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DD[D[D[DLorg/opencv/core/Point;[D)V
    .locals 18
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "imageSize"    # Lorg/opencv/core/Size;
    .param p2, "apertureWidth"    # D
    .param p4, "apertureHeight"    # D
    .param p6, "fovx"    # [D
    .param p7, "fovy"    # [D
    .param p8, "focalLength"    # [D
    .param p9, "principalPoint"    # Lorg/opencv/core/Point;
    .param p10, "aspectRatio"    # [D

    .prologue
    .line 901
    const/4 v2, 0x1

    new-array v12, v2, [D

    .line 902
    .local v12, "fovx_out":[D
    const/4 v2, 0x1

    new-array v13, v2, [D

    .line 903
    .local v13, "fovy_out":[D
    const/4 v2, 0x1

    new-array v14, v2, [D

    .line 904
    .local v14, "focalLength_out":[D
    const/4 v2, 0x2

    new-array v15, v2, [D

    .line 905
    .local v15, "principalPoint_out":[D
    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v16, v0

    .line 906
    .local v16, "aspectRatio_out":[D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-static/range {v2 .. v16}, Lorg/opencv/calib3d/Calib3d;->calibrationMatrixValues_0(JDDDD[D[D[D[D[D)V

    .line 907
    if-eqz p6, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v12, v3

    aput-wide v4, p6, v2

    .line 908
    :cond_0
    if-eqz p7, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v13, v3

    aput-wide v4, p7, v2

    .line 909
    :cond_1
    if-eqz p8, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v14, v3

    aput-wide v4, p8, v2

    .line 910
    :cond_2
    if-eqz p9, :cond_3

    const/4 v2, 0x0

    aget-wide v2, v15, v2

    move-object/from16 v0, p9

    iput-wide v2, v0, Lorg/opencv/core/Point;->x:D

    const/4 v2, 0x1

    aget-wide v2, v15, v2

    move-object/from16 v0, p9

    iput-wide v2, v0, Lorg/opencv/core/Point;->y:D

    .line 911
    :cond_3
    if-eqz p10, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v16, v3

    aput-wide v4, p10, v2

    .line 912
    :cond_4
    return-void
.end method

.method private static native calibrationMatrixValues_0(JDDDD[D[D[D[D[D)V
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 14
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;

    .prologue
    .line 933
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->composeRT_1(JJJJJJ)V

    .line 935
    return-void
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 30
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;
    .param p6, "dr3dr1"    # Lorg/opencv/core/Mat;
    .param p7, "dr3dt1"    # Lorg/opencv/core/Mat;
    .param p8, "dr3dr2"    # Lorg/opencv/core/Mat;
    .param p9, "dr3dt2"    # Lorg/opencv/core/Mat;
    .param p10, "dt3dr1"    # Lorg/opencv/core/Mat;
    .param p11, "dt3dt1"    # Lorg/opencv/core/Mat;
    .param p12, "dt3dr2"    # Lorg/opencv/core/Mat;
    .param p13, "dt3dt2"    # Lorg/opencv/core/Mat;

    .prologue
    .line 924
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p12

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p13

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v28, v0

    invoke-static/range {v2 .. v29}, Lorg/opencv/calib3d/Calib3d;->composeRT_0(JJJJJJJJJJJJJJ)V

    .line 926
    return-void
.end method

.method private static native composeRT_0(JJJJJJJJJJJJJJ)V
.end method

.method private static native composeRT_1(JJJJJJ)V
.end method

.method public static computeCorrespondEpilines(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "points"    # Lorg/opencv/core/Mat;
    .param p1, "whichImage"    # I
    .param p2, "F"    # Lorg/opencv/core/Mat;
    .param p3, "lines"    # Lorg/opencv/core/Mat;

    .prologue
    .line 947
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v3, p1

    invoke-static/range {v1 .. v7}, Lorg/opencv/calib3d/Calib3d;->computeCorrespondEpilines_0(JIJJ)V

    .line 949
    return-void
.end method

.method private static native computeCorrespondEpilines_0(JIJJ)V
.end method

.method public static convertPointsFromHomogeneous(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 961
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/calib3d/Calib3d;->convertPointsFromHomogeneous_0(JJ)V

    .line 963
    return-void
.end method

.method private static native convertPointsFromHomogeneous_0(JJ)V
.end method

.method public static convertPointsToHomogeneous(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 975
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/calib3d/Calib3d;->convertPointsToHomogeneous_0(JJ)V

    .line 977
    return-void
.end method

.method private static native convertPointsToHomogeneous_0(JJ)V
.end method

.method public static correctMatches(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "F"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "newPoints1"    # Lorg/opencv/core/Mat;
    .param p4, "newPoints2"    # Lorg/opencv/core/Mat;

    .prologue
    .line 989
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->correctMatches_0(JJJJJ)V

    .line 991
    return-void
.end method

.method private static native correctMatches_0(JJJJJ)V
.end method

.method public static decomposeEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "R1"    # Lorg/opencv/core/Mat;
    .param p2, "R2"    # Lorg/opencv/core/Mat;
    .param p3, "t"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1003
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->decomposeEssentialMat_0(JJJJ)V

    .line 1005
    return-void
.end method

.method private static native decomposeEssentialMat_0(JJJJ)V
.end method

.method public static decomposeHomographyMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 16
    .param p0, "H"    # Lorg/opencv/core/Mat;
    .param p1, "K"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 738
    .local p2, "rotations":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p3, "translations":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p4, "normals":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v14, Lorg/opencv/core/Mat;

    invoke-direct {v14}, Lorg/opencv/core/Mat;-><init>()V

    .line 739
    .local v14, "rotations_mat":Lorg/opencv/core/Mat;
    new-instance v15, Lorg/opencv/core/Mat;

    invoke-direct {v15}, Lorg/opencv/core/Mat;-><init>()V

    .line 740
    .local v15, "translations_mat":Lorg/opencv/core/Mat;
    new-instance v12, Lorg/opencv/core/Mat;

    invoke-direct {v12}, Lorg/opencv/core/Mat;-><init>()V

    .line 741
    .local v12, "normals_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v12, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v11}, Lorg/opencv/calib3d/Calib3d;->decomposeHomographyMat_0(JJJJJ)I

    move-result v13

    .line 742
    .local v13, "retVal":I
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 743
    invoke-virtual {v14}, Lorg/opencv/core/Mat;->release()V

    .line 744
    move-object/from16 v0, p3

    invoke-static {v15, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 745
    invoke-virtual {v15}, Lorg/opencv/core/Mat;->release()V

    .line 746
    move-object/from16 v0, p4

    invoke-static {v12, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 747
    invoke-virtual {v12}, Lorg/opencv/core/Mat;->release()V

    .line 748
    return v13
.end method

.method private static native decomposeHomographyMat_0(JJJJJ)I
.end method

.method public static decomposeProjectionMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "projMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p2, "rotMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "transVect"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1026
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->decomposeProjectionMatrix_1(JJJJ)V

    .line 1028
    return-void
.end method

.method public static decomposeProjectionMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 18
    .param p0, "projMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p2, "rotMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "transVect"    # Lorg/opencv/core/Mat;
    .param p4, "rotMatrixX"    # Lorg/opencv/core/Mat;
    .param p5, "rotMatrixY"    # Lorg/opencv/core/Mat;
    .param p6, "rotMatrixZ"    # Lorg/opencv/core/Mat;
    .param p7, "eulerAngles"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1017
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->decomposeProjectionMatrix_0(JJJJJJJJ)V

    .line 1019
    return-void
.end method

.method private static native decomposeProjectionMatrix_0(JJJJJJJJ)V
.end method

.method private static native decomposeProjectionMatrix_1(JJJJ)V
.end method

.method public static distortPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "undistorted"    # Lorg/opencv/core/Mat;
    .param p1, "distorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1221
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->distortPoints_1(JJJJ)V

    .line 1223
    return-void
.end method

.method public static distortPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 10
    .param p0, "undistorted"    # Lorg/opencv/core/Mat;
    .param p1, "distorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;
    .param p4, "alpha"    # D

    .prologue
    .line 1212
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->distortPoints_0(JJJJD)V

    .line 1214
    return-void
.end method

.method private static native distortPoints_0(JJJJD)V
.end method

.method private static native distortPoints_1(JJJJ)V
.end method

.method public static drawChessboardCorners(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint2f;Z)V
    .locals 10
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "patternWasFound"    # Z

    .prologue
    .line 1039
    move-object v9, p2

    .line 1040
    .local v9, "corners_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, v9, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/opencv/calib3d/Calib3d;->drawChessboardCorners_0(JDDJZ)V

    .line 1042
    return-void
.end method

.method private static native drawChessboardCorners_0(JDDJZ)V
.end method

.method public static estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;

    .prologue
    .line 91
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D_1(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 93
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDJDJ)Lorg/opencv/core/Mat;
    .locals 18
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D
    .param p6, "maxIters"    # J
    .param p8, "confidence"    # D
    .param p10, "refineIters"    # J

    .prologue
    .line 82
    new-instance v2, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v9, p3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    invoke-static/range {v3 .. v17}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D_0(JJJIDJDJ)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 84
    .local v2, "retVal":Lorg/opencv/core/Mat;
    return-object v2
.end method

.method private static native estimateAffine2D_0(JJJIDJDJ)J
.end method

.method private static native estimateAffine2D_1(JJ)J
.end method

.method public static estimateAffine3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "out"    # Lorg/opencv/core/Mat;
    .param p3, "inliers"    # Lorg/opencv/core/Mat;

    .prologue
    .line 769
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->estimateAffine3D_1(JJJJ)I

    move-result v8

    .line 771
    .local v8, "retVal":I
    return v8
.end method

.method public static estimateAffine3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DD)I
    .locals 16
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "out"    # Lorg/opencv/core/Mat;
    .param p3, "inliers"    # Lorg/opencv/core/Mat;
    .param p4, "ransacThreshold"    # D
    .param p6, "confidence"    # D

    .prologue
    .line 760
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->estimateAffine3D_0(JJJJDD)I

    move-result v14

    .line 762
    .local v14, "retVal":I
    return v14
.end method

.method private static native estimateAffine3D_0(JJJJDD)I
.end method

.method private static native estimateAffine3D_1(JJJJ)I
.end method

.method public static estimateAffinePartial2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;

    .prologue
    .line 114
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/calib3d/Calib3d;->estimateAffinePartial2D_1(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 116
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static estimateAffinePartial2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDJDJ)Lorg/opencv/core/Mat;
    .locals 18
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D
    .param p6, "maxIters"    # J
    .param p8, "confidence"    # D
    .param p10, "refineIters"    # J

    .prologue
    .line 105
    new-instance v2, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v9, p3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    invoke-static/range {v3 .. v17}, Lorg/opencv/calib3d/Calib3d;->estimateAffinePartial2D_0(JJJIDJDJ)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 107
    .local v2, "retVal":Lorg/opencv/core/Mat;
    return-object v2
.end method

.method private static native estimateAffinePartial2D_0(JJJIDJDJ)J
.end method

.method private static native estimateAffinePartial2D_1(JJ)J
.end method

.method public static estimateNewCameraMatrixForUndistortRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 14
    .param p0, "K"    # Lorg/opencv/core/Mat;
    .param p1, "D"    # Lorg/opencv/core/Mat;
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "P"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1244
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->estimateNewCameraMatrixForUndistortRectify_1(JJDDJJ)V

    .line 1246
    return-void
.end method

.method public static estimateNewCameraMatrixForUndistortRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Size;D)V
    .locals 22
    .param p0, "K"    # Lorg/opencv/core/Mat;
    .param p1, "D"    # Lorg/opencv/core/Mat;
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "P"    # Lorg/opencv/core/Mat;
    .param p5, "balance"    # D
    .param p7, "new_size"    # Lorg/opencv/core/Size;
    .param p8, "fov_scale"    # D

    .prologue
    .line 1235
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-wide/from16 v14, p5

    move-wide/from16 v20, p8

    invoke-static/range {v2 .. v21}, Lorg/opencv/calib3d/Calib3d;->estimateNewCameraMatrixForUndistortRectify_0(JJDDJJDDDD)V

    .line 1237
    return-void
.end method

.method private static native estimateNewCameraMatrixForUndistortRectify_0(JJDDJJDDDD)V
.end method

.method private static native estimateNewCameraMatrixForUndistortRectify_1(JJDDJJ)V
.end method

.method public static filterSpeckles(Lorg/opencv/core/Mat;DID)V
    .locals 7
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p1, "newVal"    # D
    .param p3, "maxSpeckleSize"    # I
    .param p4, "maxDiff"    # D

    .prologue
    .line 1063
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/calib3d/Calib3d;->filterSpeckles_1(JDID)V

    .line 1065
    return-void
.end method

.method public static filterSpeckles(Lorg/opencv/core/Mat;DIDLorg/opencv/core/Mat;)V
    .locals 9
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p1, "newVal"    # D
    .param p3, "maxSpeckleSize"    # I
    .param p4, "maxDiff"    # D
    .param p6, "buf"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1054
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, p6, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/calib3d/Calib3d;->filterSpeckles_0(JDIDJ)V

    .line 1056
    return-void
.end method

.method private static native filterSpeckles_0(JDIDJ)V
.end method

.method private static native filterSpeckles_1(JDID)V
.end method

.method public static findChessboardCorners(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint2f;)Z
    .locals 10
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/MatOfPoint2f;

    .prologue
    .line 359
    move-object v8, p2

    .line 360
    .local v8, "corners_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->findChessboardCorners_1(JDDJ)Z

    move-result v9

    .line 362
    .local v9, "retVal":Z
    return v9
.end method

.method public static findChessboardCorners(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint2f;I)Z
    .locals 11
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "flags"    # I

    .prologue
    .line 350
    move-object v9, p2

    .line 351
    .local v9, "corners_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, v9, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/opencv/calib3d/Calib3d;->findChessboardCorners_0(JDDJI)Z

    move-result v10

    .line 353
    .local v10, "retVal":Z
    return v10
.end method

.method private static native findChessboardCorners_0(JDDJI)Z
.end method

.method private static native findChessboardCorners_1(JDDJ)Z
.end method

.method public static findCirclesGrid(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;)Z
    .locals 9
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "centers"    # Lorg/opencv/core/Mat;

    .prologue
    .line 390
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->findCirclesGrid_1(JDDJ)Z

    move-result v8

    .line 392
    .local v8, "retVal":Z
    return v8
.end method

.method public static findCirclesGrid(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;I)Z
    .locals 10
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "centers"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .prologue
    .line 381
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/opencv/calib3d/Calib3d;->findCirclesGrid_0(JDDJI)Z

    move-result v9

    .line 383
    .local v9, "retVal":Z
    return v9
.end method

.method private static native findCirclesGrid_0(JDDJI)Z
.end method

.method private static native findCirclesGrid_1(JDDJ)Z
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;

    .prologue
    .line 178
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_5(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 180
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;IDD)Lorg/opencv/core/Mat;
    .locals 18
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "focal"    # D
    .param p4, "pp"    # Lorg/opencv/core/Point;
    .param p5, "method"    # I
    .param p6, "prob"    # D
    .param p8, "threshold"    # D

    .prologue
    .line 169
    new-instance v17, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/opencv/core/Point;->x:D

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v6, p2

    move/from16 v12, p5

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    invoke-static/range {v2 .. v16}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_4(JJDDDIDD)J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 171
    .local v17, "retVal":Lorg/opencv/core/Mat;
    return-object v17
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;IDDLorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 20
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "focal"    # D
    .param p4, "pp"    # Lorg/opencv/core/Point;
    .param p5, "method"    # I
    .param p6, "prob"    # D
    .param p8, "threshold"    # D
    .param p10, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 160
    new-instance v19, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/opencv/core/Point;->x:D

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Point;->y:D

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v17, v0

    move-wide/from16 v6, p2

    move/from16 v12, p5

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    invoke-static/range {v2 .. v18}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_3(JJDDDIDDJ)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 162
    .local v19, "retVal":Lorg/opencv/core/Mat;
    return-object v19
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;

    .prologue
    .line 146
    new-instance v6, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_2(JJJ)J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 148
    .local v6, "retVal":Lorg/opencv/core/Mat;
    return-object v6
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDD)Lorg/opencv/core/Mat;
    .locals 12
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "prob"    # D
    .param p6, "threshold"    # D

    .prologue
    .line 137
    new-instance v11, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-static/range {v0 .. v10}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_1(JJJIDD)J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 139
    .local v11, "retVal":Lorg/opencv/core/Mat;
    return-object v11
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDDLorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 16
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "prob"    # D
    .param p6, "threshold"    # D
    .param p8, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 128
    new-instance v15, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-static/range {v2 .. v14}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_0(JJJIDDJ)J

    move-result-wide v2

    invoke-direct {v15, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 130
    .local v15, "retVal":Lorg/opencv/core/Mat;
    return-object v15
.end method

.method private static native findEssentialMat_0(JJJIDDJ)J
.end method

.method private static native findEssentialMat_1(JJJIDD)J
.end method

.method private static native findEssentialMat_2(JJJ)J
.end method

.method private static native findEssentialMat_3(JJDDDIDDJ)J
.end method

.method private static native findEssentialMat_4(JJDDDIDD)J
.end method

.method private static native findEssentialMat_5(JJ)J
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;)Lorg/opencv/core/Mat;
    .locals 8
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;

    .prologue
    .line 211
    move-object v0, p0

    .line 212
    .local v0, "points1_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 213
    .local v1, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v4, v5, v6, v7}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_2(JJ)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 215
    .local v2, "retVal":Lorg/opencv/core/Mat;
    return-object v2
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDD)Lorg/opencv/core/Mat;
    .locals 13
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "param1"    # D
    .param p5, "param2"    # D

    .prologue
    .line 201
    move-object v9, p0

    .line 202
    .local v9, "points1_mat":Lorg/opencv/core/Mat;
    move-object v10, p1

    .line 203
    .local v10, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v11, Lorg/opencv/core/Mat;

    iget-wide v0, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v10, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_1(JJIDD)J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 205
    .local v11, "retVal":Lorg/opencv/core/Mat;
    return-object v11
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDDLorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 17
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "param1"    # D
    .param p5, "param2"    # D
    .param p7, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 191
    move-object/from16 v2, p0

    .line 192
    .local v2, "points1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p1

    .line 193
    .local v14, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v15, Lorg/opencv/core/Mat;

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-static/range {v3 .. v13}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_0(JJIDDJ)J

    move-result-wide v4

    invoke-direct {v15, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 195
    .local v15, "retVal":Lorg/opencv/core/Mat;
    return-object v15
.end method

.method private static native findFundamentalMat_0(JJIDDJ)J
.end method

.method private static native findFundamentalMat_1(JJIDD)J
.end method

.method private static native findFundamentalMat_2(JJ)J
.end method

.method public static findHomography(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;)Lorg/opencv/core/Mat;
    .locals 8
    .param p0, "srcPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dstPoints"    # Lorg/opencv/core/MatOfPoint2f;

    .prologue
    .line 246
    move-object v2, p0

    .line 247
    .local v2, "srcPoints_mat":Lorg/opencv/core/Mat;
    move-object v0, p1

    .line 248
    .local v0, "dstPoints_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v4, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v4, v5, v6, v7}, Lorg/opencv/calib3d/Calib3d;->findHomography_2(JJ)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 250
    .local v1, "retVal":Lorg/opencv/core/Mat;
    return-object v1
.end method

.method public static findHomography(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;ID)Lorg/opencv/core/Mat;
    .locals 11
    .param p0, "srcPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dstPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D

    .prologue
    .line 236
    move-object v9, p0

    .line 237
    .local v9, "srcPoints_mat":Lorg/opencv/core/Mat;
    move-object v7, p1

    .line 238
    .local v7, "dstPoints_mat":Lorg/opencv/core/Mat;
    new-instance v8, Lorg/opencv/core/Mat;

    iget-wide v0, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v7, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/calib3d/Calib3d;->findHomography_1(JJID)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 240
    .local v8, "retVal":Lorg/opencv/core/Mat;
    return-object v8
.end method

.method public static findHomography(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDLorg/opencv/core/Mat;ID)Lorg/opencv/core/Mat;
    .locals 17
    .param p0, "srcPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dstPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D
    .param p5, "mask"    # Lorg/opencv/core/Mat;
    .param p6, "maxIters"    # I
    .param p7, "confidence"    # D

    .prologue
    .line 226
    move-object/from16 v16, p0

    .line 227
    .local v16, "srcPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p1

    .line 228
    .local v14, "dstPoints_mat":Lorg/opencv/core/Mat;
    new-instance v15, Lorg/opencv/core/Mat;

    move-object/from16 v0, v16

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v9, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v6, p2

    move-wide/from16 v7, p3

    move/from16 v11, p6

    move-wide/from16 v12, p7

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->findHomography_0(JJIDJID)J

    move-result-wide v2

    invoke-direct {v15, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 230
    .local v15, "retVal":Lorg/opencv/core/Mat;
    return-object v15
.end method

.method private static native findHomography_0(JJIDJID)J
.end method

.method private static native findHomography_1(JJID)J
.end method

.method private static native findHomography_2(JJ)J
.end method

.method public static getOptimalNewCameraMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;D)Lorg/opencv/core/Mat;
    .locals 11
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "alpha"    # D

    .prologue
    .line 271
    new-instance v10, Lorg/opencv/core/Mat;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p2, Lorg/opencv/core/Size;->height:D

    move-wide v8, p3

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->getOptimalNewCameraMatrix_1(JJDDD)J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 273
    .local v10, "retVal":Lorg/opencv/core/Mat;
    return-object v10
.end method

.method public static getOptimalNewCameraMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DLorg/opencv/core/Size;Lorg/opencv/core/Rect;Z)Lorg/opencv/core/Mat;
    .locals 19
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "alpha"    # D
    .param p5, "newImgSize"    # Lorg/opencv/core/Size;
    .param p6, "validPixROI"    # Lorg/opencv/core/Rect;
    .param p7, "centerPrincipalPoint"    # Z

    .prologue
    .line 261
    const/4 v2, 0x4

    new-array v0, v2, [D

    move-object/from16 v16, v0

    .line 262
    .local v16, "validPixROI_out":[D
    new-instance v18, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v10, p3

    move/from16 v17, p7

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->getOptimalNewCameraMatrix_0(JJDDDDD[DZ)J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 263
    .local v18, "retVal":Lorg/opencv/core/Mat;
    if-eqz p6, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v16, v2

    double-to-int v2, v2

    move-object/from16 v0, p6

    iput v2, v0, Lorg/opencv/core/Rect;->x:I

    const/4 v2, 0x1

    aget-wide v2, v16, v2

    double-to-int v2, v2

    move-object/from16 v0, p6

    iput v2, v0, Lorg/opencv/core/Rect;->y:I

    const/4 v2, 0x2

    aget-wide v2, v16, v2

    double-to-int v2, v2

    move-object/from16 v0, p6

    iput v2, v0, Lorg/opencv/core/Rect;->width:I

    const/4 v2, 0x3

    aget-wide v2, v16, v2

    double-to-int v2, v2

    move-object/from16 v0, p6

    iput v2, v0, Lorg/opencv/core/Rect;->height:I

    .line 264
    :cond_0
    return-object v18
.end method

.method private static native getOptimalNewCameraMatrix_0(JJDDDDD[DZ)J
.end method

.method private static native getOptimalNewCameraMatrix_1(JJDDD)J
.end method

.method public static getValidDisparityROI(Lorg/opencv/core/Rect;Lorg/opencv/core/Rect;III)Lorg/opencv/core/Rect;
    .locals 12
    .param p0, "roi1"    # Lorg/opencv/core/Rect;
    .param p1, "roi2"    # Lorg/opencv/core/Rect;
    .param p2, "minDisparity"    # I
    .param p3, "numberOfDisparities"    # I
    .param p4, "SADWindowSize"    # I

    .prologue
    .line 314
    new-instance v11, Lorg/opencv/core/Rect;

    iget v0, p0, Lorg/opencv/core/Rect;->x:I

    iget v1, p0, Lorg/opencv/core/Rect;->y:I

    iget v2, p0, Lorg/opencv/core/Rect;->width:I

    iget v3, p0, Lorg/opencv/core/Rect;->height:I

    iget v4, p1, Lorg/opencv/core/Rect;->x:I

    iget v5, p1, Lorg/opencv/core/Rect;->y:I

    iget v6, p1, Lorg/opencv/core/Rect;->width:I

    iget v7, p1, Lorg/opencv/core/Rect;->height:I

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    invoke-static/range {v0 .. v10}, Lorg/opencv/calib3d/Calib3d;->getValidDisparityROI_0(IIIIIIIIIII)[D

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/opencv/core/Rect;-><init>([D)V

    .line 316
    .local v11, "retVal":Lorg/opencv/core/Rect;
    return-object v11
.end method

.method private static native getValidDisparityROI_0(IIIIIIIIIII)[D
.end method

.method public static initCameraMatrix2D(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;)Lorg/opencv/core/Mat;
    .locals 13
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint3f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint2f;",
            ">;",
            "Lorg/opencv/core/Size;",
            ")",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint3f;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint2f;>;"
    const/4 v1, 0x0

    .line 296
    new-instance v11, Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .local v11, "objectPoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0, v11}, Lorg/opencv/utils/Converters;->vector_vector_Point3f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 298
    .local v10, "objectPoints_mat":Lorg/opencv/core/Mat;
    new-instance v9, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v9, "imagePoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1, v9}, Lorg/opencv/utils/Converters;->vector_vector_Point2f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 300
    .local v8, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v12, Lorg/opencv/core/Mat;

    iget-wide v0, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p2, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->initCameraMatrix2D_1(JJDD)J

    move-result-wide v0

    invoke-direct {v12, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 302
    .local v12, "retVal":Lorg/opencv/core/Mat;
    return-object v12

    .end local v8    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .end local v9    # "imagePoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .end local v10    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v11    # "objectPoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .end local v12    # "retVal":Lorg/opencv/core/Mat;
    :cond_1
    move v0, v1

    .line 296
    goto :goto_0
.end method

.method public static initCameraMatrix2D(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;D)Lorg/opencv/core/Mat;
    .locals 17
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "aspectRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint3f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint2f;",
            ">;",
            "Lorg/opencv/core/Size;",
            "D)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint3f;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint2f;>;"
    new-instance v15, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .local v15, "objectPoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lorg/opencv/utils/Converters;->vector_vector_Point3f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v14

    .line 286
    .local v14, "objectPoints_mat":Lorg/opencv/core/Mat;
    new-instance v13, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .local v13, "imagePoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/opencv/utils/Converters;->vector_vector_Point2f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v12

    .line 288
    .local v12, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v16, Lorg/opencv/core/Mat;

    iget-wide v2, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v10, p3

    invoke-static/range {v2 .. v11}, Lorg/opencv/calib3d/Calib3d;->initCameraMatrix2D_0(JJDDD)J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 290
    .local v16, "retVal":Lorg/opencv/core/Mat;
    return-object v16

    .line 284
    .end local v12    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .end local v13    # "imagePoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .end local v14    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v15    # "objectPoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .end local v16    # "retVal":Lorg/opencv/core/Mat;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 286
    .restart local v14    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .restart local v15    # "objectPoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static native initCameraMatrix2D_0(JJDDD)J
.end method

.method private static native initCameraMatrix2D_1(JJDD)J
.end method

.method public static initUndistortRectifyMap(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 19
    .param p0, "K"    # Lorg/opencv/core/Mat;
    .param p1, "D"    # Lorg/opencv/core/Mat;
    .param p2, "R"    # Lorg/opencv/core/Mat;
    .param p3, "P"    # Lorg/opencv/core/Mat;
    .param p4, "size"    # Lorg/opencv/core/Size;
    .param p5, "m1type"    # I
    .param p6, "map1"    # Lorg/opencv/core/Mat;
    .param p7, "map2"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1258
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

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

    move-object/from16 v0, p6

    iget-wide v15, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v17, v0

    move/from16 v14, p5

    invoke-static/range {v2 .. v18}, Lorg/opencv/calib3d/Calib3d;->initUndistortRectifyMap_0(JJJJDDIJJ)V

    .line 1260
    return-void
.end method

.method private static native initUndistortRectifyMap_0(JJJJDDIJJ)V
.end method

.method public static matMulDeriv(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "A"    # Lorg/opencv/core/Mat;
    .param p1, "B"    # Lorg/opencv/core/Mat;
    .param p2, "dABdA"    # Lorg/opencv/core/Mat;
    .param p3, "dABdB"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1077
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->matMulDeriv_0(JJJJ)V

    .line 1079
    return-void
.end method

.method private static native matMulDeriv_0(JJJJ)V
.end method

.method public static projectPoints(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfPoint2f;)V
    .locals 17
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "rvec"    # Lorg/opencv/core/Mat;
    .param p2, "tvec"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;

    .prologue
    .line 1101
    move-object/from16 v16, p0

    .line 1102
    .local v16, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p4

    .line 1103
    .local v14, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p5

    .line 1104
    .local v15, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v16

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v15, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->projectPoints_1(JJJJJJ)V

    .line 1106
    return-void
.end method

.method public static projectPoints(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;D)V
    .locals 21
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "rvec"    # Lorg/opencv/core/Mat;
    .param p2, "tvec"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p6, "jacobian"    # Lorg/opencv/core/Mat;
    .param p7, "aspectRatio"    # D

    .prologue
    .line 1090
    move-object/from16 v20, p0

    .line 1091
    .local v20, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v18, p4

    .line 1092
    .local v18, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v19, p5

    .line 1093
    .local v19, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v20

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v18

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v19

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, p7

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->projectPoints_0(JJJJJJJD)V

    .line 1095
    return-void
.end method

.method public static projectPoints(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 16
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "rvec"    # Lorg/opencv/core/Mat;
    .param p3, "tvec"    # Lorg/opencv/core/Mat;
    .param p4, "K"    # Lorg/opencv/core/Mat;
    .param p5, "D"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1281
    move-object/from16 v15, p0

    .line 1282
    .local v15, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p1

    .line 1283
    .local v14, "imagePoints_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->projectPoints_3(JJJJJJ)V

    .line 1285
    return-void
.end method

.method public static projectPoints(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;)V
    .locals 20
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "rvec"    # Lorg/opencv/core/Mat;
    .param p3, "tvec"    # Lorg/opencv/core/Mat;
    .param p4, "K"    # Lorg/opencv/core/Mat;
    .param p5, "D"    # Lorg/opencv/core/Mat;
    .param p6, "alpha"    # D
    .param p8, "jacobian"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1271
    move-object/from16 v19, p0

    .line 1272
    .local v19, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v18, p1

    .line 1273
    .local v18, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v18

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-wide/from16 v14, p6

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->projectPoints_2(JJJJJJDJ)V

    .line 1275
    return-void
.end method

.method private static native projectPoints_0(JJJJJJJD)V
.end method

.method private static native projectPoints_1(JJJJJJ)V
.end method

.method private static native projectPoints_2(JJJJJJDJ)V
.end method

.method private static native projectPoints_3(JJJJJJ)V
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 11
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "t"    # Lorg/opencv/core/Mat;

    .prologue
    .line 801
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->recoverPose_2(JJJJJ)I

    move-result v10

    .line 803
    .local v10, "retVal":I
    return v10
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;)I
    .locals 19
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "t"    # Lorg/opencv/core/Mat;
    .param p5, "focal"    # D
    .param p7, "pp"    # Lorg/opencv/core/Point;

    .prologue
    .line 792
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v14, v0, Lorg/opencv/core/Point;->x:D

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v16, v0

    move-wide/from16 v12, p5

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->recoverPose_1(JJJJJDDD)I

    move-result v18

    .line 794
    .local v18, "retVal":I
    return v18
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;Lorg/opencv/core/Mat;)I
    .locals 21
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "t"    # Lorg/opencv/core/Mat;
    .param p5, "focal"    # D
    .param p7, "pp"    # Lorg/opencv/core/Point;
    .param p8, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 783
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v14, v0, Lorg/opencv/core/Point;->x:D

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-wide/from16 v12, p5

    invoke-static/range {v2 .. v19}, Lorg/opencv/calib3d/Calib3d;->recoverPose_0(JJJJJDDDJ)I

    move-result v20

    .line 785
    .local v20, "retVal":I
    return v20
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 15
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "t"    # Lorg/opencv/core/Mat;

    .prologue
    .line 824
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->recoverPose_4(JJJJJJ)I

    move-result v14

    .line 826
    .local v14, "retVal":I
    return v14
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)I
    .locals 18
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "t"    # Lorg/opencv/core/Mat;
    .param p6, "distanceThresh"    # D

    .prologue
    .line 847
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p6

    invoke-static/range {v2 .. v15}, Lorg/opencv/calib3d/Calib3d;->recoverPose_6(JJJJJJD)I

    move-result v16

    .line 849
    .local v16, "retVal":I
    return v16
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 22
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "t"    # Lorg/opencv/core/Mat;
    .param p6, "distanceThresh"    # D
    .param p8, "mask"    # Lorg/opencv/core/Mat;
    .param p9, "triangulatedPoints"    # Lorg/opencv/core/Mat;

    .prologue
    .line 838
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-wide/from16 v14, p6

    invoke-static/range {v2 .. v19}, Lorg/opencv/calib3d/Calib3d;->recoverPose_5(JJJJJJDJJ)I

    move-result v20

    .line 840
    .local v20, "retVal":I
    return v20
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 17
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "t"    # Lorg/opencv/core/Mat;
    .param p6, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 815
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v15}, Lorg/opencv/calib3d/Calib3d;->recoverPose_3(JJJJJJJ)I

    move-result v16

    .line 817
    .local v16, "retVal":I
    return v16
.end method

.method private static native recoverPose_0(JJJJJDDDJ)I
.end method

.method private static native recoverPose_1(JJJJJDDD)I
.end method

.method private static native recoverPose_2(JJJJJ)I
.end method

.method private static native recoverPose_3(JJJJJJJ)I
.end method

.method private static native recoverPose_4(JJJJJJ)I
.end method

.method private static native recoverPose_5(JJJJJJDJJ)I
.end method

.method private static native recoverPose_6(JJJJJJD)I
.end method

.method public static rectify3Collinear(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Size;Lorg/opencv/core/Rect;Lorg/opencv/core/Rect;I)F
    .locals 56
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "cameraMatrix3"    # Lorg/opencv/core/Mat;
    .param p5, "distCoeffs3"    # Lorg/opencv/core/Mat;
    .param p8, "imageSize"    # Lorg/opencv/core/Size;
    .param p9, "R12"    # Lorg/opencv/core/Mat;
    .param p10, "T12"    # Lorg/opencv/core/Mat;
    .param p11, "R13"    # Lorg/opencv/core/Mat;
    .param p12, "T13"    # Lorg/opencv/core/Mat;
    .param p13, "R1"    # Lorg/opencv/core/Mat;
    .param p14, "R2"    # Lorg/opencv/core/Mat;
    .param p15, "R3"    # Lorg/opencv/core/Mat;
    .param p16, "P1"    # Lorg/opencv/core/Mat;
    .param p17, "P2"    # Lorg/opencv/core/Mat;
    .param p18, "P3"    # Lorg/opencv/core/Mat;
    .param p19, "Q"    # Lorg/opencv/core/Mat;
    .param p20, "alpha"    # D
    .param p22, "newImgSize"    # Lorg/opencv/core/Size;
    .param p23, "roi1"    # Lorg/opencv/core/Rect;
    .param p24, "roi2"    # Lorg/opencv/core/Rect;
    .param p25, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "D",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Rect;",
            "Lorg/opencv/core/Rect;",
            "I)F"
        }
    .end annotation

    .prologue
    .line 720
    .local p6, "imgpt1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p7, "imgpt3":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p6 .. p6}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v53

    .line 721
    .local v53, "imgpt1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p7 .. p7}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v54

    .line 722
    .local v54, "imgpt3_mat":Lorg/opencv/core/Mat;
    const/4 v2, 0x4

    new-array v0, v2, [D

    move-object/from16 v50, v0

    .line 723
    .local v50, "roi1_out":[D
    const/4 v2, 0x4

    new-array v0, v2, [D

    move-object/from16 v51, v0

    .line 724
    .local v51, "roi2_out":[D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v53

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v54

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p12

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p13

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p14

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p15

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p16

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p17

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p18

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p19

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v42, v0

    move-object/from16 v0, p22

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v46, v0

    move-object/from16 v0, p22

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v48, v0

    move-wide/from16 v44, p20

    move/from16 v52, p25

    invoke-static/range {v2 .. v52}, Lorg/opencv/calib3d/Calib3d;->rectify3Collinear_0(JJJJJJJJDDJJJJJJJJJJJDDD[D[DI)F

    move-result v55

    .line 725
    .local v55, "retVal":F
    if-eqz p23, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v50, v2

    double-to-int v2, v2

    move-object/from16 v0, p23

    iput v2, v0, Lorg/opencv/core/Rect;->x:I

    const/4 v2, 0x1

    aget-wide v2, v50, v2

    double-to-int v2, v2

    move-object/from16 v0, p23

    iput v2, v0, Lorg/opencv/core/Rect;->y:I

    const/4 v2, 0x2

    aget-wide v2, v50, v2

    double-to-int v2, v2

    move-object/from16 v0, p23

    iput v2, v0, Lorg/opencv/core/Rect;->width:I

    const/4 v2, 0x3

    aget-wide v2, v50, v2

    double-to-int v2, v2

    move-object/from16 v0, p23

    iput v2, v0, Lorg/opencv/core/Rect;->height:I

    .line 726
    :cond_0
    if-eqz p24, :cond_1

    const/4 v2, 0x0

    aget-wide v2, v51, v2

    double-to-int v2, v2

    move-object/from16 v0, p24

    iput v2, v0, Lorg/opencv/core/Rect;->x:I

    const/4 v2, 0x1

    aget-wide v2, v51, v2

    double-to-int v2, v2

    move-object/from16 v0, p24

    iput v2, v0, Lorg/opencv/core/Rect;->y:I

    const/4 v2, 0x2

    aget-wide v2, v51, v2

    double-to-int v2, v2

    move-object/from16 v0, p24

    iput v2, v0, Lorg/opencv/core/Rect;->width:I

    const/4 v2, 0x3

    aget-wide v2, v51, v2

    double-to-int v2, v2

    move-object/from16 v0, p24

    iput v2, v0, Lorg/opencv/core/Rect;->height:I

    .line 727
    :cond_1
    return v55
.end method

.method private static native rectify3Collinear_0(JJJJJJJJDDJJJJJJJJJJJDDD[D[DI)F
.end method

.method public static reprojectImageTo3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "_3dImage"    # Lorg/opencv/core/Mat;
    .param p2, "Q"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1136
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->reprojectImageTo3D_2(JJJ)V

    .line 1138
    return-void
.end method

.method public static reprojectImageTo3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 7
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "_3dImage"    # Lorg/opencv/core/Mat;
    .param p2, "Q"    # Lorg/opencv/core/Mat;
    .param p3, "handleMissingValues"    # Z

    .prologue
    .line 1127
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/calib3d/Calib3d;->reprojectImageTo3D_1(JJJZ)V

    .line 1129
    return-void
.end method

.method public static reprojectImageTo3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZI)V
    .locals 8
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "_3dImage"    # Lorg/opencv/core/Mat;
    .param p2, "Q"    # Lorg/opencv/core/Mat;
    .param p3, "handleMissingValues"    # Z
    .param p4, "ddepth"    # I

    .prologue
    .line 1118
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->reprojectImageTo3D_0(JJJZI)V

    .line 1120
    return-void
.end method

.method private static native reprojectImageTo3D_0(JJJZI)V
.end method

.method private static native reprojectImageTo3D_1(JJJZ)V
.end method

.method private static native reprojectImageTo3D_2(JJJ)V
.end method

.method public static sampsonDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 8
    .param p0, "pt1"    # Lorg/opencv/core/Mat;
    .param p1, "pt2"    # Lorg/opencv/core/Mat;
    .param p2, "F"    # Lorg/opencv/core/Mat;

    .prologue
    .line 581
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->sampsonDistance_0(JJJ)D

    move-result-wide v6

    .line 583
    .local v6, "retVal":D
    return-wide v6
.end method

.method private static native sampsonDistance_0(JJJ)D
.end method

.method public static solveP3P(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;I)I
    .locals 18
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 860
    .local p4, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v16, Lorg/opencv/core/Mat;

    invoke-direct/range {v16 .. v16}, Lorg/opencv/core/Mat;-><init>()V

    .line 861
    .local v16, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v17, Lorg/opencv/core/Mat;

    invoke-direct/range {v17 .. v17}, Lorg/opencv/core/Mat;-><init>()V

    .line 862
    .local v17, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v16

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v17

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v14, p6

    invoke-static/range {v2 .. v14}, Lorg/opencv/calib3d/Calib3d;->solveP3P_0(JJJJJJI)I

    move-result v15

    .line 863
    .local v15, "retVal":I
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 864
    invoke-virtual/range {v16 .. v16}, Lorg/opencv/core/Mat;->release()V

    .line 865
    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 866
    invoke-virtual/range {v17 .. v17}, Lorg/opencv/core/Mat;->release()V

    .line 867
    return v15
.end method

.method private static native solveP3P_0(JJJJJJI)I
.end method

.method public static solvePnP(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 18
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;

    .prologue
    .line 414
    move-object/from16 v16, p0

    .line 415
    .local v16, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p1

    .line 416
    .local v15, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p3

    .line 417
    .local v14, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v16

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->solvePnP_1(JJJJJJ)Z

    move-result v17

    .line 419
    .local v17, "retVal":Z
    return v17
.end method

.method public static solvePnP(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZI)Z
    .locals 20
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "flags"    # I

    .prologue
    .line 403
    move-object/from16 v18, p0

    .line 404
    .local v18, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v17, p1

    .line 405
    .local v17, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v16, p3

    .line 406
    .local v16, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v18

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v17

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-static/range {v2 .. v15}, Lorg/opencv/calib3d/Calib3d;->solvePnP_0(JJJJJJZI)Z

    move-result v19

    .line 408
    .local v19, "retVal":Z
    return v19
.end method

.method public static solvePnPRansac(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 18
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;

    .prologue
    .line 441
    move-object/from16 v16, p0

    .line 442
    .local v16, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p1

    .line 443
    .local v15, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p3

    .line 444
    .local v14, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v16

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->solvePnPRansac_1(JJJJJJ)Z

    move-result v17

    .line 446
    .local v17, "retVal":Z
    return v17
.end method

.method public static solvePnPRansac(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZIFDLorg/opencv/core/Mat;I)Z
    .locals 27
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "iterationsCount"    # I
    .param p8, "reprojectionError"    # F
    .param p9, "confidence"    # D
    .param p11, "inliers"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I

    .prologue
    .line 430
    move-object/from16 v24, p0

    .line 431
    .local v24, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v23, p1

    .line 432
    .local v23, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v22, p3

    .line 433
    .local v22, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v24

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v23

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v22

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v19, v0

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move-wide/from16 v17, p9

    move/from16 v21, p12

    invoke-static/range {v2 .. v21}, Lorg/opencv/calib3d/Calib3d;->solvePnPRansac_0(JJJJJJZIFDJI)Z

    move-result v25

    .line 435
    .local v25, "retVal":Z
    return v25
.end method

.method private static native solvePnPRansac_0(JJJJJJZIFDJI)Z
.end method

.method private static native solvePnPRansac_1(JJJJJJ)Z
.end method

.method private static native solvePnP_0(JJJJJJZI)Z
.end method

.method private static native solvePnP_1(JJJJJJ)Z
.end method

.method public static stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 30
    .param p3, "K1"    # Lorg/opencv/core/Mat;
    .param p4, "D1"    # Lorg/opencv/core/Mat;
    .param p5, "K2"    # Lorg/opencv/core/Mat;
    .param p6, "D2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")D"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v26

    .line 705
    .local v26, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v24

    .line 706
    .local v24, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v25

    .line 707
    .local v25, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v26

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v24

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v25

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    invoke-static/range {v2 .. v23}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrate_5(JJJJJJJDDJJ)D

    move-result-wide v28

    .line 709
    .local v28, "retVal":D
    return-wide v28
.end method

.method public static stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 30
    .param p3, "K1"    # Lorg/opencv/core/Mat;
    .param p4, "D1"    # Lorg/opencv/core/Mat;
    .param p5, "K2"    # Lorg/opencv/core/Mat;
    .param p6, "D2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I)D"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v27

    .line 694
    .local v27, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v25

    .line 695
    .local v25, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v26

    .line 696
    .local v26, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v27

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v25

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v26

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move/from16 v24, p10

    invoke-static/range {v2 .. v24}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrate_4(JJJJJJJDDJJI)D

    move-result-wide v28

    .line 698
    .local v28, "retVal":D
    return-wide v28
.end method

.method public static stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;)D
    .locals 34
    .param p3, "K1"    # Lorg/opencv/core/Mat;
    .param p4, "D1"    # Lorg/opencv/core/Mat;
    .param p5, "K2"    # Lorg/opencv/core/Mat;
    .param p6, "D2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "flags"    # I
    .param p11, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v31

    .line 683
    .local v31, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v29

    .line 684
    .local v29, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v30

    .line 685
    .local v30, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v31

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v29

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v30

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p11

    iget v0, v0, Lorg/opencv/core/TermCriteria;->type:I

    move/from16 v25, v0

    move-object/from16 v0, p11

    iget v0, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move/from16 v26, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v27, v0

    move/from16 v24, p10

    invoke-static/range {v2 .. v28}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrate_3(JJJJJJJDDJJIIID)D

    move-result-wide v32

    .line 687
    .local v32, "retVal":D
    return-wide v32
.end method

.method public static stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 34
    .param p3, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p5, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p6, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "E"    # Lorg/opencv/core/Mat;
    .param p11, "F"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")D"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v30

    .line 617
    .local v30, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v28

    .line 618
    .local v28, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v29

    .line 619
    .local v29, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v30

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v29

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v0

    invoke-static/range {v2 .. v27}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrate_2(JJJJJJJDDJJJJ)D

    move-result-wide v32

    .line 621
    .local v32, "retVal":D
    return-wide v32
.end method

.method public static stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 34
    .param p3, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p5, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p6, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "E"    # Lorg/opencv/core/Mat;
    .param p11, "F"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I)D"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v31

    .line 606
    .local v31, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v29

    .line 607
    .local v29, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v30

    .line 608
    .local v30, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v31

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v29

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v30

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v0

    move/from16 v28, p12

    invoke-static/range {v2 .. v28}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrate_1(JJJJJJJDDJJJJI)D

    move-result-wide v32

    .line 610
    .local v32, "retVal":D
    return-wide v32
.end method

.method public static stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;)D
    .locals 38
    .param p3, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p5, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p6, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "E"    # Lorg/opencv/core/Mat;
    .param p11, "F"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v35

    .line 595
    .local v35, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v33

    .line 596
    .local v33, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v34

    .line 597
    .local v34, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, v35

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v33

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v34

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p13

    iget v0, v0, Lorg/opencv/core/TermCriteria;->type:I

    move/from16 v29, v0

    move-object/from16 v0, p13

    iget v0, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move/from16 v30, v0

    move-object/from16 v0, p13

    iget-wide v0, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v31, v0

    move/from16 v28, p12

    invoke-static/range {v2 .. v32}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrate_0(JJJJJJJDDJJJJIIID)D

    move-result-wide v36

    .line 599
    .local v36, "retVal":D
    return-wide v36
.end method

.method private static native stereoCalibrate_0(JJJJJJJDDJJJJIIID)D
.end method

.method private static native stereoCalibrate_1(JJJJJJJDDJJJJI)D
.end method

.method private static native stereoCalibrate_2(JJJJJJJDDJJJJ)D
.end method

.method private static native stereoCalibrate_3(JJJJJJJDDJJIIID)D
.end method

.method private static native stereoCalibrate_4(JJJJJJJDDJJI)D
.end method

.method private static native stereoCalibrate_5(JJJJJJJDDJJ)D
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 28
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "T"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1161
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

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

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v0

    invoke-static/range {v2 .. v27}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_1(JJJJDDJJJJJJJ)V

    .line 1163
    return-void
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 29
    .param p0, "K1"    # Lorg/opencv/core/Mat;
    .param p1, "D1"    # Lorg/opencv/core/Mat;
    .param p2, "K2"    # Lorg/opencv/core/Mat;
    .param p3, "D2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "tvec"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I

    .prologue
    .line 1306
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

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

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v0

    move/from16 v28, p12

    invoke-static/range {v2 .. v28}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_3(JJJJDDJJJJJJJI)V

    .line 1308
    return-void
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDLorg/opencv/core/Size;Lorg/opencv/core/Rect;Lorg/opencv/core/Rect;)V
    .locals 37
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "T"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "alpha"    # D
    .param p15, "newImageSize"    # Lorg/opencv/core/Size;
    .param p16, "validPixROI1"    # Lorg/opencv/core/Rect;
    .param p17, "validPixROI2"    # Lorg/opencv/core/Rect;

    .prologue
    .line 1149
    const/4 v2, 0x4

    new-array v0, v2, [D

    move-object/from16 v35, v0

    .line 1150
    .local v35, "validPixROI1_out":[D
    const/4 v2, 0x4

    new-array v0, v2, [D

    move-object/from16 v36, v0

    .line 1151
    .local v36, "validPixROI2_out":[D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

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

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p15

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v31, v0

    move-object/from16 v0, p15

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v33, v0

    move/from16 v28, p12

    move-wide/from16 v29, p13

    invoke-static/range {v2 .. v36}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_0(JJJJDDJJJJJJJIDDD[D[D)V

    .line 1152
    if-eqz p16, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v35, v2

    double-to-int v2, v2

    move-object/from16 v0, p16

    iput v2, v0, Lorg/opencv/core/Rect;->x:I

    const/4 v2, 0x1

    aget-wide v2, v35, v2

    double-to-int v2, v2

    move-object/from16 v0, p16

    iput v2, v0, Lorg/opencv/core/Rect;->y:I

    const/4 v2, 0x2

    aget-wide v2, v35, v2

    double-to-int v2, v2

    move-object/from16 v0, p16

    iput v2, v0, Lorg/opencv/core/Rect;->width:I

    const/4 v2, 0x3

    aget-wide v2, v35, v2

    double-to-int v2, v2

    move-object/from16 v0, p16

    iput v2, v0, Lorg/opencv/core/Rect;->height:I

    .line 1153
    :cond_0
    if-eqz p17, :cond_1

    const/4 v2, 0x0

    aget-wide v2, v36, v2

    double-to-int v2, v2

    move-object/from16 v0, p17

    iput v2, v0, Lorg/opencv/core/Rect;->x:I

    const/4 v2, 0x1

    aget-wide v2, v36, v2

    double-to-int v2, v2

    move-object/from16 v0, p17

    iput v2, v0, Lorg/opencv/core/Rect;->y:I

    const/4 v2, 0x2

    aget-wide v2, v36, v2

    double-to-int v2, v2

    move-object/from16 v0, p17

    iput v2, v0, Lorg/opencv/core/Rect;->width:I

    const/4 v2, 0x3

    aget-wide v2, v36, v2

    double-to-int v2, v2

    move-object/from16 v0, p17

    iput v2, v0, Lorg/opencv/core/Rect;->height:I

    .line 1154
    :cond_1
    return-void
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Size;DD)V
    .locals 38
    .param p0, "K1"    # Lorg/opencv/core/Mat;
    .param p1, "D1"    # Lorg/opencv/core/Mat;
    .param p2, "K2"    # Lorg/opencv/core/Mat;
    .param p3, "D2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "tvec"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "newImageSize"    # Lorg/opencv/core/Size;
    .param p14, "balance"    # D
    .param p16, "fov_scale"    # D

    .prologue
    .line 1297
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

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

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p11

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p13

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v29, v0

    move-object/from16 v0, p13

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v31, v0

    move/from16 v28, p12

    move-wide/from16 v33, p14

    move-wide/from16 v35, p16

    invoke-static/range {v2 .. v36}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_2(JJJJDDJJJJJJJIDDDD)V

    .line 1299
    return-void
.end method

.method public static stereoRectifyUncalibrated(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 17
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "F"    # Lorg/opencv/core/Mat;
    .param p3, "imgSize"    # Lorg/opencv/core/Size;
    .param p4, "H1"    # Lorg/opencv/core/Mat;
    .param p5, "H2"    # Lorg/opencv/core/Mat;

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v15}, Lorg/opencv/calib3d/Calib3d;->stereoRectifyUncalibrated_1(JJJDDJJ)Z

    move-result v16

    .line 469
    .local v16, "retVal":Z
    return v16
.end method

.method public static stereoRectifyUncalibrated(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)Z
    .locals 20
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "F"    # Lorg/opencv/core/Mat;
    .param p3, "imgSize"    # Lorg/opencv/core/Size;
    .param p4, "H1"    # Lorg/opencv/core/Mat;
    .param p5, "H2"    # Lorg/opencv/core/Mat;
    .param p6, "threshold"    # D

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, p6

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->stereoRectifyUncalibrated_0(JJJDDJJD)Z

    move-result v18

    .line 460
    .local v18, "retVal":Z
    return v18
.end method

.method private static native stereoRectifyUncalibrated_0(JJJDDJJD)Z
.end method

.method private static native stereoRectifyUncalibrated_1(JJJDDJJ)Z
.end method

.method private static native stereoRectify_0(JJJJDDJJJJJJJIDDD[D[D)V
.end method

.method private static native stereoRectify_1(JJJJDDJJJJJJJ)V
.end method

.method private static native stereoRectify_2(JJJJDDJJJJJJJIDDDD)V
.end method

.method private static native stereoRectify_3(JJJJDDJJJJJJJI)V
.end method

.method public static triangulatePoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "projMatr1"    # Lorg/opencv/core/Mat;
    .param p1, "projMatr2"    # Lorg/opencv/core/Mat;
    .param p2, "projPoints1"    # Lorg/opencv/core/Mat;
    .param p3, "projPoints2"    # Lorg/opencv/core/Mat;
    .param p4, "points4D"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1175
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->triangulatePoints_0(JJJJJ)V

    .line 1177
    return-void
.end method

.method private static native triangulatePoints_0(JJJJJ)V
.end method

.method public static undistortImage(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1329
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->undistortImage_1(JJJJ)V

    .line 1331
    return-void
.end method

.method public static undistortImage(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V
    .locals 16
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;
    .param p4, "Knew"    # Lorg/opencv/core/Mat;
    .param p5, "new_size"    # Lorg/opencv/core/Size;

    .prologue
    .line 1320
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v2 .. v15}, Lorg/opencv/calib3d/Calib3d;->undistortImage_0(JJJJJDD)V

    .line 1322
    return-void
.end method

.method private static native undistortImage_0(JJJJJDD)V
.end method

.method private static native undistortImage_1(JJJJ)V
.end method

.method public static undistortPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1352
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->undistortPoints_1(JJJJ)V

    .line 1354
    return-void
.end method

.method public static undistortPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 14
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "P"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1343
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->undistortPoints_0(JJJJJJ)V

    .line 1345
    return-void
.end method

.method private static native undistortPoints_0(JJJJJJ)V
.end method

.method private static native undistortPoints_1(JJJJ)V
.end method

.method public static validateDisparity(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 6
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "cost"    # Lorg/opencv/core/Mat;
    .param p2, "minDisparity"    # I
    .param p3, "numberOfDisparities"    # I

    .prologue
    .line 1198
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->validateDisparity_1(JJII)V

    .line 1200
    return-void
.end method

.method public static validateDisparity(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;III)V
    .locals 7
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "cost"    # Lorg/opencv/core/Mat;
    .param p2, "minDisparity"    # I
    .param p3, "numberOfDisparities"    # I
    .param p4, "disp12MaxDisp"    # I

    .prologue
    .line 1189
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/calib3d/Calib3d;->validateDisparity_0(JJIII)V

    .line 1191
    return-void
.end method

.method private static native validateDisparity_0(JJIII)V
.end method

.method private static native validateDisparity_1(JJII)V
.end method
