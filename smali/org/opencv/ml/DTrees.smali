.class public Lorg/opencv/ml/DTrees;
.super Lorg/opencv/ml/StatModel;
.source "DTrees.java"


# static fields
.field public static final PREDICT_AUTO:I = 0x0

.field public static final PREDICT_MASK:I = 0x300

.field public static final PREDICT_MAX_VOTE:I = 0x200

.field public static final PREDICT_SUM:I = 0x100


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/ml/DTrees;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lorg/opencv/ml/DTrees;

    invoke-static {}, Lorg/opencv/ml/DTrees;->create_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/DTrees;-><init>(J)V

    .line 48
    .local v0, "retVal":Lorg/opencv/ml/DTrees;
    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getCVFolds_0(J)I
.end method

.method private static native getMaxCategories_0(J)I
.end method

.method private static native getMaxDepth_0(J)I
.end method

.method private static native getMinSampleCount_0(J)I
.end method

.method private static native getPriors_0(J)J
.end method

.method private static native getRegressionAccuracy_0(J)F
.end method

.method private static native getTruncatePrunedTree_0(J)Z
.end method

.method private static native getUse1SERule_0(J)Z
.end method

.method private static native getUseSurrogates_0(J)Z
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/DTrees;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lorg/opencv/ml/DTrees;

    invoke-static {p0}, Lorg/opencv/ml/DTrees;->load_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/DTrees;-><init>(J)V

    .line 71
    .local v0, "retVal":Lorg/opencv/ml/DTrees;
    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/ml/DTrees;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lorg/opencv/ml/DTrees;

    invoke-static {p0, p1}, Lorg/opencv/ml/DTrees;->load_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/DTrees;-><init>(J)V

    .line 62
    .local v0, "retVal":Lorg/opencv/ml/DTrees;
    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native load_1(Ljava/lang/String;)J
.end method

.method private static native setCVFolds_0(JI)V
.end method

.method private static native setMaxCategories_0(JI)V
.end method

.method private static native setMaxDepth_0(JI)V
.end method

.method private static native setMinSampleCount_0(JI)V
.end method

.method private static native setPriors_0(JJ)V
.end method

.method private static native setRegressionAccuracy_0(JF)V
.end method

.method private static native setTruncatePrunedTree_0(JZ)V
.end method

.method private static native setUse1SERule_0(JZ)V
.end method

.method private static native setUseSurrogates_0(JZ)V
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
    .line 315
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->delete(J)V

    .line 316
    return-void
.end method

.method public getCVFolds()I
    .locals 4

    .prologue
    .line 139
    iget-wide v2, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/DTrees;->getCVFolds_0(J)I

    move-result v0

    .line 141
    .local v0, "retVal":I
    return v0
.end method

.method public getMaxCategories()I
    .locals 4

    .prologue
    .line 153
    iget-wide v2, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/DTrees;->getMaxCategories_0(J)I

    move-result v0

    .line 155
    .local v0, "retVal":I
    return v0
.end method

.method public getMaxDepth()I
    .locals 4

    .prologue
    .line 167
    iget-wide v2, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/DTrees;->getMaxDepth_0(J)I

    move-result v0

    .line 169
    .local v0, "retVal":I
    return v0
.end method

.method public getMinSampleCount()I
    .locals 4

    .prologue
    .line 181
    iget-wide v2, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/DTrees;->getMinSampleCount_0(J)I

    move-result v0

    .line 183
    .local v0, "retVal":I
    return v0
.end method

.method public getPriors()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/DTrees;->getPriors_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 34
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getRegressionAccuracy()F
    .locals 4

    .prologue
    .line 125
    iget-wide v2, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/DTrees;->getRegressionAccuracy_0(J)F

    move-result v0

    .line 127
    .local v0, "retVal":F
    return v0
.end method

.method public getTruncatePrunedTree()Z
    .locals 4

    .prologue
    .line 83
    iget-wide v2, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/DTrees;->getTruncatePrunedTree_0(J)Z

    move-result v0

    .line 85
    .local v0, "retVal":Z
    return v0
.end method

.method public getUse1SERule()Z
    .locals 4

    .prologue
    .line 97
    iget-wide v2, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/DTrees;->getUse1SERule_0(J)Z

    move-result v0

    .line 99
    .local v0, "retVal":Z
    return v0
.end method

.method public getUseSurrogates()Z
    .locals 4

    .prologue
    .line 111
    iget-wide v2, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/DTrees;->getUseSurrogates_0(J)Z

    move-result v0

    .line 113
    .local v0, "retVal":Z
    return v0
.end method

.method public setCVFolds(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 195
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setCVFolds_0(JI)V

    .line 197
    return-void
.end method

.method public setMaxCategories(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setMaxCategories_0(JI)V

    .line 211
    return-void
.end method

.method public setMaxDepth(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 223
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setMaxDepth_0(JI)V

    .line 225
    return-void
.end method

.method public setMinSampleCount(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 237
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setMinSampleCount_0(JI)V

    .line 239
    return-void
.end method

.method public setPriors(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "val"    # Lorg/opencv/core/Mat;

    .prologue
    .line 251
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/ml/DTrees;->setPriors_0(JJ)V

    .line 253
    return-void
.end method

.method public setRegressionAccuracy(F)V
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 265
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setRegressionAccuracy_0(JF)V

    .line 267
    return-void
.end method

.method public setTruncatePrunedTree(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 279
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setTruncatePrunedTree_0(JZ)V

    .line 281
    return-void
.end method

.method public setUse1SERule(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 293
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setUse1SERule_0(JZ)V

    .line 295
    return-void
.end method

.method public setUseSurrogates(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 307
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setUseSurrogates_0(JZ)V

    .line 309
    return-void
.end method
