.class public Lorg/opencv/ml/NormalBayesClassifier;
.super Lorg/opencv/ml/StatModel;
.source "NormalBayesClassifier.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/ml/NormalBayesClassifier;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lorg/opencv/ml/NormalBayesClassifier;

    invoke-static {}, Lorg/opencv/ml/NormalBayesClassifier;->create_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/NormalBayesClassifier;-><init>(J)V

    .line 27
    .local v0, "retVal":Lorg/opencv/ml/NormalBayesClassifier;
    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/NormalBayesClassifier;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lorg/opencv/ml/NormalBayesClassifier;

    invoke-static {p0}, Lorg/opencv/ml/NormalBayesClassifier;->load_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/NormalBayesClassifier;-><init>(J)V

    .line 50
    .local v0, "retVal":Lorg/opencv/ml/NormalBayesClassifier;
    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/ml/NormalBayesClassifier;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lorg/opencv/ml/NormalBayesClassifier;

    invoke-static {p0, p1}, Lorg/opencv/ml/NormalBayesClassifier;->load_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/NormalBayesClassifier;-><init>(J)V

    .line 41
    .local v0, "retVal":Lorg/opencv/ml/NormalBayesClassifier;
    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native load_1(Ljava/lang/String;)J
.end method

.method private static native predictProb_0(JJJJI)F
.end method

.method private static native predictProb_1(JJJJ)F
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
    .line 79
    iget-wide v0, p0, Lorg/opencv/ml/NormalBayesClassifier;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/NormalBayesClassifier;->delete(J)V

    .line 80
    return-void
.end method

.method public predictProb(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)F
    .locals 9
    .param p1, "inputs"    # Lorg/opencv/core/Mat;
    .param p2, "outputs"    # Lorg/opencv/core/Mat;
    .param p3, "outputProbs"    # Lorg/opencv/core/Mat;

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/opencv/ml/NormalBayesClassifier;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/ml/NormalBayesClassifier;->predictProb_1(JJJJ)F

    move-result v8

    .line 73
    .local v8, "retVal":F
    return v8
.end method

.method public predictProb(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)F
    .locals 10
    .param p1, "inputs"    # Lorg/opencv/core/Mat;
    .param p2, "outputs"    # Lorg/opencv/core/Mat;
    .param p3, "outputProbs"    # Lorg/opencv/core/Mat;
    .param p4, "flags"    # I

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/opencv/ml/NormalBayesClassifier;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/ml/NormalBayesClassifier;->predictProb_0(JJJJI)F

    move-result v9

    .line 64
    .local v9, "retVal":F
    return v9
.end method
