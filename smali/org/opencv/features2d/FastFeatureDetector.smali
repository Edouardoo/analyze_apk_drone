.class public Lorg/opencv/features2d/FastFeatureDetector;
.super Lorg/opencv/features2d/Feature2D;
.source "FastFeatureDetector.java"


# static fields
.field public static final FAST_N:I = 0x2712

.field public static final NONMAX_SUPPRESSION:I = 0x2711

.field public static final THRESHOLD:I = 0x2710

.field public static final TYPE_5_8:I = 0x0

.field public static final TYPE_7_12:I = 0x1

.field public static final TYPE_9_16:I = 0x2


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/Feature2D;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/features2d/FastFeatureDetector;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lorg/opencv/features2d/FastFeatureDetector;

    invoke-static {}, Lorg/opencv/features2d/FastFeatureDetector;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/FastFeatureDetector;-><init>(J)V

    .line 44
    .local v0, "retVal":Lorg/opencv/features2d/FastFeatureDetector;
    return-object v0
.end method

.method public static create(IZI)Lorg/opencv/features2d/FastFeatureDetector;
    .locals 4
    .param p0, "threshold"    # I
    .param p1, "nonmaxSuppression"    # Z
    .param p2, "type"    # I

    .prologue
    .line 33
    new-instance v0, Lorg/opencv/features2d/FastFeatureDetector;

    invoke-static {p0, p1, p2}, Lorg/opencv/features2d/FastFeatureDetector;->create_0(IZI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/FastFeatureDetector;-><init>(J)V

    .line 35
    .local v0, "retVal":Lorg/opencv/features2d/FastFeatureDetector;
    return-object v0
.end method

.method private static native create_0(IZI)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getNonmaxSuppression_0(J)Z
.end method

.method private static native getThreshold_0(J)I
.end method

.method private static native getType_0(J)I
.end method

.method private static native setNonmaxSuppression_0(JZ)V
.end method

.method private static native setThreshold_0(JI)V
.end method

.method private static native setType_0(JI)V
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
    .line 134
    iget-wide v0, p0, Lorg/opencv/features2d/FastFeatureDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/FastFeatureDetector;->delete(J)V

    .line 135
    return-void
.end method

.method public getNonmaxSuppression()Z
    .locals 4

    .prologue
    .line 56
    iget-wide v2, p0, Lorg/opencv/features2d/FastFeatureDetector;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/FastFeatureDetector;->getNonmaxSuppression_0(J)Z

    move-result v0

    .line 58
    .local v0, "retVal":Z
    return v0
.end method

.method public getThreshold()I
    .locals 4

    .prologue
    .line 70
    iget-wide v2, p0, Lorg/opencv/features2d/FastFeatureDetector;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/FastFeatureDetector;->getThreshold_0(J)I

    move-result v0

    .line 72
    .local v0, "retVal":I
    return v0
.end method

.method public getType()I
    .locals 4

    .prologue
    .line 84
    iget-wide v2, p0, Lorg/opencv/features2d/FastFeatureDetector;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/FastFeatureDetector;->getType_0(J)I

    move-result v0

    .line 86
    .local v0, "retVal":I
    return v0
.end method

.method public setNonmaxSuppression(Z)V
    .locals 2
    .param p1, "f"    # Z

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/opencv/features2d/FastFeatureDetector;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/FastFeatureDetector;->setNonmaxSuppression_0(JZ)V

    .line 100
    return-void
.end method

.method public setThreshold(I)V
    .locals 2
    .param p1, "threshold"    # I

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/opencv/features2d/FastFeatureDetector;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/FastFeatureDetector;->setThreshold_0(JI)V

    .line 114
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/opencv/features2d/FastFeatureDetector;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/FastFeatureDetector;->setType_0(JI)V

    .line 128
    return-void
.end method
