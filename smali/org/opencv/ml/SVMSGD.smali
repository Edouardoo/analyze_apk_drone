.class public Lorg/opencv/ml/SVMSGD;
.super Lorg/opencv/ml/StatModel;
.source "SVMSGD.java"


# static fields
.field public static final ASGD:I = 0x1

.field public static final HARD_MARGIN:I = 0x1

.field public static final SGD:I

.field public static final SOFT_MARGIN:I


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/ml/SVMSGD;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lorg/opencv/ml/SVMSGD;

    invoke-static {}, Lorg/opencv/ml/SVMSGD;->create_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/SVMSGD;-><init>(J)V

    .line 49
    .local v0, "retVal":Lorg/opencv/ml/SVMSGD;
    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getInitialStepSize_0(J)F
.end method

.method private static native getMarginRegularization_0(J)F
.end method

.method private static native getMarginType_0(J)I
.end method

.method private static native getShift_0(J)F
.end method

.method private static native getStepDecreasingPower_0(J)F
.end method

.method private static native getSvmsgdType_0(J)I
.end method

.method private static native getTermCriteria_0(J)[D
.end method

.method private static native getWeights_0(J)J
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/SVMSGD;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lorg/opencv/ml/SVMSGD;

    invoke-static {p0}, Lorg/opencv/ml/SVMSGD;->load_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/SVMSGD;-><init>(J)V

    .line 72
    .local v0, "retVal":Lorg/opencv/ml/SVMSGD;
    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/ml/SVMSGD;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lorg/opencv/ml/SVMSGD;

    invoke-static {p0, p1}, Lorg/opencv/ml/SVMSGD;->load_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/SVMSGD;-><init>(J)V

    .line 63
    .local v0, "retVal":Lorg/opencv/ml/SVMSGD;
    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native load_1(Ljava/lang/String;)J
.end method

.method private static native setInitialStepSize_0(JF)V
.end method

.method private static native setMarginRegularization_0(JF)V
.end method

.method private static native setMarginType_0(JI)V
.end method

.method private static native setOptimalParameters_0(JII)V
.end method

.method private static native setOptimalParameters_1(J)V
.end method

.method private static native setStepDecreasingPower_0(JF)V
.end method

.method private static native setSvmsgdType_0(JI)V
.end method

.method private static native setTermCriteria_0(JIID)V
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
    .line 283
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->delete(J)V

    .line 284
    return-void
.end method

.method public getInitialStepSize()F
    .locals 4

    .prologue
    .line 98
    iget-wide v2, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVMSGD;->getInitialStepSize_0(J)F

    move-result v0

    .line 100
    .local v0, "retVal":F
    return v0
.end method

.method public getMarginRegularization()F
    .locals 4

    .prologue
    .line 112
    iget-wide v2, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVMSGD;->getMarginRegularization_0(J)F

    move-result v0

    .line 114
    .local v0, "retVal":F
    return v0
.end method

.method public getMarginType()I
    .locals 4

    .prologue
    .line 154
    iget-wide v2, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVMSGD;->getMarginType_0(J)I

    move-result v0

    .line 156
    .local v0, "retVal":I
    return v0
.end method

.method public getShift()F
    .locals 4

    .prologue
    .line 126
    iget-wide v2, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVMSGD;->getShift_0(J)F

    move-result v0

    .line 128
    .local v0, "retVal":F
    return v0
.end method

.method public getStepDecreasingPower()F
    .locals 4

    .prologue
    .line 140
    iget-wide v2, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVMSGD;->getStepDecreasingPower_0(J)F

    move-result v0

    .line 142
    .local v0, "retVal":F
    return v0
.end method

.method public getSvmsgdType()I
    .locals 4

    .prologue
    .line 168
    iget-wide v2, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVMSGD;->getSvmsgdType_0(J)I

    move-result v0

    .line 170
    .local v0, "retVal":I
    return v0
.end method

.method public getTermCriteria()Lorg/opencv/core/TermCriteria;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lorg/opencv/core/TermCriteria;

    iget-wide v2, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVMSGD;->getTermCriteria_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/TermCriteria;-><init>([D)V

    .line 86
    .local v0, "retVal":Lorg/opencv/core/TermCriteria;
    return-object v0
.end method

.method public getWeights()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/SVMSGD;->getWeights_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 35
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public setInitialStepSize(F)V
    .locals 2
    .param p1, "InitialStepSize"    # F

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setInitialStepSize_0(JF)V

    .line 184
    return-void
.end method

.method public setMarginRegularization(F)V
    .locals 2
    .param p1, "marginRegularization"    # F

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setMarginRegularization_0(JF)V

    .line 198
    return-void
.end method

.method public setMarginType(I)V
    .locals 2
    .param p1, "marginType"    # I

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setMarginType_0(JI)V

    .line 212
    return-void
.end method

.method public setOptimalParameters()V
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->setOptimalParameters_1(J)V

    .line 235
    return-void
.end method

.method public setOptimalParameters(II)V
    .locals 2
    .param p1, "svmsgdType"    # I
    .param p2, "marginType"    # I

    .prologue
    .line 224
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/SVMSGD;->setOptimalParameters_0(JII)V

    .line 226
    return-void
.end method

.method public setStepDecreasingPower(F)V
    .locals 2
    .param p1, "stepDecreasingPower"    # F

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setStepDecreasingPower_0(JF)V

    .line 249
    return-void
.end method

.method public setSvmsgdType(I)V
    .locals 2
    .param p1, "svmsgdType"    # I

    .prologue
    .line 261
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setSvmsgdType_0(JI)V

    .line 263
    return-void
.end method

.method public setTermCriteria(Lorg/opencv/core/TermCriteria;)V
    .locals 6
    .param p1, "val"    # Lorg/opencv/core/TermCriteria;

    .prologue
    .line 275
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/TermCriteria;->type:I

    iget v3, p1, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p1, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/SVMSGD;->setTermCriteria_0(JIID)V

    .line 277
    return-void
.end method
