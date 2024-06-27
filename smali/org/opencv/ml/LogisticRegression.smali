.class public Lorg/opencv/ml/LogisticRegression;
.super Lorg/opencv/ml/StatModel;
.source "LogisticRegression.java"


# static fields
.field public static final BATCH:I = 0x0

.field public static final MINI_BATCH:I = 0x1

.field public static final REG_DISABLE:I = -0x1

.field public static final REG_L1:I = 0x0

.field public static final REG_L2:I = 0x1


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/ml/LogisticRegression;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lorg/opencv/ml/LogisticRegression;

    invoke-static {}, Lorg/opencv/ml/LogisticRegression;->create_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/LogisticRegression;-><init>(J)V

    .line 50
    .local v0, "retVal":Lorg/opencv/ml/LogisticRegression;
    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getIterations_0(J)I
.end method

.method private static native getLearningRate_0(J)D
.end method

.method private static native getMiniBatchSize_0(J)I
.end method

.method private static native getRegularization_0(J)I
.end method

.method private static native getTermCriteria_0(J)[D
.end method

.method private static native getTrainMethod_0(J)I
.end method

.method private static native get_learnt_thetas_0(J)J
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/LogisticRegression;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lorg/opencv/ml/LogisticRegression;

    invoke-static {p0}, Lorg/opencv/ml/LogisticRegression;->load_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/LogisticRegression;-><init>(J)V

    .line 73
    .local v0, "retVal":Lorg/opencv/ml/LogisticRegression;
    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/ml/LogisticRegression;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lorg/opencv/ml/LogisticRegression;

    invoke-static {p0, p1}, Lorg/opencv/ml/LogisticRegression;->load_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/LogisticRegression;-><init>(J)V

    .line 64
    .local v0, "retVal":Lorg/opencv/ml/LogisticRegression;
    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native load_1(Ljava/lang/String;)J
.end method

.method private static native predict_0(JJJI)F
.end method

.method private static native predict_1(JJ)F
.end method

.method private static native setIterations_0(JI)V
.end method

.method private static native setLearningRate_0(JD)V
.end method

.method private static native setMiniBatchSize_0(JI)V
.end method

.method private static native setRegularization_0(JI)V
.end method

.method private static native setTermCriteria_0(JIID)V
.end method

.method private static native setTrainMethod_0(JI)V
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
    .line 270
    iget-wide v0, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/LogisticRegression;->delete(J)V

    .line 271
    return-void
.end method

.method public getIterations()I
    .locals 4

    .prologue
    .line 136
    iget-wide v2, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/LogisticRegression;->getIterations_0(J)I

    move-result v0

    .line 138
    .local v0, "retVal":I
    return v0
.end method

.method public getLearningRate()D
    .locals 4

    .prologue
    .line 99
    iget-wide v2, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/LogisticRegression;->getLearningRate_0(J)D

    move-result-wide v0

    .line 101
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getMiniBatchSize()I
    .locals 4

    .prologue
    .line 150
    iget-wide v2, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/LogisticRegression;->getMiniBatchSize_0(J)I

    move-result v0

    .line 152
    .local v0, "retVal":I
    return v0
.end method

.method public getRegularization()I
    .locals 4

    .prologue
    .line 164
    iget-wide v2, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/LogisticRegression;->getRegularization_0(J)I

    move-result v0

    .line 166
    .local v0, "retVal":I
    return v0
.end method

.method public getTermCriteria()Lorg/opencv/core/TermCriteria;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lorg/opencv/core/TermCriteria;

    iget-wide v2, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/LogisticRegression;->getTermCriteria_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/TermCriteria;-><init>([D)V

    .line 87
    .local v0, "retVal":Lorg/opencv/core/TermCriteria;
    return-object v0
.end method

.method public getTrainMethod()I
    .locals 4

    .prologue
    .line 178
    iget-wide v2, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/LogisticRegression;->getTrainMethod_0(J)I

    move-result v0

    .line 180
    .local v0, "retVal":I
    return v0
.end method

.method public get_learnt_thetas()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/LogisticRegression;->get_learnt_thetas_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 36
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public predict(Lorg/opencv/core/Mat;)F
    .locals 6
    .param p1, "samples"    # Lorg/opencv/core/Mat;

    .prologue
    .line 122
    iget-wide v2, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/ml/LogisticRegression;->predict_1(JJ)F

    move-result v0

    .line 124
    .local v0, "retVal":F
    return v0
.end method

.method public predict(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)F
    .locals 8
    .param p1, "samples"    # Lorg/opencv/core/Mat;
    .param p2, "results"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/ml/LogisticRegression;->predict_0(JJJI)F

    move-result v7

    .line 115
    .local v7, "retVal":F
    return v7
.end method

.method public setIterations(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/LogisticRegression;->setIterations_0(JI)V

    .line 194
    return-void
.end method

.method public setLearningRate(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 206
    iget-wide v0, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/LogisticRegression;->setLearningRate_0(JD)V

    .line 208
    return-void
.end method

.method public setMiniBatchSize(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 220
    iget-wide v0, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/LogisticRegression;->setMiniBatchSize_0(JI)V

    .line 222
    return-void
.end method

.method public setRegularization(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/LogisticRegression;->setRegularization_0(JI)V

    .line 236
    return-void
.end method

.method public setTermCriteria(Lorg/opencv/core/TermCriteria;)V
    .locals 6
    .param p1, "val"    # Lorg/opencv/core/TermCriteria;

    .prologue
    .line 248
    iget-wide v0, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/TermCriteria;->type:I

    iget v3, p1, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p1, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/LogisticRegression;->setTermCriteria_0(JIID)V

    .line 250
    return-void
.end method

.method public setTrainMethod(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 262
    iget-wide v0, p0, Lorg/opencv/ml/LogisticRegression;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/LogisticRegression;->setTrainMethod_0(JI)V

    .line 264
    return-void
.end method
