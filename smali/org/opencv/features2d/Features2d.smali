.class public Lorg/opencv/features2d/Features2d;
.super Ljava/lang/Object;
.source "Features2d.java"


# static fields
.field public static final DRAW_OVER_OUTIMG:I = 0x1

.field public static final DRAW_RICH_KEYPOINTS:I = 0x4

.field public static final NOT_DRAW_SINGLE_POINTS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawKeypoints(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;)V
    .locals 7
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "outImage"    # Lorg/opencv/core/Mat;

    .prologue
    .line 40
    move-object v6, p1

    .line 41
    .local v6, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/features2d/Features2d;->drawKeypoints_1(JJJ)V

    .line 43
    return-void
.end method

.method public static drawKeypoints(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;I)V
    .locals 18
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "outImage"    # Lorg/opencv/core/Mat;
    .param p3, "color"    # Lorg/opencv/core/Scalar;
    .param p4, "flags"    # I

    .prologue
    .line 31
    move-object/from16 v17, p1

    .line 32
    .local v17, "keypoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v17

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    move-object/from16 v0, p3

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    move-object/from16 v0, p3

    iget-object v14, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v15, 0x3

    aget-wide v14, v14, v15

    move/from16 v16, p4

    invoke-static/range {v2 .. v16}, Lorg/opencv/features2d/Features2d;->drawKeypoints_0(JJJDDDDI)V

    .line 34
    return-void
.end method

.method private static native drawKeypoints_0(JJJDDDDI)V
.end method

.method private static native drawKeypoints_1(JJJ)V
.end method

