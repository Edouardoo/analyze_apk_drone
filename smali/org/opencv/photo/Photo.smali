.class public Lorg/opencv/photo/Photo;
.super Ljava/lang/Object;
.source "Photo.java"


# static fields
.field private static final CV_INPAINT_NS:I = 0x0

.field private static final CV_INPAINT_TELEA:I = 0x1

.field public static final INPAINT_NS:I = 0x0

.field public static final INPAINT_TELEA:I = 0x1

.field public static final LDR_SIZE:I = 0x100

.field public static final MIXED_CLONE:I = 0x2

.field public static final MONOCHROME_TRANSFER:I = 0x3

.field public static final NORMAL_CLONE:I = 0x1

.field public static final NORMCONV_FILTER:I = 0x2

.field public static final RECURS_FILTER:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorChange(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 283
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->colorChange_1(JJJ)V

    .line 285
    return-void
.end method

.method public static colorChange(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;FFF)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "red_mul"    # F
    .param p4, "green_mul"    # F
    .param p5, "blue_mul"    # F

    .prologue
    .line 274
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/photo/Photo;->colorChange_0(JJJFFF)V

    .line 276
    return-void
.end method

.method private static native colorChange_0(JJJFFF)V
.end method

.method private static native colorChange_1(JJJ)V
.end method

.method public static createAlignMTB()Lorg/opencv/photo/AlignMTB;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lorg/opencv/photo/AlignMTB;

    invoke-static {}, Lorg/opencv/photo/Photo;->createAlignMTB_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/AlignMTB;-><init>(J)V

    .line 50
    .local v0, "retVal":Lorg/opencv/photo/AlignMTB;
    return-object v0
.end method

.method public static createAlignMTB(IIZ)Lorg/opencv/photo/AlignMTB;
    .locals 4
    .param p0, "max_bits"    # I
    .param p1, "exclude_range"    # I
    .param p2, "cut"    # Z

    .prologue
    .line 39
    new-instance v0, Lorg/opencv/photo/AlignMTB;

    invoke-static {p0, p1, p2}, Lorg/opencv/photo/Photo;->createAlignMTB_0(IIZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/AlignMTB;-><init>(J)V

    .line 41
    .local v0, "retVal":Lorg/opencv/photo/AlignMTB;
    return-object v0
.end method

.method private static native createAlignMTB_0(IIZ)J
.end method

.method private static native createAlignMTB_1()J
.end method

.method public static createCalibrateDebevec()Lorg/opencv/photo/CalibrateDebevec;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lorg/opencv/photo/CalibrateDebevec;

    invoke-static {}, Lorg/opencv/photo/Photo;->createCalibrateDebevec_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/CalibrateDebevec;-><init>(J)V

    .line 73
    .local v0, "retVal":Lorg/opencv/photo/CalibrateDebevec;
    return-object v0
.end method

.method public static createCalibrateDebevec(IFZ)Lorg/opencv/photo/CalibrateDebevec;
    .locals 4
    .param p0, "samples"    # I
    .param p1, "lambda"    # F
    .param p2, "random"    # Z

    .prologue
    .line 62
    new-instance v0, Lorg/opencv/photo/CalibrateDebevec;

    invoke-static {p0, p1, p2}, Lorg/opencv/photo/Photo;->createCalibrateDebevec_0(IFZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/CalibrateDebevec;-><init>(J)V

    .line 64
    .local v0, "retVal":Lorg/opencv/photo/CalibrateDebevec;
    return-object v0
.end method

.method private static native createCalibrateDebevec_0(IFZ)J
.end method

.method private static native createCalibrateDebevec_1()J
.end method

.method public static createCalibrateRobertson()Lorg/opencv/photo/CalibrateRobertson;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lorg/opencv/photo/CalibrateRobertson;

    invoke-static {}, Lorg/opencv/photo/Photo;->createCalibrateRobertson_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/CalibrateRobertson;-><init>(J)V

    .line 96
    .local v0, "retVal":Lorg/opencv/photo/CalibrateRobertson;
    return-object v0
.end method

.method public static createCalibrateRobertson(IF)Lorg/opencv/photo/CalibrateRobertson;
    .locals 4
    .param p0, "max_iter"    # I
    .param p1, "threshold"    # F

    .prologue
    .line 85
    new-instance v0, Lorg/opencv/photo/CalibrateRobertson;

    invoke-static {p0, p1}, Lorg/opencv/photo/Photo;->createCalibrateRobertson_0(IF)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/CalibrateRobertson;-><init>(J)V

    .line 87
    .local v0, "retVal":Lorg/opencv/photo/CalibrateRobertson;
    return-object v0
.end method

.method private static native createCalibrateRobertson_0(IF)J
.end method

.method private static native createCalibrateRobertson_1()J
.end method

.method public static createMergeDebevec()Lorg/opencv/photo/MergeDebevec;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lorg/opencv/photo/MergeDebevec;

    invoke-static {}, Lorg/opencv/photo/Photo;->createMergeDebevec_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/MergeDebevec;-><init>(J)V

    .line 110
    .local v0, "retVal":Lorg/opencv/photo/MergeDebevec;
    return-object v0
.end method

.method private static native createMergeDebevec_0()J
.end method

.method public static createMergeMertens()Lorg/opencv/photo/MergeMertens;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lorg/opencv/photo/MergeMertens;

    invoke-static {}, Lorg/opencv/photo/Photo;->createMergeMertens_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/MergeMertens;-><init>(J)V

    .line 133
    .local v0, "retVal":Lorg/opencv/photo/MergeMertens;
    return-object v0
.end method

.method public static createMergeMertens(FFF)Lorg/opencv/photo/MergeMertens;
    .locals 4
    .param p0, "contrast_weight"    # F
    .param p1, "saturation_weight"    # F
    .param p2, "exposure_weight"    # F

    .prologue
    .line 122
    new-instance v0, Lorg/opencv/photo/MergeMertens;

    invoke-static {p0, p1, p2}, Lorg/opencv/photo/Photo;->createMergeMertens_0(FFF)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/MergeMertens;-><init>(J)V

    .line 124
    .local v0, "retVal":Lorg/opencv/photo/MergeMertens;
    return-object v0
.end method

.method private static native createMergeMertens_0(FFF)J
.end method

.method private static native createMergeMertens_1()J
.end method

.method public static createMergeRobertson()Lorg/opencv/photo/MergeRobertson;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lorg/opencv/photo/MergeRobertson;

    invoke-static {}, Lorg/opencv/photo/Photo;->createMergeRobertson_0()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/MergeRobertson;-><init>(J)V

    .line 147
    .local v0, "retVal":Lorg/opencv/photo/MergeRobertson;
    return-object v0
.end method

.method private static native createMergeRobertson_0()J
.end method

.method public static createTonemap()Lorg/opencv/photo/Tonemap;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lorg/opencv/photo/Tonemap;

    invoke-static {}, Lorg/opencv/photo/Photo;->createTonemap_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/Tonemap;-><init>(J)V

    .line 170
    .local v0, "retVal":Lorg/opencv/photo/Tonemap;
    return-object v0
.end method

.method public static createTonemap(F)Lorg/opencv/photo/Tonemap;
    .locals 4
    .param p0, "gamma"    # F

    .prologue
    .line 159
    new-instance v0, Lorg/opencv/photo/Tonemap;

    invoke-static {p0}, Lorg/opencv/photo/Photo;->createTonemap_0(F)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/Tonemap;-><init>(J)V

    .line 161
    .local v0, "retVal":Lorg/opencv/photo/Tonemap;
    return-object v0
.end method

.method public static createTonemapDrago()Lorg/opencv/photo/TonemapDrago;
    .locals 4

    .prologue
    .line 191
    new-instance v0, Lorg/opencv/photo/TonemapDrago;

    invoke-static {}, Lorg/opencv/photo/Photo;->createTonemapDrago_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/TonemapDrago;-><init>(J)V

    .line 193
    .local v0, "retVal":Lorg/opencv/photo/TonemapDrago;
    return-object v0
.end method

.method public static createTonemapDrago(FFF)Lorg/opencv/photo/TonemapDrago;
    .locals 4
    .param p0, "gamma"    # F
    .param p1, "saturation"    # F
    .param p2, "bias"    # F

    .prologue
    .line 182
    new-instance v0, Lorg/opencv/photo/TonemapDrago;

    invoke-static {p0, p1, p2}, Lorg/opencv/photo/Photo;->createTonemapDrago_0(FFF)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/TonemapDrago;-><init>(J)V

    .line 184
    .local v0, "retVal":Lorg/opencv/photo/TonemapDrago;
    return-object v0
.end method

.method private static native createTonemapDrago_0(FFF)J
.end method

.method private static native createTonemapDrago_1()J
.end method

.method public static createTonemapDurand()Lorg/opencv/photo/TonemapDurand;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Lorg/opencv/photo/TonemapDurand;

    invoke-static {}, Lorg/opencv/photo/Photo;->createTonemapDurand_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/TonemapDurand;-><init>(J)V

    .line 216
    .local v0, "retVal":Lorg/opencv/photo/TonemapDurand;
    return-object v0
.end method

.method public static createTonemapDurand(FFFFF)Lorg/opencv/photo/TonemapDurand;
    .locals 4
    .param p0, "gamma"    # F
    .param p1, "contrast"    # F
    .param p2, "saturation"    # F
    .param p3, "sigma_space"    # F
    .param p4, "sigma_color"    # F

    .prologue
    .line 205
    new-instance v0, Lorg/opencv/photo/TonemapDurand;

    invoke-static {p0, p1, p2, p3, p4}, Lorg/opencv/photo/Photo;->createTonemapDurand_0(FFFFF)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/TonemapDurand;-><init>(J)V

    .line 207
    .local v0, "retVal":Lorg/opencv/photo/TonemapDurand;
    return-object v0
.end method

.method private static native createTonemapDurand_0(FFFFF)J
.end method

.method private static native createTonemapDurand_1()J
.end method

.method public static createTonemapMantiuk()Lorg/opencv/photo/TonemapMantiuk;
    .locals 4

    .prologue
    .line 237
    new-instance v0, Lorg/opencv/photo/TonemapMantiuk;

    invoke-static {}, Lorg/opencv/photo/Photo;->createTonemapMantiuk_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/TonemapMantiuk;-><init>(J)V

    .line 239
    .local v0, "retVal":Lorg/opencv/photo/TonemapMantiuk;
    return-object v0
.end method

.method public static createTonemapMantiuk(FFF)Lorg/opencv/photo/TonemapMantiuk;
    .locals 4
    .param p0, "gamma"    # F
    .param p1, "scale"    # F
    .param p2, "saturation"    # F

    .prologue
    .line 228
    new-instance v0, Lorg/opencv/photo/TonemapMantiuk;

    invoke-static {p0, p1, p2}, Lorg/opencv/photo/Photo;->createTonemapMantiuk_0(FFF)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/TonemapMantiuk;-><init>(J)V

    .line 230
    .local v0, "retVal":Lorg/opencv/photo/TonemapMantiuk;
    return-object v0
.end method

.method private static native createTonemapMantiuk_0(FFF)J
.end method

.method private static native createTonemapMantiuk_1()J
.end method

.method public static createTonemapReinhard()Lorg/opencv/photo/TonemapReinhard;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Lorg/opencv/photo/TonemapReinhard;

    invoke-static {}, Lorg/opencv/photo/Photo;->createTonemapReinhard_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/TonemapReinhard;-><init>(J)V

    .line 262
    .local v0, "retVal":Lorg/opencv/photo/TonemapReinhard;
    return-object v0
.end method

.method public static createTonemapReinhard(FFFF)Lorg/opencv/photo/TonemapReinhard;
    .locals 4
    .param p0, "gamma"    # F
    .param p1, "intensity"    # F
    .param p2, "light_adapt"    # F
    .param p3, "color_adapt"    # F

    .prologue
    .line 251
    new-instance v0, Lorg/opencv/photo/TonemapReinhard;

    invoke-static {p0, p1, p2, p3}, Lorg/opencv/photo/Photo;->createTonemapReinhard_0(FFFF)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/photo/TonemapReinhard;-><init>(J)V

    .line 253
    .local v0, "retVal":Lorg/opencv/photo/TonemapReinhard;
    return-object v0
.end method

.method private static native createTonemapReinhard_0(FFFF)J
.end method

.method private static native createTonemapReinhard_1()J
.end method

.method private static native createTonemap_0(F)J
.end method

.method private static native createTonemap_1()J
.end method

.method public static decolor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "grayscale"    # Lorg/opencv/core/Mat;
    .param p2, "color_boost"    # Lorg/opencv/core/Mat;

    .prologue
    .line 297
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->decolor_0(JJJ)V

    .line 299
    return-void
.end method

.method private static native decolor_0(JJJ)V
.end method

.method public static denoise_TVL1(Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "result"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "observations":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 320
    .local v0, "observations_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/photo/Photo;->denoise_TVL1_1(JJ)V

    .line 322
    return-void
.end method

.method public static denoise_TVL1(Ljava/util/List;Lorg/opencv/core/Mat;DI)V
    .locals 8
    .param p1, "result"    # Lorg/opencv/core/Mat;
    .param p2, "lambda"    # D
    .param p4, "niters"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "DI)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "observations":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v7

    .line 311
    .local v7, "observations_mat":Lorg/opencv/core/Mat;
    iget-wide v0, v7, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/photo/Photo;->denoise_TVL1_0(JJDI)V

    .line 313
    return-void
.end method

.method private static native denoise_TVL1_0(JJDI)V
.end method

.method private static native denoise_TVL1_1(JJ)V
.end method

.method public static detailEnhance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 343
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/photo/Photo;->detailEnhance_1(JJ)V

    .line 345
    return-void
.end method

.method public static detailEnhance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;FF)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "sigma_s"    # F
    .param p3, "sigma_r"    # F

    .prologue
    .line 334
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->detailEnhance_0(JJFF)V

    .line 336
    return-void
.end method

.method private static native detailEnhance_0(JJFF)V
.end method

.method private static native detailEnhance_1(JJ)V
.end method

.method public static edgePreservingFilter(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 366
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/photo/Photo;->edgePreservingFilter_1(JJ)V

    .line 368
    return-void
.end method

.method public static edgePreservingFilter(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IFF)V
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I
    .param p3, "sigma_s"    # F
    .param p4, "sigma_r"    # F

    .prologue
    .line 357
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/photo/Photo;->edgePreservingFilter_0(JJIFF)V

    .line 359
    return-void
.end method

.method private static native edgePreservingFilter_0(JJIFF)V
.end method

.method private static native edgePreservingFilter_1(JJ)V
.end method

.method public static fastNlMeansDenoising(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 389
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/photo/Photo;->fastNlMeansDenoising_1(JJ)V

    .line 391
    return-void
.end method

.method public static fastNlMeansDenoising(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;FII)V
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "h"    # F
    .param p3, "templateWindowSize"    # I
    .param p4, "searchWindowSize"    # I

    .prologue
    .line 380
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/photo/Photo;->fastNlMeansDenoising_0(JJFII)V

    .line 382
    return-void
.end method

.method public static fastNlMeansDenoising(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfFloat;)V
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "h"    # Lorg/opencv/core/MatOfFloat;

    .prologue
    .line 411
    move-object v6, p2

    .line 412
    .local v6, "h_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v6, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->fastNlMeansDenoising_3(JJJ)V

    .line 414
    return-void
.end method

.method public static fastNlMeansDenoising(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfFloat;III)V
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "h"    # Lorg/opencv/core/MatOfFloat;
    .param p3, "templateWindowSize"    # I
    .param p4, "searchWindowSize"    # I
    .param p5, "normType"    # I

    .prologue
    .line 402
    move-object v9, p2

    .line 403
    .local v9, "h_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v9, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/photo/Photo;->fastNlMeansDenoising_2(JJJIII)V

    .line 405
    return-void
.end method

.method public static fastNlMeansDenoisingColored(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 435
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/photo/Photo;->fastNlMeansDenoisingColored_1(JJ)V

    .line 437
    return-void
.end method

.method public static fastNlMeansDenoisingColored(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;FFII)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "h"    # F
    .param p3, "hColor"    # F
    .param p4, "templateWindowSize"    # I
    .param p5, "searchWindowSize"    # I

    .prologue
    .line 426
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lorg/opencv/photo/Photo;->fastNlMeansDenoisingColored_0(JJFFII)V

    .line 428
    return-void
.end method

.method public static fastNlMeansDenoisingColoredMulti(Ljava/util/List;Lorg/opencv/core/Mat;II)V
    .locals 7
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "imgToDenoiseIndex"    # I
    .param p3, "temporalWindowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "srcImgs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v6

    .line 458
    .local v6, "srcImgs_mat":Lorg/opencv/core/Mat;
    iget-wide v0, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->fastNlMeansDenoisingColoredMulti_1(JJII)V

    .line 460
    return-void
.end method

.method public static fastNlMeansDenoisingColoredMulti(Ljava/util/List;Lorg/opencv/core/Mat;IIFFII)V
    .locals 11
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "imgToDenoiseIndex"    # I
    .param p3, "temporalWindowSize"    # I
    .param p4, "h"    # F
    .param p5, "hColor"    # F
    .param p6, "templateWindowSize"    # I
    .param p7, "searchWindowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "IIFFII)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "srcImgs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 449
    .local v10, "srcImgs_mat":Lorg/opencv/core/Mat;
    iget-wide v0, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lorg/opencv/photo/Photo;->fastNlMeansDenoisingColoredMulti_0(JJIIFFII)V

    .line 451
    return-void
.end method

.method private static native fastNlMeansDenoisingColoredMulti_0(JJIIFFII)V
.end method

.method private static native fastNlMeansDenoisingColoredMulti_1(JJII)V
.end method

.method private static native fastNlMeansDenoisingColored_0(JJFFII)V
.end method

.method private static native fastNlMeansDenoisingColored_1(JJ)V
.end method

.method public static fastNlMeansDenoisingMulti(Ljava/util/List;Lorg/opencv/core/Mat;II)V
    .locals 7
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "imgToDenoiseIndex"    # I
    .param p3, "temporalWindowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "srcImgs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v6

    .line 481
    .local v6, "srcImgs_mat":Lorg/opencv/core/Mat;
    iget-wide v0, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->fastNlMeansDenoisingMulti_1(JJII)V

    .line 483
    return-void
.end method

.method public static fastNlMeansDenoisingMulti(Ljava/util/List;Lorg/opencv/core/Mat;IIFII)V
    .locals 10
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "imgToDenoiseIndex"    # I
    .param p3, "temporalWindowSize"    # I
    .param p4, "h"    # F
    .param p5, "templateWindowSize"    # I
    .param p6, "searchWindowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "IIFII)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "srcImgs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v9

    .line 472
    .local v9, "srcImgs_mat":Lorg/opencv/core/Mat;
    iget-wide v0, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lorg/opencv/photo/Photo;->fastNlMeansDenoisingMulti_0(JJIIFII)V

    .line 474
    return-void
.end method

.method public static fastNlMeansDenoisingMulti(Ljava/util/List;Lorg/opencv/core/Mat;IILorg/opencv/core/MatOfFloat;)V
    .locals 10
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "imgToDenoiseIndex"    # I
    .param p3, "temporalWindowSize"    # I
    .param p4, "h"    # Lorg/opencv/core/MatOfFloat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "II",
            "Lorg/opencv/core/MatOfFloat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "srcImgs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v9

    .line 505
    .local v9, "srcImgs_mat":Lorg/opencv/core/Mat;
    move-object v8, p4

    .line 506
    .local v8, "h_mat":Lorg/opencv/core/Mat;
    iget-wide v0, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/photo/Photo;->fastNlMeansDenoisingMulti_3(JJIIJ)V

    .line 508
    return-void
.end method

.method public static fastNlMeansDenoisingMulti(Ljava/util/List;Lorg/opencv/core/Mat;IILorg/opencv/core/MatOfFloat;III)V
    .locals 13
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "imgToDenoiseIndex"    # I
    .param p3, "temporalWindowSize"    # I
    .param p4, "h"    # Lorg/opencv/core/MatOfFloat;
    .param p5, "templateWindowSize"    # I
    .param p6, "searchWindowSize"    # I
    .param p7, "normType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "II",
            "Lorg/opencv/core/MatOfFloat;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "srcImgs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v12

    .line 495
    .local v12, "srcImgs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v11, p4

    .line 496
    .local v11, "h_mat":Lorg/opencv/core/Mat;
    iget-wide v0, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lorg/opencv/photo/Photo;->fastNlMeansDenoisingMulti_2(JJIIJIII)V

    .line 498
    return-void
.end method

.method private static native fastNlMeansDenoisingMulti_0(JJIIFII)V
.end method

.method private static native fastNlMeansDenoisingMulti_1(JJII)V
.end method

.method private static native fastNlMeansDenoisingMulti_2(JJIIJIII)V
.end method

.method private static native fastNlMeansDenoisingMulti_3(JJIIJ)V
.end method

.method private static native fastNlMeansDenoising_0(JJFII)V
.end method

.method private static native fastNlMeansDenoising_1(JJ)V
.end method

.method private static native fastNlMeansDenoising_2(JJJIII)V
.end method

.method private static native fastNlMeansDenoising_3(JJJ)V
.end method

.method public static illuminationChange(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 529
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->illuminationChange_1(JJJ)V

    .line 531
    return-void
.end method

.method public static illuminationChange(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;FF)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "alpha"    # F
    .param p4, "beta"    # F

    .prologue
    .line 520
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/photo/Photo;->illuminationChange_0(JJJFF)V

    .line 522
    return-void
.end method

.method private static native illuminationChange_0(JJJFF)V
.end method

.method private static native illuminationChange_1(JJJ)V
.end method

.method public static inpaint(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DI)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "inpaintMask"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "inpaintRadius"    # D
    .param p5, "flags"    # I

    .prologue
    .line 543
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/photo/Photo;->inpaint_0(JJJDI)V

    .line 545
    return-void
.end method

.method private static native inpaint_0(JJJDI)V
.end method

.method public static pencilSketch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst1"    # Lorg/opencv/core/Mat;
    .param p2, "dst2"    # Lorg/opencv/core/Mat;

    .prologue
    .line 566
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->pencilSketch_1(JJJ)V

    .line 568
    return-void
.end method

.method public static pencilSketch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;FFF)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst1"    # Lorg/opencv/core/Mat;
    .param p2, "dst2"    # Lorg/opencv/core/Mat;
    .param p3, "sigma_s"    # F
    .param p4, "sigma_r"    # F
    .param p5, "shade_factor"    # F

    .prologue
    .line 557
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/photo/Photo;->pencilSketch_0(JJJFFF)V

    .line 559
    return-void
.end method

.method private static native pencilSketch_0(JJJFFF)V
.end method

.method private static native pencilSketch_1(JJJ)V
.end method

.method public static seamlessClone(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Point;Lorg/opencv/core/Mat;I)V
    .locals 15
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "mask"    # Lorg/opencv/core/Mat;
    .param p3, "p"    # Lorg/opencv/core/Point;
    .param p4, "blend"    # Lorg/opencv/core/Mat;
    .param p5, "flags"    # I

    .prologue
    .line 580
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Point;->x:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Point;->y:D

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v14, p5

    invoke-static/range {v2 .. v14}, Lorg/opencv/photo/Photo;->seamlessClone_0(JJJDDJI)V

    .line 582
    return-void
.end method

.method private static native seamlessClone_0(JJJDDJI)V
.end method

.method public static stylization(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 603
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/photo/Photo;->stylization_1(JJ)V

    .line 605
    return-void
.end method

.method public static stylization(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;FF)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "sigma_s"    # F
    .param p3, "sigma_r"    # F

    .prologue
    .line 594
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->stylization_0(JJFF)V

    .line 596
    return-void
.end method

.method private static native stylization_0(JJFF)V
.end method

.method private static native stylization_1(JJ)V
.end method

.method public static textureFlattening(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 626
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/photo/Photo;->textureFlattening_1(JJJ)V

    .line 628
    return-void
.end method

.method public static textureFlattening(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;FFI)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "low_threshold"    # F
    .param p4, "high_threshold"    # F
    .param p5, "kernel_size"    # I

    .prologue
    .line 617
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/photo/Photo;->textureFlattening_0(JJJFFI)V

    .line 619
    return-void
.end method

.method private static native textureFlattening_0(JJJFFI)V
.end method

.method private static native textureFlattening_1(JJJ)V
.end method
