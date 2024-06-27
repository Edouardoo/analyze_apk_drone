.class public Lorg/opencv/ml/ANN_MLP;
.super Lorg/opencv/ml/StatModel;
.source "ANN_MLP.java"


# static fields
.field public static final BACKPROP:I = 0x0

.field public static final GAUSSIAN:I = 0x2

.field public static final IDENTITY:I = 0x0

.field public static final NO_INPUT_SCALE:I = 0x2

.field public static final NO_OUTPUT_SCALE:I = 0x4

.field public static final RPROP:I = 0x1

.field public static final SIGMOID_SYM:I = 0x1

.field public static final UPDATE_WEIGHTS:I = 0x1


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/ml/ANN_MLP;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lorg/opencv/ml/ANN_MLP;

    invoke-static {}, Lorg/opencv/ml/ANN_MLP;->create_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/ANN_MLP;-><init>(J)V

    .line 67
    .local v0, "retVal":Lorg/opencv/ml/ANN_MLP;
    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getBackpropMomentumScale_0(J)D
.end method

.method private static native getBackpropWeightScale_0(J)D
.end method

.method private static native getLayerSizes_0(J)J
.end method

.method private static native getRpropDW0_0(J)D
.end method

.method private static native getRpropDWMax_0(J)D
.end method

.method private static native getRpropDWMin_0(J)D
.end method

.method private static native getRpropDWMinus_0(J)D
.end method

.method private static native getRpropDWPlus_0(J)D
.end method

.method private static native getTermCriteria_0(J)[D
.end method

.method private static native getTrainMethod_0(J)I
.end method

.method private static native getWeights_0(JI)J
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/ANN_MLP;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lorg/opencv/ml/ANN_MLP;

    invoke-static {p0}, Lorg/opencv/ml/ANN_MLP;->load_0(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/ANN_MLP;-><init>(J)V

    .line 81
    .local v0, "retVal":Lorg/opencv/ml/ANN_MLP;
    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;)J
.end method

.method private static native setActivationFunction_0(JIDD)V
.end method

.method private static native setActivationFunction_1(JI)V
.end method

.method private static native setBackpropMomentumScale_0(JD)V
.end method

.method private static native setBackpropWeightScale_0(JD)V
.end method

.method private static native setLayerSizes_0(JJ)V
.end method

.method private static native setRpropDW0_0(JD)V
.end method

.method private static native setRpropDWMax_0(JD)V
.end method

.method private static native setRpropDWMin_0(JD)V
.end method

.method private static native setRpropDWMinus_0(JD)V
.end method

.method private static native setRpropDWPlus_0(JD)V
.end method

.method private static native setTermCriteria_0(JIID)V
.end method

.method private static native setTrainMethod_0(JIDD)V
.end method

.method private static native setTrainMethod_1(JI)V
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
    .line 385
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/ANN_MLP;->delete(J)V

    .line 386
    return-void
.end method

.method public getBackpropMomentumScale()D
    .locals 4

    .prologue
    .line 107
    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getBackpropMomentumScale_0(J)D

    move-result-wide v0

    .line 109
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getBackpropWeightScale()D
    .locals 4

    .prologue
    .line 121
    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getBackpropWeightScale_0(J)D

    move-result-wide v0

    .line 123
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getLayerSizes()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getLayerSizes_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 39
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getRpropDW0()D
    .locals 4

    .prologue
    .line 135
    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getRpropDW0_0(J)D

    move-result-wide v0

    .line 137
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getRpropDWMax()D
    .locals 4

    .prologue
    .line 149
    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getRpropDWMax_0(J)D

    move-result-wide v0

    .line 151
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getRpropDWMin()D
    .locals 4

    .prologue
    .line 163
    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getRpropDWMin_0(J)D

    move-result-wide v0

    .line 165
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getRpropDWMinus()D
    .locals 4

    .prologue
    .line 177
    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getRpropDWMinus_0(J)D

    move-result-wide v0

    .line 179
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getRpropDWPlus()D
    .locals 4

    .prologue
    .line 191
    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getRpropDWPlus_0(J)D

    move-result-wide v0

    .line 193
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getTermCriteria()Lorg/opencv/core/TermCriteria;
    .locals 4

    .prologue
    .line 93
    new-instance v0, Lorg/opencv/core/TermCriteria;

    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getTermCriteria_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/TermCriteria;-><init>([D)V

    .line 95
    .local v0, "retVal":Lorg/opencv/core/TermCriteria;
    return-object v0
.end method

.method public getTrainMethod()I
    .locals 4

    .prologue
    .line 205
    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ANN_MLP;->getTrainMethod_0(J)I

    move-result v0

    .line 207
    .local v0, "retVal":I
    return v0
.end method

.method public getWeights(I)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "layerIdx"    # I

    .prologue
    .line 51
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/ml/ANN_MLP;->getWeights_0(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 53
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public setActivationFunction(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 228
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/ANN_MLP;->setActivationFunction_1(JI)V

    .line 230
    return-void
.end method

.method public setActivationFunction(IDD)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "param1"    # D
    .param p4, "param2"    # D

    .prologue
    .line 219
    iget-wide v1, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lorg/opencv/ml/ANN_MLP;->setActivationFunction_0(JIDD)V

    .line 221
    return-void
.end method

.method public setBackpropMomentumScale(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 242
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP;->setBackpropMomentumScale_0(JD)V

    .line 244
    return-void
.end method

.method public setBackpropWeightScale(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 256
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP;->setBackpropWeightScale_0(JD)V

    .line 258
    return-void
.end method

.method public setLayerSizes(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "_layer_sizes"    # Lorg/opencv/core/Mat;

    .prologue
    .line 270
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/ml/ANN_MLP;->setLayerSizes_0(JJ)V

    .line 272
    return-void
.end method

.method public setRpropDW0(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 284
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP;->setRpropDW0_0(JD)V

    .line 286
    return-void
.end method

.method public setRpropDWMax(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 298
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP;->setRpropDWMax_0(JD)V

    .line 300
    return-void
.end method

.method public setRpropDWMin(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 312
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP;->setRpropDWMin_0(JD)V

    .line 314
    return-void
.end method

.method public setRpropDWMinus(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 326
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP;->setRpropDWMinus_0(JD)V

    .line 328
    return-void
.end method

.method public setRpropDWPlus(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 340
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP;->setRpropDWPlus_0(JD)V

    .line 342
    return-void
.end method

.method public setTermCriteria(Lorg/opencv/core/TermCriteria;)V
    .locals 6
    .param p1, "val"    # Lorg/opencv/core/TermCriteria;

    .prologue
    .line 354
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/TermCriteria;->type:I

    iget v3, p1, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p1, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/ANN_MLP;->setTermCriteria_0(JIID)V

    .line 356
    return-void
.end method

.method public setTrainMethod(I)V
    .locals 2
    .param p1, "method"    # I

    .prologue
    .line 377
    iget-wide v0, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/ANN_MLP;->setTrainMethod_1(JI)V

    .line 379
    return-void
.end method

.method public setTrainMethod(IDD)V
    .locals 8
    .param p1, "method"    # I
    .param p2, "param1"    # D
    .param p4, "param2"    # D

    .prologue
    .line 368
    iget-wide v1, p0, Lorg/opencv/ml/ANN_MLP;->nativeObj:J

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lorg/opencv/ml/ANN_MLP;->setTrainMethod_0(JIDD)V

    .line 370
    return-void
.end method
