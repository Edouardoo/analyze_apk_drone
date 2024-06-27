.class public Lorg/opencv/ml/EM;
.super Lorg/opencv/ml/StatModel;
.source "EM.java"


# static fields
.field public static final COV_MAT_DEFAULT:I = 0x1

.field public static final COV_MAT_DIAGONAL:I = 0x1

.field public static final COV_MAT_GENERIC:I = 0x2

.field public static final COV_MAT_SPHERICAL:I = 0x0

.field public static final DEFAULT_MAX_ITERS:I = 0x64

.field public static final DEFAULT_NCLUSTERS:I = 0x5

.field public static final START_AUTO_STEP:I = 0x0

.field public static final START_E_STEP:I = 0x1

.field public static final START_M_STEP:I = 0x2


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/ml/EM;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lorg/opencv/ml/EM;

    invoke-static {}, Lorg/opencv/ml/EM;->create_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/EM;-><init>(J)V

    .line 70
    .local v0, "retVal":Lorg/opencv/ml/EM;
    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getClustersNumber_0(J)I
.end method

.method private static native getCovarianceMatrixType_0(J)I
.end method

.method private static native getCovs_0(JJ)V
.end method

.method private static native getMeans_0(J)J
.end method

.method private static native getTermCriteria_0(J)[D
.end method

.method private static native getWeights_0(J)J
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/EM;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lorg/opencv/ml/EM;

    invoke-static {p0}, Lorg/opencv/ml/EM;->load_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/EM;-><init>(J)V

    .line 93
    .local v0, "retVal":Lorg/opencv/ml/EM;
    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/ml/EM;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Lorg/opencv/ml/EM;

    invoke-static {p0, p1}, Lorg/opencv/ml/EM;->load_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/EM;-><init>(J)V

    .line 84
    .local v0, "retVal":Lorg/opencv/ml/EM;
    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native load_1(Ljava/lang/String;)J
.end method

.method private static native predict2_0(JJJ)[D
.end method

.method private static native predict_0(JJJI)F
.end method

.method private static native predict_1(JJ)F
.end method

.method private static native setClustersNumber_0(JI)V
.end method

.method private static native setCovarianceMatrixType_0(JI)V
.end method

.method private static native setTermCriteria_0(JIID)V
.end method

.method private static native trainEM_0(JJJJJ)Z
.end method

.method private static native trainEM_1(JJ)Z
.end method

.method private static native trainE_0(JJJJJJJJ)Z
.end method

.method private static native trainE_1(JJJ)Z
.end method

.method private static native trainM_0(JJJJJJ)Z
.end method

.method private static native trainM_1(JJJ)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 304
    iget-wide v0, p0, Lorg/opencv/ml/EM;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/EM;->delete(J)V

    .line 305
    return-void
.end method

.method public getClustersNumber()I
    .locals 4

    .prologue
    .line 225
    iget-wide v2, p0, Lorg/opencv/ml/EM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/EM;->getClustersNumber_0(J)I

    move-result v0

    .line 227
    .local v0, "retVal":I
    return v0
.end method

.method public getCovarianceMatrixType()I
    .locals 4

    .prologue
    .line 239
    iget-wide v2, p0, Lorg/opencv/ml/EM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/EM;->getCovarianceMatrixType_0(J)I

    move-result v0

    .line 241
    .local v0, "retVal":I
    return v0
.end method

.method public getCovs(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "covs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 253
    .local v0, "covs_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/ml/EM;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/ml/EM;->getCovs_0(JJ)V

    .line 254
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 255
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 256
    return-void
.end method

.method public getMeans()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/EM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/EM;->getMeans_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 42
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getTermCriteria()Lorg/opencv/core/TermCriteria;
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lorg/opencv/core/TermCriteria;

    iget-wide v2, p0, Lorg/opencv/ml/EM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/EM;->getTermCriteria_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/TermCriteria;-><init>([D)V

    .line 107
    .local v0, "retVal":Lorg/opencv/core/TermCriteria;
    return-object v0
.end method

.method public getWeights()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/EM;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/EM;->getWeights_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 56
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public predict(Lorg/opencv/core/Mat;)F
    .locals 6
    .param p1, "samples"    # Lorg/opencv/core/Mat;

    .prologue
    .line 211
    iget-wide v2, p0, Lorg/opencv/ml/EM;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/ml/EM;->predict_1(JJ)F

    move-result v0

    .line 213
    .local v0, "retVal":F
    return v0
.end method

.method public predict(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)F
    .locals 8
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "results"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .prologue
    .line 202
    iget-wide v0, p0, Lorg/opencv/ml/EM;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/ml/EM;->predict_0(JJJI)F

    move-result v7

    .line 204
    .local v7, "retVal":F
    return v7
.end method

.method public predict2(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)[D
    .locals 7
    .param p1, "sample"    # Lorg/opencv/core/Mat;
    .param p2, "probs"    # Lorg/opencv/core/Mat;

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/opencv/ml/EM;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/EM;->predict2_0(JJJ)[D

    move-result-object v6

    .line 121
    .local v6, "retVal":[D
    return-object v6
.end method

.method public setClustersNumber(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 268
    iget-wide v0, p0, Lorg/opencv/ml/EM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/EM;->setClustersNumber_0(JI)V

    .line 270
    return-void
.end method

.method public setCovarianceMatrixType(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 282
    iget-wide v0, p0, Lorg/opencv/ml/EM;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/EM;->setCovarianceMatrixType_0(JI)V

    .line 284
    return-void
.end method

.method public setTermCriteria(Lorg/opencv/core/TermCriteria;)V
    .locals 6
    .param p1, "val"    # Lorg/opencv/core/TermCriteria;

    .prologue
    .line 296
    iget-wide v0, p0, Lorg/opencv/ml/EM;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/TermCriteria;->type:I

    iget v3, p1, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p1, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/EM;->setTermCriteria_0(JIID)V

    .line 298
    return-void
.end method

.method public trainE(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 7
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "means0"    # Lorg/opencv/core/Mat;

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/opencv/ml/EM;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/EM;->trainE_1(JJJ)Z

    move-result v6

    .line 144
    .local v6, "retVal":Z
    return v6
.end method

.method public trainE(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 19
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "means0"    # Lorg/opencv/core/Mat;
    .param p3, "covs0"    # Lorg/opencv/core/Mat;
    .param p4, "weights0"    # Lorg/opencv/core/Mat;
    .param p5, "logLikelihoods"    # Lorg/opencv/core/Mat;
    .param p6, "labels"    # Lorg/opencv/core/Mat;
    .param p7, "probs"    # Lorg/opencv/core/Mat;

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/ml/EM;->nativeObj:J

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

    invoke-static/range {v2 .. v17}, Lorg/opencv/ml/EM;->trainE_0(JJJJJJJJ)Z

    move-result v18

    .line 135
    .local v18, "retVal":Z
    return v18
.end method

.method public trainEM(Lorg/opencv/core/Mat;)Z
    .locals 6
    .param p1, "samples"    # Lorg/opencv/core/Mat;

    .prologue
    .line 165
    iget-wide v2, p0, Lorg/opencv/ml/EM;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/ml/EM;->trainEM_1(JJ)Z

    move-result v0

    .line 167
    .local v0, "retVal":Z
    return v0
.end method

.method public trainEM(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 11
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "logLikelihoods"    # Lorg/opencv/core/Mat;
    .param p3, "labels"    # Lorg/opencv/core/Mat;
    .param p4, "probs"    # Lorg/opencv/core/Mat;

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/opencv/ml/EM;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/ml/EM;->trainEM_0(JJJJJ)Z

    move-result v10

    .line 158
    .local v10, "retVal":Z
    return v10
.end method

.method public trainM(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 7
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "probs0"    # Lorg/opencv/core/Mat;

    .prologue
    .line 188
    iget-wide v0, p0, Lorg/opencv/ml/EM;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/EM;->trainM_1(JJJ)Z

    move-result v6

    .line 190
    .local v6, "retVal":Z
    return v6
.end method

.method public trainM(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 15
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "probs0"    # Lorg/opencv/core/Mat;
    .param p3, "logLikelihoods"    # Lorg/opencv/core/Mat;
    .param p4, "labels"    # Lorg/opencv/core/Mat;
    .param p5, "probs"    # Lorg/opencv/core/Mat;

    .prologue
    .line 179
    iget-wide v2, p0, Lorg/opencv/ml/EM;->nativeObj:J

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

    invoke-static/range {v2 .. v13}, Lorg/opencv/ml/EM;->trainM_0(JJJJJJ)Z

    move-result v14

    .line 181
    .local v14, "retVal":Z
    return v14
.end method
