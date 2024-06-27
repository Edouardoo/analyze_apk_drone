.class public Lorg/opencv/features2d/BOWKMeansTrainer;
.super Lorg/opencv/features2d/BOWTrainer;
.source "BOWKMeansTrainer.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "clusterCount"    # I

    .prologue
    .line 34
    invoke-static {p1}, Lorg/opencv/features2d/BOWKMeansTrainer;->BOWKMeansTrainer_1(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/features2d/BOWTrainer;-><init>(J)V

    .line 36
    return-void
.end method

.method public constructor <init>(ILorg/opencv/core/TermCriteria;II)V
    .locals 8
    .param p1, "clusterCount"    # I
    .param p2, "termcrit"    # Lorg/opencv/core/TermCriteria;
    .param p3, "attempts"    # I
    .param p4, "flags"    # I

    .prologue
    .line 25
    iget v2, p2, Lorg/opencv/core/TermCriteria;->type:I

    iget v3, p2, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p2, Lorg/opencv/core/TermCriteria;->epsilon:D

    move v1, p1

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v7}, Lorg/opencv/features2d/BOWKMeansTrainer;->BOWKMeansTrainer_0(IIIDII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/features2d/BOWTrainer;-><init>(J)V

    .line 27
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/BOWTrainer;-><init>(J)V

    return-void
.end method

.method private static native BOWKMeansTrainer_0(IIIDII)J
.end method

.method private static native BOWKMeansTrainer_1(I)J
.end method

.method private static native cluster_0(JJ)J
.end method

.method private static native cluster_1(J)J
.end method

.method private static native delete(J)V
.end method


# virtual methods
.method public cluster()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/features2d/BOWKMeansTrainer;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/BOWKMeansTrainer;->cluster_1(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 64
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public cluster(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p1, "descriptors"    # Lorg/opencv/core/Mat;

    .prologue
    .line 48
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/features2d/BOWKMeansTrainer;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/features2d/BOWKMeansTrainer;->cluster_0(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 50
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/opencv/features2d/BOWKMeansTrainer;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/BOWKMeansTrainer;->delete(J)V

    .line 71
    return-void
.end method
