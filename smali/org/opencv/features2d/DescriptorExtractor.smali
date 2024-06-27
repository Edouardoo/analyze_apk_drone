.class public Lorg/opencv/features2d/DescriptorExtractor;
.super Ljava/lang/Object;
.source "DescriptorExtractor.java"


# static fields
.field public static final AKAZE:I = 0x7

.field public static final BRIEF:I = 0x4

.field public static final BRISK:I = 0x5

.field public static final FREAK:I = 0x6

.field private static final OPPONENTEXTRACTOR:I = 0x3e8

.field public static final OPPONENT_AKAZE:I = 0x3ef

.field public static final OPPONENT_BRIEF:I = 0x3ec

.field public static final OPPONENT_BRISK:I = 0x3ed

.field public static final OPPONENT_FREAK:I = 0x3ee

.field public static final OPPONENT_ORB:I = 0x3eb

.field public static final OPPONENT_SIFT:I = 0x3e9

.field public static final OPPONENT_SURF:I = 0x3ea

.field public static final ORB:I = 0x3

.field public static final SIFT:I = 0x1

.field public static final SURF:I = 0x2


# instance fields
.field protected final nativeObj:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    return-void
.end method

.method private static native compute_0(JJJJ)V
.end method

.method private static native compute_1(JJJJ)V
.end method

.method public static create(I)Lorg/opencv/features2d/DescriptorExtractor;
    .locals 4
    .param p0, "extractorType"    # I

    .prologue
    .line 52
    new-instance v0, Lorg/opencv/features2d/DescriptorExtractor;

    invoke-static {p0}, Lorg/opencv/features2d/DescriptorExtractor;->create_0(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/DescriptorExtractor;-><init>(J)V

    .line 54
    .local v0, "retVal":Lorg/opencv/features2d/DescriptorExtractor;
    return-object v0
.end method

.method private static native create_0(I)J
.end method

.method private static native delete(J)V
.end method

.method private static native descriptorSize_0(J)I
.end method

.method private static native descriptorType_0(J)I
.end method

.method private static native empty_0(J)Z
.end method

.method private static native read_0(JLjava/lang/String;)V
.end method

.method private static native write_0(JLjava/lang/String;)V
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfKeyPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "keypoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfKeyPoint;>;"
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v9

    .line 122
    .local v9, "images_mat":Lorg/opencv/core/Mat;
    new-instance v11, Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v11, "keypoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p2, v11}, Lorg/opencv/utils/Converters;->vector_vector_KeyPoint_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 124
    .local v10, "keypoints_mat":Lorg/opencv/core/Mat;
    new-instance v8, Lorg/opencv/core/Mat;

    invoke-direct {v8}, Lorg/opencv/core/Mat;-><init>()V

    .line 125
    .local v8, "descriptors_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    iget-wide v2, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/DescriptorExtractor;->compute_1(JJJJ)V

    .line 126
    invoke-static {v10, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_KeyPoint(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 127
    invoke-virtual {v10}, Lorg/opencv/core/Mat;->release()V

    .line 128
    invoke-static {v8, p3}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 129
    invoke-virtual {v8}, Lorg/opencv/core/Mat;->release()V

    .line 130
    return-void

    .line 122
    .end local v8    # "descriptors_mat":Lorg/opencv/core/Mat;
    .end local v10    # "keypoints_mat":Lorg/opencv/core/Mat;
    .end local v11    # "keypoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;)V
    .locals 9
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p3, "descriptors"    # Lorg/opencv/core/Mat;

    .prologue
    .line 107
    move-object v8, p2

    .line 108
    .local v8, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/DescriptorExtractor;->compute_0(JJJJ)V

    .line 110
    return-void
.end method

.method public descriptorSize()I
    .locals 4

    .prologue
    .line 80
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/DescriptorExtractor;->descriptorSize_0(J)I

    move-result v0

    .line 82
    .local v0, "retVal":I
    return v0
.end method

.method public descriptorType()I
    .locals 4

    .prologue
    .line 94
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/DescriptorExtractor;->descriptorType_0(J)I

    move-result v0

    .line 96
    .local v0, "retVal":I
    return v0
.end method

.method public empty()Z
    .locals 4

    .prologue
    .line 66
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/DescriptorExtractor;->empty_0(J)Z

    move-result v0

    .line 68
    .local v0, "retVal":Z
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
    .line 164
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorExtractor;->delete(J)V

    .line 165
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    return-wide v0
.end method

.method public read(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/DescriptorExtractor;->read_0(JLjava/lang/String;)V

    .line 144
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorExtractor;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/DescriptorExtractor;->write_0(JLjava/lang/String;)V

    .line 158
    return-void
.end method
