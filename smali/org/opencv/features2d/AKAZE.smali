.class public Lorg/opencv/features2d/AKAZE;
.super Lorg/opencv/features2d/Feature2D;
.source "AKAZE.java"


# static fields
.field public static final DESCRIPTOR_KAZE:I = 0x3

.field public static final DESCRIPTOR_KAZE_UPRIGHT:I = 0x2

.field public static final DESCRIPTOR_MLDB:I = 0x5

.field public static final DESCRIPTOR_MLDB_UPRIGHT:I = 0x4


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/Feature2D;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/features2d/AKAZE;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lorg/opencv/features2d/AKAZE;

    invoke-static {}, Lorg/opencv/features2d/AKAZE;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/AKAZE;-><init>(J)V

    .line 42
    .local v0, "retVal":Lorg/opencv/features2d/AKAZE;
    return-object v0
.end method

.method public static create(IIIFIII)Lorg/opencv/features2d/AKAZE;
    .locals 4
    .param p0, "descriptor_type"    # I
    .param p1, "descriptor_size"    # I
    .param p2, "descriptor_channels"    # I
    .param p3, "threshold"    # F
    .param p4, "nOctaves"    # I
    .param p5, "nOctaveLayers"    # I
    .param p6, "diffusivity"    # I

    .prologue
    .line 31
    new-instance v0, Lorg/opencv/features2d/AKAZE;

    invoke-static/range {p0 .. p6}, Lorg/opencv/features2d/AKAZE;->create_0(IIIFIII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/AKAZE;-><init>(J)V

    .line 33
    .local v0, "retVal":Lorg/opencv/features2d/AKAZE;
    return-object v0
.end method

.method private static native create_0(IIIFIII)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getDescriptorChannels_0(J)I
.end method

.method private static native getDescriptorSize_0(J)I
.end method

.method private static native getDescriptorType_0(J)I
.end method

.method private static native getDiffusivity_0(J)I
.end method

.method private static native getNOctaveLayers_0(J)I
.end method

.method private static native getNOctaves_0(J)I
.end method

.method private static native getThreshold_0(J)D
.end method

.method private static native setDescriptorChannels_0(JI)V
.end method

.method private static native setDescriptorSize_0(JI)V
.end method

.method private static native setDescriptorType_0(JI)V
.end method

.method private static native setDiffusivity_0(JI)V
.end method

.method private static native setNOctaveLayers_0(JI)V
.end method

.method private static native setNOctaves_0(JI)V
.end method

.method private static native setThreshold_0(JD)V
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
    .line 244
    iget-wide v0, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/AKAZE;->delete(J)V

    .line 245
    return-void
.end method

.method public getDescriptorChannels()I
    .locals 4

    .prologue
    .line 68
    iget-wide v2, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/AKAZE;->getDescriptorChannels_0(J)I

    move-result v0

    .line 70
    .local v0, "retVal":I
    return v0
.end method

.method public getDescriptorSize()I
    .locals 4

    .prologue
    .line 82
    iget-wide v2, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/AKAZE;->getDescriptorSize_0(J)I

    move-result v0

    .line 84
    .local v0, "retVal":I
    return v0
.end method

.method public getDescriptorType()I
    .locals 4

    .prologue
    .line 96
    iget-wide v2, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/AKAZE;->getDescriptorType_0(J)I

    move-result v0

    .line 98
    .local v0, "retVal":I
    return v0
.end method

.method public getDiffusivity()I
    .locals 4

    .prologue
    .line 110
    iget-wide v2, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/AKAZE;->getDiffusivity_0(J)I

    move-result v0

    .line 112
    .local v0, "retVal":I
    return v0
.end method

.method public getNOctaveLayers()I
    .locals 4

    .prologue
    .line 124
    iget-wide v2, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/AKAZE;->getNOctaveLayers_0(J)I

    move-result v0

    .line 126
    .local v0, "retVal":I
    return v0
.end method

.method public getNOctaves()I
    .locals 4

    .prologue
    .line 138
    iget-wide v2, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/AKAZE;->getNOctaves_0(J)I

    move-result v0

    .line 140
    .local v0, "retVal":I
    return v0
.end method

.method public getThreshold()D
    .locals 4

    .prologue
    .line 54
    iget-wide v2, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/AKAZE;->getThreshold_0(J)D

    move-result-wide v0

    .line 56
    .local v0, "retVal":D
    return-wide v0
.end method

.method public setDescriptorChannels(I)V
    .locals 2
    .param p1, "dch"    # I

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/AKAZE;->setDescriptorChannels_0(JI)V

    .line 154
    return-void
.end method

.method public setDescriptorSize(I)V
    .locals 2
    .param p1, "dsize"    # I

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/AKAZE;->setDescriptorSize_0(JI)V

    .line 168
    return-void
.end method

.method public setDescriptorType(I)V
    .locals 2
    .param p1, "dtype"    # I

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/AKAZE;->setDescriptorType_0(JI)V

    .line 182
    return-void
.end method

.method public setDiffusivity(I)V
    .locals 2
    .param p1, "diff"    # I

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/AKAZE;->setDiffusivity_0(JI)V

    .line 196
    return-void
.end method

.method public setNOctaveLayers(I)V
    .locals 2
    .param p1, "octaveLayers"    # I

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/AKAZE;->setNOctaveLayers_0(JI)V

    .line 210
    return-void
.end method

.method public setNOctaves(I)V
    .locals 2
    .param p1, "octaves"    # I

    .prologue
    .line 222
    iget-wide v0, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/AKAZE;->setNOctaves_0(JI)V

    .line 224
    return-void
.end method

.method public setThreshold(D)V
    .locals 3
    .param p1, "threshold"    # D

    .prologue
    .line 236
    iget-wide v0, p0, Lorg/opencv/features2d/AKAZE;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/features2d/AKAZE;->setThreshold_0(JD)V

    .line 238
    return-void
.end method
