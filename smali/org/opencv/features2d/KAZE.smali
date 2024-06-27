.class public Lorg/opencv/features2d/KAZE;
.super Lorg/opencv/features2d/Feature2D;
.source "KAZE.java"


# static fields
.field public static final DIFF_CHARBONNIER:I = 0x3

.field public static final DIFF_PM_G1:I = 0x0

.field public static final DIFF_PM_G2:I = 0x1

.field public static final DIFF_WEICKERT:I = 0x2


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/Feature2D;-><init>(J)V

    return-void
.end method

.method public static create()Lorg/opencv/features2d/KAZE;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lorg/opencv/features2d/KAZE;

    invoke-static {}, Lorg/opencv/features2d/KAZE;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/KAZE;-><init>(J)V

    .line 42
    .local v0, "retVal":Lorg/opencv/features2d/KAZE;
    return-object v0
.end method

.method public static create(ZZFIII)Lorg/opencv/features2d/KAZE;
    .locals 4
    .param p0, "extended"    # Z
    .param p1, "upright"    # Z
    .param p2, "threshold"    # F
    .param p3, "nOctaves"    # I
    .param p4, "nOctaveLayers"    # I
    .param p5, "diffusivity"    # I

    .prologue
    .line 31
    new-instance v0, Lorg/opencv/features2d/KAZE;

    invoke-static/range {p0 .. p5}, Lorg/opencv/features2d/KAZE;->create_0(ZZFIII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/KAZE;-><init>(J)V

    .line 33
    .local v0, "retVal":Lorg/opencv/features2d/KAZE;
    return-object v0
.end method

.method private static native create_0(ZZFIII)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getDiffusivity_0(J)I
.end method

.method private static native getExtended_0(J)Z
.end method

.method private static native getNOctaveLayers_0(J)I
.end method

.method private static native getNOctaves_0(J)I
.end method

.method private static native getThreshold_0(J)D
.end method

.method private static native getUpright_0(J)Z
.end method

.method private static native setDiffusivity_0(JI)V
.end method

.method private static native setExtended_0(JZ)V
.end method

.method private static native setNOctaveLayers_0(JI)V
.end method

.method private static native setNOctaves_0(JI)V
.end method

.method private static native setThreshold_0(JD)V
.end method

.method private static native setUpright_0(JZ)V
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
    .line 216
    iget-wide v0, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/KAZE;->delete(J)V

    .line 217
    return-void
.end method

.method public getDiffusivity()I
    .locals 4

    .prologue
    .line 96
    iget-wide v2, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/KAZE;->getDiffusivity_0(J)I

    move-result v0

    .line 98
    .local v0, "retVal":I
    return v0
.end method

.method public getExtended()Z
    .locals 4

    .prologue
    .line 54
    iget-wide v2, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/KAZE;->getExtended_0(J)Z

    move-result v0

    .line 56
    .local v0, "retVal":Z
    return v0
.end method

.method public getNOctaveLayers()I
    .locals 4

    .prologue
    .line 110
    iget-wide v2, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/KAZE;->getNOctaveLayers_0(J)I

    move-result v0

    .line 112
    .local v0, "retVal":I
    return v0
.end method

.method public getNOctaves()I
    .locals 4

    .prologue
    .line 124
    iget-wide v2, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/KAZE;->getNOctaves_0(J)I

    move-result v0

    .line 126
    .local v0, "retVal":I
    return v0
.end method

.method public getThreshold()D
    .locals 4

    .prologue
    .line 82
    iget-wide v2, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/KAZE;->getThreshold_0(J)D

    move-result-wide v0

    .line 84
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getUpright()Z
    .locals 4

    .prologue
    .line 68
    iget-wide v2, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/KAZE;->getUpright_0(J)Z

    move-result v0

    .line 70
    .local v0, "retVal":Z
    return v0
.end method

.method public setDiffusivity(I)V
    .locals 2
    .param p1, "diff"    # I

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/KAZE;->setDiffusivity_0(JI)V

    .line 140
    return-void
.end method

.method public setExtended(Z)V
    .locals 2
    .param p1, "extended"    # Z

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/KAZE;->setExtended_0(JZ)V

    .line 154
    return-void
.end method

.method public setNOctaveLayers(I)V
    .locals 2
    .param p1, "octaveLayers"    # I

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/KAZE;->setNOctaveLayers_0(JI)V

    .line 168
    return-void
.end method

.method public setNOctaves(I)V
    .locals 2
    .param p1, "octaves"    # I

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/KAZE;->setNOctaves_0(JI)V

    .line 182
    return-void
.end method

.method public setThreshold(D)V
    .locals 3
    .param p1, "threshold"    # D

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/features2d/KAZE;->setThreshold_0(JD)V

    .line 196
    return-void
.end method

.method public setUpright(Z)V
    .locals 2
    .param p1, "upright"    # Z

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/opencv/features2d/KAZE;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/KAZE;->setUpright_0(JZ)V

    .line 210
    return-void
.end method