.method public static drawMatches(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/MatOfDMatch;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p4, "matches1to2"    # Lorg/opencv/core/MatOfDMatch;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;

    .prologue
    .line 66
    move-object/from16 v14, p1

    .line 67
    .local v14, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p3

    .line 68
    .local v15, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v16, p4

    .line 69
    .local v16, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v16

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/features2d/Features2d;->drawMatches_1(JJJJJJ)V

    .line 71
    return-void
.end method

.method public static drawMatches(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/MatOfDMatch;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;Lorg/opencv/core/MatOfByte;I)V
    .locals 37
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p4, "matches1to2"    # Lorg/opencv/core/MatOfDMatch;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .param p7, "singlePointColor"    # Lorg/opencv/core/Scalar;
    .param p8, "matchesMask"    # Lorg/opencv/core/MatOfByte;
    .param p9, "flags"    # I

    .prologue
    .line 54
    move-object/from16 v33, p1

    .line 55
    .local v33, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v34, p3

    .line 56
    .local v34, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v35, p4

    .line 57
    .local v35, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v36, p8

    .line 58
    .local v36, "matchesMask_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v33

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v35

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-object v14, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-wide v18, v18, v19

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-wide v20, v20, v21

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-wide v24, v24, v25

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget-wide v26, v26, v27

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v28, v0

    const/16 v29, 0x3

    aget-wide v28, v28, v29

    move-object/from16 v0, v36

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v30, v0

    move/from16 v32, p9

    invoke-static/range {v2 .. v32}, Lorg/opencv/features2d/Features2d;->drawMatches_0(JJJJJJDDDDDDDDJI)V

    .line 60
    return-void
.end method

.method public static drawMatches2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 18
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p4, "matches1to2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    move-object/from16 v14, p1

    .line 97
    .local v14, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p3

    .line 98
    .local v15, "keypoints2_mat":Lorg/opencv/core/Mat;
    new-instance v17, Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .local v17, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v16

    .line 100
    .local v16, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v16

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/features2d/Features2d;->drawMatches2_1(JJJJJJ)V

    .line 102
    return-void

    .line 98
    .end local v16    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .end local v17    # "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static drawMatches2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;Ljava/util/List;I)V
    .locals 39
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .param p7, "singlePointColor"    # Lorg/opencv/core/Scalar;
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Scalar;",
            "Lorg/opencv/core/Scalar;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfByte;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p4, "matches1to2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p8, "matchesMask":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfByte;>;"
    move-object/from16 v33, p1

    .line 83
    .local v33, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v34, p3

    .line 84
    .local v34, "keypoints2_mat":Lorg/opencv/core/Mat;
    new-instance v36, Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    move-object/from16 v0, v36

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v36, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v35

    .line 86
    .local v35, "matches1to2_mat":Lorg/opencv/core/Mat;
    new-instance v38, Ljava/util/ArrayList;

    if-eqz p8, :cond_1

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v38, "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p8

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->vector_vector_char_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v37

    .line 88
    .local v37, "matchesMask_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v33

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v35

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-object v14, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-wide v18, v18, v19

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-wide v20, v20, v21

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-wide v24, v24, v25

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget-wide v26, v26, v27

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v28, v0

    const/16 v29, 0x3

    aget-wide v28, v28, v29

    move-object/from16 v0, v37

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v30, v0

    move/from16 v32, p9

    invoke-static/range {v2 .. v32}, Lorg/opencv/features2d/Features2d;->drawMatches2_0(JJJJJJDDDDDDDDJI)V

    .line 90
    return-void

    .line 84
    .end local v35    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .end local v36    # "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .end local v37    # "matchesMask_mat":Lorg/opencv/core/Mat;
    .end local v38    # "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 86
    .restart local v35    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .restart local v36    # "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private static native drawMatches2_0(JJJJJJDDDDDDDDJI)V
.end method

.method private static native drawMatches2_1(JJJJJJ)V
.end method

.method public static drawMatchesKnn(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 18
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p4, "matches1to2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    move-object/from16 v14, p1

    .line 128
    .local v14, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p3

    .line 129
    .local v15, "keypoints2_mat":Lorg/opencv/core/Mat;
    new-instance v17, Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v17, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v16

    .line 131
    .local v16, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v16

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/features2d/Features2d;->drawMatchesKnn_1(JJJJJJ)V

    .line 133
    return-void

    .line 129
    .end local v16    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .end local v17    # "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static drawMatchesKnn(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;Ljava/util/List;I)V
    .locals 39
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .param p7, "singlePointColor"    # Lorg/opencv/core/Scalar;
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Scalar;",
            "Lorg/opencv/core/Scalar;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfByte;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p4, "matches1to2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p8, "matchesMask":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfByte;>;"
    move-object/from16 v33, p1

    .line 114
    .local v33, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v34, p3

    .line 115
    .local v34, "keypoints2_mat":Lorg/opencv/core/Mat;
    new-instance v36, Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    move-object/from16 v0, v36

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v36, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v35

    .line 117
    .local v35, "matches1to2_mat":Lorg/opencv/core/Mat;
    new-instance v38, Ljava/util/ArrayList;

    if-eqz p8, :cond_1

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v38, "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p8

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lorg/opencv/utils/Converters;->vector_vector_char_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v37

    .line 119
    .local v37, "matchesMask_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v33

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v35

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-object v14, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-wide v18, v18, v19

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-wide v20, v20, v21

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-wide v24, v24, v25

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget-wide v26, v26, v27

    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v28, v0

    const/16 v29, 0x3

    aget-wide v28, v28, v29

    move-object/from16 v0, v37

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v30, v0

    move/from16 v32, p9

    invoke-static/range {v2 .. v32}, Lorg/opencv/features2d/Features2d;->drawMatchesKnn_0(JJJJJJDDDDDDDDJI)V

    .line 121
    return-void

    .line 115
    .end local v35    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .end local v36    # "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .end local v37    # "matchesMask_mat":Lorg/opencv/core/Mat;
    .end local v38    # "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 117
    .restart local v35    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .restart local v36    # "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private static native drawMatchesKnn_0(JJJJJJDDDDDDDDJI)V
.end method

.method private static native drawMatchesKnn_1(JJJJJJ)V
.end method

.method private static native drawMatches_0(JJJJJJDDDDDDDDJI)V
.end method

.method private static native drawMatches_1(JJJJJJ)V
.end method
