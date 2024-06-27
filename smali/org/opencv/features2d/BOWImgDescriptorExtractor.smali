.class public Lorg/opencv/features2d/BOWImgDescriptorExtractor;
.super Ljava/lang/Object;
.source "BOWImgDescriptorExtractor.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->nativeObj:J

    return-void
.end method

.method private static native compute_0(JJJJ)V
.end method

.method private static native delete(J)V
.end method

.method private static native descriptorSize_0(J)I
.end method

.method private static native descriptorType_0(J)I
.end method

.method private static native getVocabulary_0(J)J
.end method

.method private static native setVocabulary_0(JJ)V
.end method


# virtual methods
.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;)V
    .locals 9
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p3, "imgDescriptor"    # Lorg/opencv/core/Mat;

    .prologue
    .line 75
    move-object v8, p2

    .line 76
    .local v8, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->compute_0(JJJJ)V

    .line 78
    return-void
.end method

.method public descriptorSize()I
    .locals 4

    .prologue
    .line 48
    iget-wide v2, p0, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->descriptorSize_0(J)I

    move-result v0

    .line 50
    .local v0, "retVal":I
    return v0
.end method

.method public descriptorType()I
    .locals 4

    .prologue
    .line 62
    iget-wide v2, p0, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->descriptorType_0(J)I

    move-result v0

    .line 64
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
    .line 98
    iget-wide v0, p0, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->delete(J)V

    .line 99
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->nativeObj:J

    return-wide v0
.end method

.method public getVocabulary()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->getVocabulary_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 36
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public setVocabulary(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "vocabulary"    # Lorg/opencv/core/Mat;

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/features2d/BOWImgDescriptorExtractor;->setVocabulary_0(JJ)V

    .line 92
    return-void
.end method
