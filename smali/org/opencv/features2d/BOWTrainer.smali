.class public Lorg/opencv/features2d/BOWTrainer;
.super Ljava/lang/Object;
.source "BOWTrainer.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/features2d/BOWTrainer;->nativeObj:J

    return-void
.end method

.method private static native add_0(JJ)V
.end method

.method private static native clear_0(J)V
.end method

.method private static native cluster_0(JJ)J
.end method

.method private static native cluster_1(J)J
.end method

.method private static native delete(J)V
.end method

.method private static native descriptorsCount_0(J)I
.end method

.method private static native getDescriptors_0(J)J
.end method


# virtual methods
.method public add(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "descriptors"    # Lorg/opencv/core/Mat;

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/opencv/features2d/BOWTrainer;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/features2d/BOWTrainer;->add_0(JJ)V

    .line 87
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/opencv/features2d/BOWTrainer;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/BOWTrainer;->clear_0(J)V

    .line 101
    return-void
.end method

.method public cluster()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/features2d/BOWTrainer;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/BOWTrainer;->cluster_1(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 45
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public cluster(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p1, "descriptors"    # Lorg/opencv/core/Mat;

    .prologue
    .line 29
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/features2d/BOWTrainer;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/features2d/BOWTrainer;->cluster_0(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 31
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public descriptorsCount()I
    .locals 4

    .prologue
    .line 57
    iget-wide v2, p0, Lorg/opencv/features2d/BOWTrainer;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/BOWTrainer;->descriptorsCount_0(J)I

    move-result v0

    .line 59
    .local v0, "retVal":I
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/opencv/features2d/BOWTrainer;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/BOWTrainer;->delete(J)V

    .line 108
    return-void
.end method

.method public getDescriptors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/features2d/BOWTrainer;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/BOWTrainer;->getDescriptors_0(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 72
    .local v1, "retValMat":Lorg/opencv/core/Mat;
    invoke-static {v1, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 73
    return-object v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lorg/opencv/features2d/BOWTrainer;->nativeObj:J

    return-wide v0
.end method
