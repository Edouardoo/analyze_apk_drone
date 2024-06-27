.class public Lorg/opencv/ml/Boost;
.super Lorg/opencv/ml/DTrees;
.source "Boost.java"


# static fields
.field public static final DISCRETE:I = 0x0

.field public static final GENTLE:I = 0x3

.field public static final LOGIT:I = 0x2

.field public static final REAL:I = 0x1


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/DTrees;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/ml/Boost;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lorg/opencv/ml/Boost;

    invoke-static {}, Lorg/opencv/ml/Boost;->create_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/Boost;-><init>(J)V

    .line 33
    .local v0, "retVal":Lorg/opencv/ml/Boost;
    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getBoostType_0(J)I
.end method

.method private static native getWeakCount_0(J)I
.end method

.method private static native getWeightTrimRate_0(J)D
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/Boost;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lorg/opencv/ml/Boost;

    invoke-static {p0}, Lorg/opencv/ml/Boost;->load_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/Boost;-><init>(J)V

    .line 56
    .local v0, "retVal":Lorg/opencv/ml/Boost;
    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/ml/Boost;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lorg/opencv/ml/Boost;

    invoke-static {p0, p1}, Lorg/opencv/ml/Boost;->load_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/Boost;-><init>(J)V

    .line 47
    .local v0, "retVal":Lorg/opencv/ml/Boost;
    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native load_1(Ljava/lang/String;)J
.end method

.method private static native setBoostType_0(JI)V
.end method

.method private static native setWeakCount_0(JI)V
.end method

.method private static native setWeightTrimRate_0(JD)V
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
    .line 146
    iget-wide v0, p0, Lorg/opencv/ml/Boost;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/Boost;->delete(J)V

    .line 147
    return-void
.end method

.method public getBoostType()I
    .locals 4

    .prologue
    .line 82
    iget-wide v2, p0, Lorg/opencv/ml/Boost;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/Boost;->getBoostType_0(J)I

    move-result v0

    .line 84
    .local v0, "retVal":I
    return v0
.end method

.method public getWeakCount()I
    .locals 4

    .prologue
    .line 96
    iget-wide v2, p0, Lorg/opencv/ml/Boost;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/Boost;->getWeakCount_0(J)I

    move-result v0

    .line 98
    .local v0, "retVal":I
    return v0
.end method

.method public getWeightTrimRate()D
    .locals 4

    .prologue
    .line 68
    iget-wide v2, p0, Lorg/opencv/ml/Boost;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/Boost;->getWeightTrimRate_0(J)D

    move-result-wide v0

    .line 70
    .local v0, "retVal":D
    return-wide v0
.end method

.method public setBoostType(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/opencv/ml/Boost;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/Boost;->setBoostType_0(JI)V

    .line 112
    return-void
.end method

.method public setWeakCount(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/opencv/ml/Boost;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/Boost;->setWeakCount_0(JI)V

    .line 126
    return-void
.end method

.method public setWeightTrimRate(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/opencv/ml/Boost;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/Boost;->setWeightTrimRate_0(JD)V

    .line 140
    return-void
.end method
