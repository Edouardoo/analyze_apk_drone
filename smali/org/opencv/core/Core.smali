.class public Lorg/opencv/core/Core;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/opencv/core/Core$MinMaxLocResult;
    }
.end annotation


# static fields
.field public static final BORDER_CONSTANT:I = 0x0

.field public static final BORDER_DEFAULT:I = 0x4

.field public static final BORDER_ISOLATED:I = 0x10

.field public static final BORDER_REFLECT:I = 0x2

.field public static final BORDER_REFLECT101:I = 0x4

.field public static final BORDER_REFLECT_101:I = 0x4

.field public static final BORDER_REPLICATE:I = 0x1

.field public static final BORDER_TRANSPARENT:I = 0x5

.field public static final BORDER_WRAP:I = 0x3

.field public static final BadAlign:I = -0x15

.field public static final BadAlphaChannel:I = -0x12

.field public static final BadCOI:I = -0x18

.field public static final BadCallBack:I = -0x16

.field public static final BadDataPtr:I = -0xc

.field public static final BadDepth:I = -0x11

.field public static final BadImageSize:I = -0xa

.field public static final BadModelOrChSeq:I = -0xe

.field public static final BadNumChannel1U:I = -0x10

.field public static final BadNumChannels:I = -0xf

.field public static final BadOffset:I = -0xb

.field public static final BadOrder:I = -0x13

.field public static final BadOrigin:I = -0x14

.field public static final BadROISize:I = -0x19

.field public static final BadStep:I = -0xd

.field public static final BadTileSize:I = -0x17

.field public static final CMP_EQ:I = 0x0

.field public static final CMP_GE:I = 0x2

.field public static final CMP_GT:I = 0x1

.field public static final CMP_LE:I = 0x4

.field public static final CMP_LT:I = 0x3

.field public static final CMP_NE:I = 0x5

.field public static final COVAR_COLS:I = 0x10

.field public static final COVAR_NORMAL:I = 0x1

.field public static final COVAR_ROWS:I = 0x8

.field public static final COVAR_SCALE:I = 0x4

.field public static final COVAR_SCRAMBLED:I = 0x0

.field public static final COVAR_USE_AVG:I = 0x2

.field private static final CV_16S:I = 0x3

.field private static final CV_16U:I = 0x2

.field private static final CV_32F:I = 0x5

.field private static final CV_32S:I = 0x4

.field private static final CV_64F:I = 0x6

.field private static final CV_8S:I = 0x1

.field private static final CV_8U:I = 0x0

.field private static final CV_USRTYPE1:I = 0x7

.field public static final DCT_INVERSE:I = 0x1

.field public static final DCT_ROWS:I = 0x4

.field public static final DECOMP_CHOLESKY:I = 0x3

.field public static final DECOMP_EIG:I = 0x2

.field public static final DECOMP_LU:I = 0x0

.field public static final DECOMP_NORMAL:I = 0x10

.field public static final DECOMP_QR:I = 0x4

.field public static final DECOMP_SVD:I = 0x1

.field public static final DFT_COMPLEX_INPUT:I = 0x40

.field public static final DFT_COMPLEX_OUTPUT:I = 0x10

.field public static final DFT_INVERSE:I = 0x1

.field public static final DFT_REAL_OUTPUT:I = 0x20

.field public static final DFT_ROWS:I = 0x4

.field public static final DFT_SCALE:I = 0x2

.field public static final FILLED:I = -0x1

.field public static final FLAGS_EXPAND_SAME_NAMES:I = 0x2

.field public static final FLAGS_MAPPING:I = 0x1

.field public static final FLAGS_NONE:I = 0x0

.field public static final FONT_HERSHEY_COMPLEX:I = 0x3

.field public static final FONT_HERSHEY_COMPLEX_SMALL:I = 0x5

.field public static final FONT_HERSHEY_DUPLEX:I = 0x2

.field public static final FONT_HERSHEY_PLAIN:I = 0x1

.field public static final FONT_HERSHEY_SCRIPT_COMPLEX:I = 0x7

.field public static final FONT_HERSHEY_SCRIPT_SIMPLEX:I = 0x6

.field public static final FONT_HERSHEY_SIMPLEX:I = 0x0

.field public static final FONT_HERSHEY_TRIPLEX:I = 0x4

.field public static final FONT_ITALIC:I = 0x10

.field public static final GEMM_1_T:I = 0x1

.field public static final GEMM_2_T:I = 0x2

.field public static final GEMM_3_T:I = 0x4

.field public static final GpuApiCallError:I = -0xd9

.field public static final GpuNotSupported:I = -0xd8

.field public static final HeaderIsNull:I = -0x9

.field public static final IMPL_IPP:I = 0x1

.field public static final IMPL_OPENCL:I = 0x2

.field public static final IMPL_PLAIN:I = 0x0

.field public static final KMEANS_PP_CENTERS:I = 0x2

.field public static final KMEANS_RANDOM_CENTERS:I = 0x0

.field public static final KMEANS_USE_INITIAL_LABELS:I = 0x1

.field public static final LINE_4:I = 0x4

.field public static final LINE_8:I = 0x8

.field public static final LINE_AA:I = 0x10

.field public static final MaskIsTiled:I = -0x1a

.field public static final NATIVE_LIBRARY_NAME:Ljava/lang/String;

.field public static final NORM_HAMMING:I = 0x6

.field public static final NORM_HAMMING2:I = 0x7

.field public static final NORM_INF:I = 0x1

.field public static final NORM_L1:I = 0x2

.field public static final NORM_L2:I = 0x4

.field public static final NORM_L2SQR:I = 0x5

.field public static final NORM_MINMAX:I = 0x20

.field public static final NORM_RELATIVE:I = 0x8

.field public static final NORM_TYPE_MASK:I = 0x7

.field public static final OpenCLApiCallError:I = -0xdc

.field public static final OpenCLDoubleNotSupported:I = -0xdd

.field public static final OpenCLInitError:I = -0xde

.field public static final OpenCLNoAMDBlasFft:I = -0xdf

.field public static final OpenGlApiCallError:I = -0xdb

.field public static final OpenGlNotSupported:I = -0xda

.field public static final REDUCE_AVG:I = 0x1

.field public static final REDUCE_MAX:I = 0x2

.field public static final REDUCE_MIN:I = 0x3

.field public static final REDUCE_SUM:I = 0x0

.field public static final ROTATE_180:I = 0x1

.field public static final ROTATE_90_CLOCKWISE:I = 0x0

.field public static final ROTATE_90_COUNTERCLOCKWISE:I = 0x2

.field public static final SORT_ASCENDING:I = 0x0

.field public static final SORT_DESCENDING:I = 0x10

.field public static final SORT_EVERY_COLUMN:I = 0x1

.field public static final SORT_EVERY_ROW:I = 0x0

.field public static final SVD_FULL_UV:I = 0x4

.field public static final SVD_MODIFY_A:I = 0x1

.field public static final SVD_NO_UV:I = 0x2

.field public static final StsAssert:I = -0xd7

.field public static final StsAutoTrace:I = -0x8

.field public static final StsBackTrace:I = -0x1

.field public static final StsBadArg:I = -0x5

.field public static final StsBadFlag:I = -0xce

.field public static final StsBadFunc:I = -0x6

.field public static final StsBadMask:I = -0xd0

.field public static final StsBadMemBlock:I = -0xd6

.field public static final StsBadPoint:I = -0xcf

.field public static final StsBadSize:I = -0xc9

.field public static final StsDivByZero:I = -0xca

.field public static final StsError:I = -0x2

.field public static final StsFilterOffsetErr:I = -0x1f

.field public static final StsFilterStructContentErr:I = -0x1d

.field public static final StsInplaceNotSupported:I = -0xcb

.field public static final StsInternal:I = -0x3

.field public static final StsKernelStructContentErr:I = -0x1e

.field public static final StsNoConv:I = -0x7

.field public static final StsNoMem:I = -0x4

.field public static final StsNotImplemented:I = -0xd5

.field public static final StsNullPtr:I = -0x1b

.field public static final StsObjectNotFound:I = -0xcc

.field public static final StsOk:I = 0x0

.field public static final StsOutOfRange:I = -0xd3

.field public static final StsParseError:I = -0xd4

.field public static final StsUnmatchedFormats:I = -0xcd

.field public static final StsUnmatchedSizes:I = -0xd1

.field public static final StsUnsupportedFormat:I = -0xd2

.field public static final StsVecLengthErr:I = -0x1c

.field public static final TYPE_FUN:I = 0x3

.field public static final TYPE_GENERAL:I = 0x0

.field public static final TYPE_MARKER:I = 0x1

.field public static final TYPE_WRAPPER:I = 0x2

.field public static final VERSION:Ljava/lang/String;

.field public static final VERSION_MAJOR:I

.field public static final VERSION_MINOR:I

.field public static final VERSION_REVISION:I

.field public static final VERSION_STATUS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lorg/opencv/core/Core;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/opencv/core/Core;->VERSION:Ljava/lang/String;

    .line 27
    invoke-static {}, Lorg/opencv/core/Core;->getNativeLibraryName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/opencv/core/Core;->NATIVE_LIBRARY_NAME:Ljava/lang/String;

    .line 28
    invoke-static {}, Lorg/opencv/core/Core;->getVersionMajor()I

    move-result v0

    sput v0, Lorg/opencv/core/Core;->VERSION_MAJOR:I

    .line 29
    invoke-static {}, Lorg/opencv/core/Core;->getVersionMinor()I

    move-result v0

    sput v0, Lorg/opencv/core/Core;->VERSION_MINOR:I

    .line 30
    invoke-static {}, Lorg/opencv/core/Core;->getVersionRevision()I

    move-result v0

    sput v0, Lorg/opencv/core/Core;->VERSION_REVISION:I

    .line 31
    invoke-static {}, Lorg/opencv/core/Core;->getVersionStatus()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/opencv/core/Core;->VERSION_STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LUT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "lut"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 688
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->LUT_0(JJJ)V

    .line 690
    return-void
.end method

.method private static native LUT_0(JJJ)V
.end method

.method public static Mahalanobis(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 8
    .param p0, "v1"    # Lorg/opencv/core/Mat;
    .param p1, "v2"    # Lorg/opencv/core/Mat;
    .param p2, "icovar"    # Lorg/opencv/core/Mat;

    .prologue
    .line 345
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->Mahalanobis_0(JJJ)D

    move-result-wide v6

    .line 347
    .local v6, "retVal":D
    return-wide v6
.end method

.method private static native Mahalanobis_0(JJJ)D
.end method

.method public static PCABackProject(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "result"    # Lorg/opencv/core/Mat;

    .prologue
    .line 702
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->PCABackProject_0(JJJJ)V

    .line 704
    return-void
.end method

.method private static native PCABackProject_0(JJJJ)V
.end method

.method public static PCACompute(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;

    .prologue
    .line 739
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->PCACompute_2(JJJ)V

    .line 741
    return-void
.end method

.method public static PCACompute(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 9
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "retainedVariance"    # D

    .prologue
    .line 716
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->PCACompute_0(JJJD)V

    .line 718
    return-void
.end method

.method public static PCACompute(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "maxComponents"    # I

    .prologue
    .line 730
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->PCACompute_1(JJJI)V

    .line 732
    return-void
.end method

.method private static native PCACompute_0(JJJD)V
.end method

.method private static native PCACompute_1(JJJI)V
.end method

.method private static native PCACompute_2(JJJ)V
.end method

.method public static PCAProject(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "result"    # Lorg/opencv/core/Mat;

    .prologue
    .line 753
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->PCAProject_0(JJJJ)V

    .line 755
    return-void
.end method

.method private static native PCAProject_0(JJJJ)V
.end method

.method public static PSNR(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;

    .prologue
    .line 359
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->PSNR_0(JJ)D

    move-result-wide v0

    .line 361
    .local v0, "retVal":D
    return-wide v0
.end method

.method private static native PSNR_0(JJ)D
.end method

.method public static SVBackSubst(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "w"    # Lorg/opencv/core/Mat;
    .param p1, "u"    # Lorg/opencv/core/Mat;
    .param p2, "vt"    # Lorg/opencv/core/Mat;
    .param p3, "rhs"    # Lorg/opencv/core/Mat;
    .param p4, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 767
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/core/Core;->SVBackSubst_0(JJJJJ)V

    .line 769
    return-void
.end method

.method private static native SVBackSubst_0(JJJJJ)V
.end method

.method public static SVDecomp(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "w"    # Lorg/opencv/core/Mat;
    .param p2, "u"    # Lorg/opencv/core/Mat;
    .param p3, "vt"    # Lorg/opencv/core/Mat;

    .prologue
    .line 790
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->SVDecomp_1(JJJJ)V

    .line 792
    return-void
.end method

.method public static SVDecomp(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "w"    # Lorg/opencv/core/Mat;
    .param p2, "u"    # Lorg/opencv/core/Mat;
    .param p3, "vt"    # Lorg/opencv/core/Mat;
    .param p4, "flags"    # I

    .prologue
    .line 781
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->SVDecomp_0(JJJJI)V

    .line 783
    return-void
.end method

.method private static native SVDecomp_0(JJJJI)V
.end method

.method private static native SVDecomp_1(JJJJ)V
.end method

.method public static absdiff(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 804
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->absdiff_0(JJJ)V

    .line 806
    return-void
.end method

.method public static absdiff(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 818
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->absdiff_1(JDDDDJ)V

    .line 820
    return-void
.end method

.method private static native absdiff_0(JJJ)V
.end method

.method private static native absdiff_1(JDDDDJ)V
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 850
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->add_2(JJJ)V

    .line 852
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 841
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->add_1(JJJJ)V

    .line 843
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    .prologue
    .line 832
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->add_0(JJJJI)V

    .line 834
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 882
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->add_5(JDDDDJ)V

    .line 884
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 16
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 873
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v15}, Lorg/opencv/core/Core;->add_4(JDDDDJJ)V

    .line 875
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    .prologue
    .line 864
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v16, p4

    invoke-static/range {v2 .. v16}, Lorg/opencv/core/Core;->add_3(JDDDDJJI)V

    .line 866
    return-void
.end method

.method public static addWeighted(Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;DDLorg/opencv/core/Mat;)V
    .locals 14
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "alpha"    # D
    .param p3, "src2"    # Lorg/opencv/core/Mat;
    .param p4, "beta"    # D
    .param p6, "gamma"    # D
    .param p8, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 905
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p1

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v2 .. v13}, Lorg/opencv/core/Core;->addWeighted_1(JDJDDJ)V

    .line 907
    return-void
.end method

.method public static addWeighted(Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;DDLorg/opencv/core/Mat;I)V
    .locals 16
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "alpha"    # D
    .param p3, "src2"    # Lorg/opencv/core/Mat;
    .param p4, "beta"    # D
    .param p6, "gamma"    # D
    .param p8, "dst"    # Lorg/opencv/core/Mat;
    .param p9, "dtype"    # I

    .prologue
    .line 896
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v4, p1

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v14, p9

    invoke-static/range {v2 .. v14}, Lorg/opencv/core/Core;->addWeighted_0(JDJDDJI)V

    .line 898
    return-void
.end method

.method private static native addWeighted_0(JDJDDJI)V
.end method

.method private static native addWeighted_1(JDJDDJ)V
.end method

.method private static native add_0(JJJJI)V
.end method

.method private static native add_1(JJJJ)V
.end method

.method private static native add_2(JJJ)V
.end method

.method private static native add_3(JDDDDJJI)V
.end method

.method private static native add_4(JDDDDJJ)V
.end method

.method private static native add_5(JDDDDJ)V
.end method

.method public static batchDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dist"    # Lorg/opencv/core/Mat;
    .param p3, "dtype"    # I
    .param p4, "nidx"    # Lorg/opencv/core/Mat;

    .prologue
    .line 937
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, p4, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->batchDistance_2(JJJIJ)V

    .line 939
    return-void
.end method

.method public static batchDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;II)V
    .locals 11
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dist"    # Lorg/opencv/core/Mat;
    .param p3, "dtype"    # I
    .param p4, "nidx"    # Lorg/opencv/core/Mat;
    .param p5, "normType"    # I
    .param p6, "K"    # I

    .prologue
    .line 928
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, p4, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lorg/opencv/core/Core;->batchDistance_1(JJJIJII)V

    .line 930
    return-void
.end method

.method public static batchDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;IILorg/opencv/core/Mat;IZ)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dist"    # Lorg/opencv/core/Mat;
    .param p3, "dtype"    # I
    .param p4, "nidx"    # Lorg/opencv/core/Mat;
    .param p5, "normType"    # I
    .param p6, "K"    # I
    .param p7, "mask"    # Lorg/opencv/core/Mat;
    .param p8, "update"    # I
    .param p9, "crosscheck"    # Z

    .prologue
    .line 919
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v9, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v15, p8

    move/from16 v16, p9

    invoke-static/range {v2 .. v16}, Lorg/opencv/core/Core;->batchDistance_0(JJJIJIIJIZ)V

    .line 921
    return-void
.end method

.method private static native batchDistance_0(JJJIJIIJIZ)V
.end method

.method private static native batchDistance_1(JJJIJII)V
.end method

.method private static native batchDistance_2(JJJIJ)V
.end method

.method public static bitwise_and(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 960
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->bitwise_and_1(JJJ)V

    .line 962
    return-void
.end method

.method public static bitwise_and(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 951
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->bitwise_and_0(JJJJ)V

    .line 953
    return-void
.end method

.method private static native bitwise_and_0(JJJJ)V
.end method

.method private static native bitwise_and_1(JJJ)V
.end method

.method public static bitwise_not(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 983
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->bitwise_not_1(JJ)V

    .line 985
    return-void
.end method

.method public static bitwise_not(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 974
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->bitwise_not_0(JJJ)V

    .line 976
    return-void
.end method

.method private static native bitwise_not_0(JJJ)V
.end method

.method private static native bitwise_not_1(JJ)V
.end method

.method public static bitwise_or(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1006
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->bitwise_or_1(JJJ)V

    .line 1008
    return-void
.end method

.method public static bitwise_or(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 997
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->bitwise_or_0(JJJJ)V

    .line 999
    return-void
.end method

.method private static native bitwise_or_0(JJJJ)V
.end method

.method private static native bitwise_or_1(JJJ)V
.end method

.method public static bitwise_xor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1029
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->bitwise_xor_1(JJJ)V

    .line 1031
    return-void
.end method

.method public static bitwise_xor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1020
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->bitwise_xor_0(JJJJ)V

    .line 1022
    return-void
.end method

.method private static native bitwise_xor_0(JJJJ)V
.end method

.method private static native bitwise_xor_1(JJJ)V
.end method

.method public static borderInterpolate(III)I
    .locals 1
    .param p0, "p"    # I
    .param p1, "len"    # I
    .param p2, "borderType"    # I

    .prologue
    .line 562
    invoke-static {p0, p1, p2}, Lorg/opencv/core/Core;->borderInterpolate_0(III)I

    move-result v0

    .line 564
    .local v0, "retVal":I
    return v0
.end method

.method private static native borderInterpolate_0(III)I
.end method

.method public static calcCovarMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7
    .param p0, "samples"    # Lorg/opencv/core/Mat;
    .param p1, "covar"    # Lorg/opencv/core/Mat;
    .param p2, "mean"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .prologue
    .line 1052
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->calcCovarMatrix_1(JJJI)V

    .line 1054
    return-void
.end method

.method public static calcCovarMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 8
    .param p0, "samples"    # Lorg/opencv/core/Mat;
    .param p1, "covar"    # Lorg/opencv/core/Mat;
    .param p2, "mean"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I
    .param p4, "ctype"    # I

    .prologue
    .line 1043
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->calcCovarMatrix_0(JJJII)V

    .line 1045
    return-void
.end method

.method private static native calcCovarMatrix_0(JJJII)V
.end method

.method private static native calcCovarMatrix_1(JJJI)V
.end method

.method public static cartToPolar(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "magnitude"    # Lorg/opencv/core/Mat;
    .param p3, "angle"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1075
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->cartToPolar_1(JJJJ)V

    .line 1077
    return-void
.end method

.method public static cartToPolar(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 9
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "magnitude"    # Lorg/opencv/core/Mat;
    .param p3, "angle"    # Lorg/opencv/core/Mat;
    .param p4, "angleInDegrees"    # Z

    .prologue
    .line 1066
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->cartToPolar_0(JJJJZ)V

    .line 1068
    return-void
.end method

.method private static native cartToPolar_0(JJJJZ)V
.end method

.method private static native cartToPolar_1(JJJJ)V
.end method

.method public static checkRange(Lorg/opencv/core/Mat;)Z
    .locals 4
    .param p0, "a"    # Lorg/opencv/core/Mat;

    .prologue
    .line 271
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Core;->checkRange_1(J)Z

    move-result v0

    .line 273
    .local v0, "retVal":Z
    return v0
.end method

.method public static checkRange(Lorg/opencv/core/Mat;ZDD)Z
    .locals 8
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "quiet"    # Z
    .param p2, "minVal"    # D
    .param p4, "maxVal"    # D

    .prologue
    .line 262
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lorg/opencv/core/Core;->checkRange_0(JZDD)Z

    move-result v0

    .line 264
    .local v0, "retVal":Z
    return v0
.end method

.method private static native checkRange_0(JZDD)Z
.end method

.method private static native checkRange_1(J)Z
.end method

.method public static compare(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "cmpop"    # I

    .prologue
    .line 1089
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->compare_0(JJJI)V

    .line 1091
    return-void
.end method

.method public static compare(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;I)V
    .locals 13
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "cmpop"    # I

    .prologue
    .line 1103
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v12, p3

    invoke-static/range {v0 .. v12}, Lorg/opencv/core/Core;->compare_1(JDDDDJI)V

    .line 1105
    return-void
.end method

.method private static native compare_0(JJJI)V
.end method

.method private static native compare_1(JDDDDJI)V
.end method

.method public static completeSymm(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p0, "mtx"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1126
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->completeSymm_1(J)V

    .line 1128
    return-void
.end method

.method public static completeSymm(Lorg/opencv/core/Mat;Z)V
    .locals 2
    .param p0, "mtx"    # Lorg/opencv/core/Mat;
    .param p1, "lowerToUpper"    # Z

    .prologue
    .line 1117
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/core/Core;->completeSymm_0(JZ)V

    .line 1119
    return-void
.end method

.method private static native completeSymm_0(JZ)V
.end method

.method private static native completeSymm_1(J)V
.end method

.method public static convertFp16(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1140
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->convertFp16_0(JJ)V

    .line 1142
    return-void
.end method

.method private static native convertFp16_0(JJ)V
.end method

.method public static convertScaleAbs(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1163
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->convertScaleAbs_1(JJ)V

    .line 1165
    return-void
.end method

.method public static convertScaleAbs(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DD)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D

    .prologue
    .line 1154
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->convertScaleAbs_0(JJDD)V

    .line 1156
    return-void
.end method

.method private static native convertScaleAbs_0(JJDD)V
.end method

.method private static native convertScaleAbs_1(JJ)V
.end method

.method public static copyMakeBorder(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IIIII)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "borderType"    # I

    .prologue
    .line 1186
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->copyMakeBorder_1(JJIIIII)V

    .line 1188
    return-void
.end method

.method public static copyMakeBorder(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IIIIILorg/opencv/core/Scalar;)V
    .locals 20
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "borderType"    # I
    .param p7, "value"    # Lorg/opencv/core/Scalar;

    .prologue
    .line 1177
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v12, v2, v7

    move-object/from16 v0, p7

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v14, v2, v7

    move-object/from16 v0, p7

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v2, v7

    move-object/from16 v0, p7

    iget-object v2, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v2, v7

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v3 .. v19}, Lorg/opencv/core/Core;->copyMakeBorder_0(JJIIIIIDDDD)V

    .line 1179
    return-void
.end method

.method private static native copyMakeBorder_0(JJIIIIIDDDD)V
.end method

.method private static native copyMakeBorder_1(JJIIIII)V
.end method

.method public static countNonZero(Lorg/opencv/core/Mat;)I
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;

    .prologue
    .line 576
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Core;->countNonZero_0(J)I

    move-result v0

    .line 578
    .local v0, "retVal":I
    return v0
.end method

.method private static native countNonZero_0(J)I
.end method

.method public static cubeRoot(F)F
    .locals 1
    .param p0, "val"    # F

    .prologue
    .line 534
    invoke-static {p0}, Lorg/opencv/core/Core;->cubeRoot_0(F)F

    move-result v0

    .line 536
    .local v0, "retVal":F
    return v0
.end method

.method private static native cubeRoot_0(F)F
.end method

.method public static dct(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1209
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->dct_1(JJ)V

    .line 1211
    return-void
.end method

.method public static dct(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .prologue
    .line 1200
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->dct_0(JJI)V

    .line 1202
    return-void
.end method

.method private static native dct_0(JJI)V
.end method

.method private static native dct_1(JJ)V
.end method

.method public static determinant(Lorg/opencv/core/Mat;)D
    .locals 4
    .param p0, "mtx"    # Lorg/opencv/core/Mat;

    .prologue
    .line 373
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Core;->determinant_0(J)D

    move-result-wide v0

    .line 375
    .local v0, "retVal":D
    return-wide v0
.end method

.method private static native determinant_0(J)D
.end method

.method public static dft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1232
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->dft_1(JJ)V

    .line 1234
    return-void
.end method

.method public static dft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I
    .param p3, "nonzeroRows"    # I

    .prologue
    .line 1223
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->dft_0(JJII)V

    .line 1225
    return-void
.end method

.method private static native dft_0(JJII)V
.end method

.method private static native dft_1(JJ)V
.end method

.method public static divide(DLorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "scale"    # D
    .param p2, "src2"    # Lorg/opencv/core/Mat;
    .param p3, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1319
    iget-wide v2, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->divide_7(DJJ)V

    .line 1321
    return-void
.end method

.method public static divide(DLorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 8
    .param p0, "scale"    # D
    .param p2, "src2"    # Lorg/opencv/core/Mat;
    .param p3, "dst"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    .prologue
    .line 1310
    iget-wide v2, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v0, p0

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->divide_6(DJJI)V

    .line 1312
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1264
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->divide_2(JJJ)V

    .line 1266
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D

    .prologue
    .line 1255
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->divide_1(JJJD)V

    .line 1257
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DI)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D
    .param p5, "dtype"    # I

    .prologue
    .line 1246
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->divide_0(JJJDI)V

    .line 1248
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1296
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->divide_5(JDDDDJ)V

    .line 1298
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;D)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D

    .prologue
    .line 1287
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p3

    invoke-static/range {v2 .. v15}, Lorg/opencv/core/Core;->divide_4(JDDDDJD)V

    .line 1289
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;DI)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D
    .param p5, "dtype"    # I

    .prologue
    .line 1278
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p3

    move/from16 v16, p5

    invoke-static/range {v2 .. v16}, Lorg/opencv/core/Core;->divide_3(JDDDDJDI)V

    .line 1280
    return-void
.end method

.method private static native divide_0(JJJDI)V
.end method

.method private static native divide_1(JJJD)V
.end method

.method private static native divide_2(JJJ)V
.end method

.method private static native divide_3(JDDDDJDI)V
.end method

.method private static native divide_4(JDDDDJD)V
.end method

.method private static native divide_5(JDDDDJ)V
.end method

.method private static native divide_6(DJJI)V
.end method

.method private static native divide_7(DJJ)V
.end method

.method public static eigen(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "eigenvalues"    # Lorg/opencv/core/Mat;

    .prologue
    .line 294
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->eigen_1(JJ)Z

    move-result v0

    .line 296
    .local v0, "retVal":Z
    return v0
.end method

.method public static eigen(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "eigenvalues"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;

    .prologue
    .line 285
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->eigen_0(JJJ)Z

    move-result v6

    .line 287
    .local v6, "retVal":Z
    return v6
.end method

.method private static native eigen_0(JJJ)Z
.end method

.method private static native eigen_1(JJ)Z
.end method

.method public static exp(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1333
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->exp_0(JJ)V

    .line 1335
    return-void
.end method

.method private static native exp_0(JJ)V
.end method

.method public static extractChannel(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "coi"    # I

    .prologue
    .line 1347
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->extractChannel_0(JJI)V

    .line 1349
    return-void
.end method

.method private static native extractChannel_0(JJI)V
.end method

.method public static fastAtan2(FF)F
    .locals 1
    .param p0, "y"    # F
    .param p1, "x"    # F

    .prologue
    .line 548
    invoke-static {p0, p1}, Lorg/opencv/core/Core;->fastAtan2_0(FF)F

    move-result v0

    .line 550
    .local v0, "retVal":F
    return v0
.end method

.method private static native fastAtan2_0(FF)F
.end method

.method public static findNonZero(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "idx"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1361
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->findNonZero_0(JJ)V

    .line 1363
    return-void
.end method

.method private static native findNonZero_0(JJ)V
.end method

.method public static flip(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flipCode"    # I

    .prologue
    .line 1375
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->flip_0(JJI)V

    .line 1377
    return-void
.end method

.method private static native flip_0(JJI)V
.end method

.method public static gemm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;DLorg/opencv/core/Mat;)V
    .locals 14
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "src3"    # Lorg/opencv/core/Mat;
    .param p5, "beta"    # D
    .param p7, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1398
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v6, p2

    move-wide/from16 v10, p5

    invoke-static/range {v2 .. v13}, Lorg/opencv/core/Core;->gemm_1(JJDJDJ)V

    .line 1400
    return-void
.end method

.method public static gemm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;DLorg/opencv/core/Mat;I)V
    .locals 15
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "src3"    # Lorg/opencv/core/Mat;
    .param p5, "beta"    # D
    .param p7, "dst"    # Lorg/opencv/core/Mat;
    .param p8, "flags"    # I

    .prologue
    .line 1389
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v6, p2

    move-wide/from16 v10, p5

    move/from16 v14, p8

    invoke-static/range {v2 .. v14}, Lorg/opencv/core/Core;->gemm_0(JJDJDJI)V

    .line 1391
    return-void
.end method

.method private static native gemm_0(JJDJDJI)V
.end method

.method private static native gemm_1(JJDJDJ)V
.end method

.method public static getBuildInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lorg/opencv/core/Core;->getBuildInformation_0()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method private static native getBuildInformation_0()Ljava/lang/String;
.end method

.method public static getCPUTickCount()J
    .locals 2

    .prologue
    .line 660
    invoke-static {}, Lorg/opencv/core/Core;->getCPUTickCount_0()J

    move-result-wide v0

    .line 662
    .local v0, "retVal":J
    return-wide v0
.end method

.method private static native getCPUTickCount_0()J
.end method

.method private static getNativeLibraryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "opencv_java330"

    return-object v0
.end method

.method public static getNumThreads()I
    .locals 1

    .prologue
    .line 590
    invoke-static {}, Lorg/opencv/core/Core;->getNumThreads_0()I

    move-result v0

    .line 592
    .local v0, "retVal":I
    return v0
.end method

.method private static native getNumThreads_0()I
.end method

.method public static getNumberOfCPUs()I
    .locals 1

    .prologue
    .line 604
    invoke-static {}, Lorg/opencv/core/Core;->getNumberOfCPUs_0()I

    move-result v0

    .line 606
    .local v0, "retVal":I
    return v0
.end method

.method private static native getNumberOfCPUs_0()I
.end method

.method public static getOptimalDFTSize(I)I
    .locals 1
    .param p0, "vecsize"    # I

    .prologue
    .line 618
    invoke-static {p0}, Lorg/opencv/core/Core;->getOptimalDFTSize_0(I)I

    move-result v0

    .line 620
    .local v0, "retVal":I
    return v0
.end method

.method private static native getOptimalDFTSize_0(I)I
.end method

.method public static getThreadNum()I
    .locals 1

    .prologue
    .line 632
    invoke-static {}, Lorg/opencv/core/Core;->getThreadNum_0()I

    move-result v0

    .line 634
    .local v0, "retVal":I
    return v0
.end method

.method private static native getThreadNum_0()I
.end method

.method public static getTickCount()J
    .locals 2

    .prologue
    .line 674
    invoke-static {}, Lorg/opencv/core/Core;->getTickCount_0()J

    move-result-wide v0

    .line 676
    .local v0, "retVal":J
    return-wide v0
.end method

.method private static native getTickCount_0()J
.end method

.method public static getTickFrequency()D
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Lorg/opencv/core/Core;->getTickFrequency_0()D

    move-result-wide v0

    .line 389
    .local v0, "retVal":D
    return-wide v0
.end method

.method private static native getTickFrequency_0()D
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "3.3.0"

    return-object v0
.end method

.method private static getVersionMajor()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x3

    return v0
.end method

.method private static getVersionMinor()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x3

    return v0
.end method

.method private static getVersionRevision()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method private static getVersionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, ""

    return-object v0
.end method

.method public static hconcat(Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "dst"    # Lorg/opencv/core/Mat;
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
    .line 1411
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 1412
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->hconcat_0(JJ)V

    .line 1414
    return-void
.end method

.method private static native hconcat_0(JJ)V
.end method

.method public static idct(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1435
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->idct_1(JJ)V

    .line 1437
    return-void
.end method

.method public static idct(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .prologue
    .line 1426
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->idct_0(JJI)V

    .line 1428
    return-void
.end method

.method private static native idct_0(JJI)V
.end method

.method private static native idct_1(JJ)V
.end method

.method public static idft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1458
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->idft_1(JJ)V

    .line 1460
    return-void
.end method

.method public static idft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I
    .param p3, "nonzeroRows"    # I

    .prologue
    .line 1449
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->idft_0(JJII)V

    .line 1451
    return-void
.end method

.method private static native idft_0(JJII)V
.end method

.method private static native idft_1(JJ)V
.end method

.method public static inRange(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 22
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "lowerb"    # Lorg/opencv/core/Scalar;
    .param p2, "upperb"    # Lorg/opencv/core/Scalar;
    .param p3, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1472
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v15, 0x1

    aget-wide v14, v14, v15

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-wide v16, v16, v17

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-wide v18, v18, v19

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v20, v0

    invoke-static/range {v2 .. v21}, Lorg/opencv/core/Core;->inRange_0(JDDDDDDDDJ)V

    .line 1474
    return-void
.end method

.method private static native inRange_0(JDDDDDDDDJ)V
.end method

.method public static insertChannel(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "coi"    # I

    .prologue
    .line 1486
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->insertChannel_0(JJI)V

    .line 1488
    return-void
.end method

.method private static native insertChannel_0(JJI)V
.end method

.method public static invert(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 410
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->invert_1(JJ)D

    move-result-wide v0

    .line 412
    .local v0, "retVal":D
    return-wide v0
.end method

.method public static invert(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .prologue
    .line 401
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/core/Core;->invert_0(JJI)D

    move-result-wide v0

    .line 403
    .local v0, "retVal":D
    return-wide v0
.end method

.method private static native invert_0(JJI)D
.end method

.method private static native invert_1(JJ)D
.end method

.method public static kmeans(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;Lorg/opencv/core/TermCriteria;II)D
    .locals 16
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "K"    # I
    .param p2, "bestLabels"    # Lorg/opencv/core/Mat;
    .param p3, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p4, "attempts"    # I
    .param p5, "flags"    # I

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget v8, v0, Lorg/opencv/core/TermCriteria;->type:I

    move-object/from16 v0, p3

    iget v9, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move/from16 v5, p1

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lorg/opencv/core/Core;->kmeans_1(JIJIIDII)D

    move-result-wide v14

    .line 435
    .local v14, "retVal":D
    return-wide v14
.end method

.method public static kmeans(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;Lorg/opencv/core/TermCriteria;IILorg/opencv/core/Mat;)D
    .locals 18
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "K"    # I
    .param p2, "bestLabels"    # Lorg/opencv/core/Mat;
    .param p3, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p4, "attempts"    # I
    .param p5, "flags"    # I
    .param p6, "centers"    # Lorg/opencv/core/Mat;

    .prologue
    .line 424
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget v8, v0, Lorg/opencv/core/TermCriteria;->type:I

    move-object/from16 v0, p3

    iget v9, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v5, p1

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v3 .. v15}, Lorg/opencv/core/Core;->kmeans_0(JIJIIDIIJ)D

    move-result-wide v16

    .line 426
    .local v16, "retVal":D
    return-wide v16
.end method

.method private static native kmeans_0(JIJIIDIIJ)D
.end method

.method private static native kmeans_1(JIJIIDII)D
.end method

.method public static log(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1500
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->log_0(JJ)V

    .line 1502
    return-void
.end method

.method private static native log_0(JJ)V
.end method

.method public static magnitude(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "magnitude"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1514
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->magnitude_0(JJJ)V

    .line 1516
    return-void
.end method

.method private static native magnitude_0(JJJ)V
.end method

.method public static max(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1528
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->max_0(JJJ)V

    .line 1530
    return-void
.end method

.method public static max(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1542
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->max_1(JDDDDJ)V

    .line 1544
    return-void
.end method

.method private static native max_0(JJJ)V
.end method

.method private static native max_1(JDDDDJ)V
.end method

.method public static mean(Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;

    .prologue
    .line 206
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Core;->mean_1(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    .line 208
    .local v0, "retVal":Lorg/opencv/core/Scalar;
    return-object v0
.end method

.method public static mean(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 197
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->mean_0(JJ)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    .line 199
    .local v0, "retVal":Lorg/opencv/core/Scalar;
    return-object v0
.end method

.method public static meanStdDev(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfDouble;)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/MatOfDouble;
    .param p2, "stddev"    # Lorg/opencv/core/MatOfDouble;

    .prologue
    .line 1565
    move-object v6, p1

    .line 1566
    .local v6, "mean_mat":Lorg/opencv/core/Mat;
    move-object v7, p2

    .line 1567
    .local v7, "stddev_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v7, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->meanStdDev_1(JJJ)V

    .line 1569
    return-void
.end method

.method public static meanStdDev(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/MatOfDouble;
    .param p2, "stddev"    # Lorg/opencv/core/MatOfDouble;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1555
    move-object v8, p1

    .line 1556
    .local v8, "mean_mat":Lorg/opencv/core/Mat;
    move-object v9, p2

    .line 1557
    .local v9, "stddev_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->meanStdDev_0(JJJJ)V

    .line 1559
    return-void
.end method

.method private static native meanStdDev_0(JJJJ)V
.end method

.method private static native meanStdDev_1(JJJ)V
.end method

.method private static native mean_0(JJ)[D
.end method

.method private static native mean_1(J)[D
.end method

.method public static merge(Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "dst"    # Lorg/opencv/core/Mat;
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
    .line 1580
    .local p0, "mv":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 1581
    .local v0, "mv_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->merge_0(JJ)V

    .line 1583
    return-void
.end method

.method private static native merge_0(JJ)V
.end method

.method public static min(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1595
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->min_0(JJJ)V

    .line 1597
    return-void
.end method

.method public static min(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1609
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->min_1(JDDDDJ)V

    .line 1611
    return-void
.end method

.method public static minMaxLoc(Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;
    .locals 1
    .param p0, "src"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2284
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/opencv/core/Core;->minMaxLoc(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;

    move-result-object v0

    return-object v0
.end method

.method public static minMaxLoc(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2266
    new-instance v2, Lorg/opencv/core/Core$MinMaxLocResult;

    invoke-direct {v2}, Lorg/opencv/core/Core$MinMaxLocResult;-><init>()V

    .line 2267
    .local v2, "res":Lorg/opencv/core/Core$MinMaxLocResult;
    const-wide/16 v0, 0x0

    .line 2268
    .local v0, "maskNativeObj":J
    if-eqz p1, :cond_0

    .line 2269
    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    .line 2271
    :cond_0
    iget-wide v4, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v4, v5, v0, v1}, Lorg/opencv/core/Core;->n_minMaxLocManual(JJ)[D

    move-result-object v3

    .line 2272
    .local v3, "resarr":[D
    const/4 v4, 0x0

    aget-wide v4, v3, v4

    iput-wide v4, v2, Lorg/opencv/core/Core$MinMaxLocResult;->minVal:D

    .line 2273
    const/4 v4, 0x1

    aget-wide v4, v3, v4

    iput-wide v4, v2, Lorg/opencv/core/Core$MinMaxLocResult;->maxVal:D

    .line 2274
    iget-object v4, v2, Lorg/opencv/core/Core$MinMaxLocResult;->minLoc:Lorg/opencv/core/Point;

    const/4 v5, 0x2

    aget-wide v6, v3, v5

    iput-wide v6, v4, Lorg/opencv/core/Point;->x:D

    .line 2275
    iget-object v4, v2, Lorg/opencv/core/Core$MinMaxLocResult;->minLoc:Lorg/opencv/core/Point;

    const/4 v5, 0x3

    aget-wide v6, v3, v5

    iput-wide v6, v4, Lorg/opencv/core/Point;->y:D

    .line 2276
    iget-object v4, v2, Lorg/opencv/core/Core$MinMaxLocResult;->maxLoc:Lorg/opencv/core/Point;

    const/4 v5, 0x4

    aget-wide v6, v3, v5

    iput-wide v6, v4, Lorg/opencv/core/Point;->x:D

    .line 2277
    iget-object v4, v2, Lorg/opencv/core/Core$MinMaxLocResult;->maxLoc:Lorg/opencv/core/Point;

    const/4 v5, 0x5

    aget-wide v6, v3, v5

    iput-wide v6, v4, Lorg/opencv/core/Point;->y:D

    .line 2278
    return-object v2
.end method

.method private static native min_0(JJJ)V
.end method

.method private static native min_1(JDDDDJ)V
.end method

.method public static mixChannels(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/MatOfInt;)V
    .locals 9
    .param p2, "fromTo"    # Lorg/opencv/core/MatOfInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/MatOfInt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1622
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "dst":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 1623
    .local v8, "src_mat":Lorg/opencv/core/Mat;
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v6

    .line 1624
    .local v6, "dst_mat":Lorg/opencv/core/Mat;
    move-object v7, p2

    .line 1625
    .local v7, "fromTo_mat":Lorg/opencv/core/Mat;
    iget-wide v0, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v7, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->mixChannels_0(JJJ)V

    .line 1627
    return-void
.end method

.method private static native mixChannels_0(JJJ)V
.end method

.method public static mulSpectrums(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "b"    # Lorg/opencv/core/Mat;
    .param p2, "c"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .prologue
    .line 1648
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->mulSpectrums_1(JJJI)V

    .line 1650
    return-void
.end method

.method public static mulSpectrums(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IZ)V
    .locals 8
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "b"    # Lorg/opencv/core/Mat;
    .param p2, "c"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I
    .param p4, "conjB"    # Z

    .prologue
    .line 1639
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->mulSpectrums_0(JJJIZ)V

    .line 1641
    return-void
.end method

.method private static native mulSpectrums_0(JJJIZ)V
.end method

.method private static native mulSpectrums_1(JJJI)V
.end method

.method public static mulTransposed(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "aTa"    # Z

    .prologue
    .line 1680
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->mulTransposed_2(JJZ)V

    .line 1682
    return-void
.end method

.method public static mulTransposed(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZLorg/opencv/core/Mat;D)V
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "aTa"    # Z
    .param p3, "delta"    # Lorg/opencv/core/Mat;
    .param p4, "scale"    # D

    .prologue
    .line 1671
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->mulTransposed_1(JJZJD)V

    .line 1673
    return-void
.end method

.method public static mulTransposed(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZLorg/opencv/core/Mat;DI)V
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "aTa"    # Z
    .param p3, "delta"    # Lorg/opencv/core/Mat;
    .param p4, "scale"    # D
    .param p6, "dtype"    # I

    .prologue
    .line 1662
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move-wide v7, p4

    move/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lorg/opencv/core/Core;->mulTransposed_0(JJZJDI)V

    .line 1664
    return-void
.end method

.method private static native mulTransposed_0(JJZJDI)V
.end method

.method private static native mulTransposed_1(JJZJD)V
.end method

.method private static native mulTransposed_2(JJZ)V
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1712
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->multiply_2(JJJ)V

    .line 1714
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D

    .prologue
    .line 1703
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->multiply_1(JJJD)V

    .line 1705
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DI)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D
    .param p5, "dtype"    # I

    .prologue
    .line 1694
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->multiply_0(JJJDI)V

    .line 1696
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1744
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->multiply_5(JDDDDJ)V

    .line 1746
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;D)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D

    .prologue
    .line 1735
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p3

    invoke-static/range {v2 .. v15}, Lorg/opencv/core/Core;->multiply_4(JDDDDJD)V

    .line 1737
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;DI)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D
    .param p5, "dtype"    # I

    .prologue
    .line 1726
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p3

    move/from16 v16, p5

    invoke-static/range {v2 .. v16}, Lorg/opencv/core/Core;->multiply_3(JDDDDJDI)V

    .line 1728
    return-void
.end method

.method private static native multiply_0(JJJDI)V
.end method

.method private static native multiply_1(JJJD)V
.end method

.method private static native multiply_2(JJJ)V
.end method

.method private static native multiply_3(JDDDDJDI)V
.end method

.method private static native multiply_4(JDDDDJD)V
.end method

.method private static native multiply_5(JDDDDJ)V
.end method

.method private static native n_minMaxLocManual(JJ)[D
.end method

.method public static norm(Lorg/opencv/core/Mat;)D
    .locals 4
    .param p0, "src1"    # Lorg/opencv/core/Mat;

    .prologue
    .line 497
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Core;->norm_5(J)D

    move-result-wide v0

    .line 499
    .local v0, "retVal":D
    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;I)D
    .locals 4
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "normType"    # I

    .prologue
    .line 488
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/core/Core;->norm_4(JI)D

    move-result-wide v0

    .line 490
    .local v0, "retVal":D
    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)D
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "normType"    # I
    .param p2, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 479
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1, v4, v5}, Lorg/opencv/core/Core;->norm_3(JIJ)D

    move-result-wide v0

    .line 481
    .local v0, "retVal":D
    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;

    .prologue
    .line 465
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->norm_2(JJ)D

    move-result-wide v0

    .line 467
    .local v0, "retVal":D
    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "normType"    # I

    .prologue
    .line 456
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/core/Core;->norm_1(JJI)D

    move-result-wide v0

    .line 458
    .local v0, "retVal":D
    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)D
    .locals 10
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "normType"    # I
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 447
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->norm_0(JJIJ)D

    move-result-wide v8

    .line 449
    .local v8, "retVal":D
    return-wide v8
.end method

.method private static native norm_0(JJIJ)D
.end method

.method private static native norm_1(JJI)D
.end method

.method private static native norm_2(JJ)D
.end method

.method private static native norm_3(JIJ)D
.end method

.method private static native norm_4(JI)D
.end method

.method private static native norm_5(J)D
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1785
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->normalize_3(JJ)V

    .line 1787
    return-void
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)V
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "norm_type"    # I

    .prologue
    .line 1776
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->normalize_2(JJDDI)V

    .line 1778
    return-void
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDII)V
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "norm_type"    # I
    .param p7, "dtype"    # I

    .prologue
    .line 1767
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lorg/opencv/core/Core;->normalize_1(JJDDII)V

    .line 1769
    return-void
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDIILorg/opencv/core/Mat;)V
    .locals 14
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "norm_type"    # I
    .param p7, "dtype"    # I
    .param p8, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1758
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v2 .. v13}, Lorg/opencv/core/Core;->normalize_0(JJDDIIJ)V

    .line 1760
    return-void
.end method

.method private static native normalize_0(JJDDIIJ)V
.end method

.method private static native normalize_1(JJDDII)V
.end method

.method private static native normalize_2(JJDDI)V
.end method

.method private static native normalize_3(JJ)V
.end method

.method public static patchNaNs(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p0, "a"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1808
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->patchNaNs_1(J)V

    .line 1810
    return-void
.end method

.method public static patchNaNs(Lorg/opencv/core/Mat;D)V
    .locals 3
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "val"    # D

    .prologue
    .line 1799
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/core/Core;->patchNaNs_0(JD)V

    .line 1801
    return-void
.end method

.method private static native patchNaNs_0(JD)V
.end method

.method private static native patchNaNs_1(J)V
.end method

.method public static perspectiveTransform(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1822
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->perspectiveTransform_0(JJJ)V

    .line 1824
    return-void
.end method

.method private static native perspectiveTransform_0(JJJ)V
.end method

.method public static phase(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "angle"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1845
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->phase_1(JJJ)V

    .line 1847
    return-void
.end method

.method public static phase(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 7
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "angle"    # Lorg/opencv/core/Mat;
    .param p3, "angleInDegrees"    # Z

    .prologue
    .line 1836
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->phase_0(JJJZ)V

    .line 1838
    return-void
.end method

.method private static native phase_0(JJJZ)V
.end method

.method private static native phase_1(JJJ)V
.end method

.method public static polarToCart(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "magnitude"    # Lorg/opencv/core/Mat;
    .param p1, "angle"    # Lorg/opencv/core/Mat;
    .param p2, "x"    # Lorg/opencv/core/Mat;
    .param p3, "y"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1868
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->polarToCart_1(JJJJ)V

    .line 1870
    return-void
.end method

.method public static polarToCart(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 9
    .param p0, "magnitude"    # Lorg/opencv/core/Mat;
    .param p1, "angle"    # Lorg/opencv/core/Mat;
    .param p2, "x"    # Lorg/opencv/core/Mat;
    .param p3, "y"    # Lorg/opencv/core/Mat;
    .param p4, "angleInDegrees"    # Z

    .prologue
    .line 1859
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->polarToCart_0(JJJJZ)V

    .line 1861
    return-void
.end method

.method private static native polarToCart_0(JJJJZ)V
.end method

.method private static native polarToCart_1(JJJJ)V
.end method

.method public static pow(Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;)V
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "power"    # D
    .param p3, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1882
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->pow_0(JDJ)V

    .line 1884
    return-void
.end method

.method private static native pow_0(JDJ)V
.end method

.method public static randShuffle(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p0, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1905
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->randShuffle_1(J)V

    .line 1907
    return-void
.end method

.method public static randShuffle(Lorg/opencv/core/Mat;D)V
    .locals 3
    .param p0, "dst"    # Lorg/opencv/core/Mat;
    .param p1, "iterFactor"    # D

    .prologue
    .line 1896
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/core/Core;->randShuffle_0(JD)V

    .line 1898
    return-void
.end method

.method private static native randShuffle_0(JD)V
.end method

.method private static native randShuffle_1(J)V
.end method

.method public static randn(Lorg/opencv/core/Mat;DD)V
    .locals 7
    .param p0, "dst"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # D
    .param p3, "stddev"    # D

    .prologue
    .line 1919
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->randn_0(JDD)V

    .line 1921
    return-void
.end method

.method private static native randn_0(JDD)V
.end method

.method public static randu(Lorg/opencv/core/Mat;DD)V
    .locals 7
    .param p0, "dst"    # Lorg/opencv/core/Mat;
    .param p1, "low"    # D
    .param p3, "high"    # D

    .prologue
    .line 1933
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->randu_0(JDD)V

    .line 1935
    return-void
.end method

.method private static native randu_0(JDD)V
.end method

.method public static reduce(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "dim"    # I
    .param p3, "rtype"    # I

    .prologue
    .line 1956
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->reduce_1(JJII)V

    .line 1958
    return-void
.end method

.method public static reduce(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;III)V
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "dim"    # I
    .param p3, "rtype"    # I
    .param p4, "dtype"    # I

    .prologue
    .line 1947
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->reduce_0(JJIII)V

    .line 1949
    return-void
.end method

.method private static native reduce_0(JJIII)V
.end method

.method private static native reduce_1(JJII)V
.end method

.method public static repeat(Lorg/opencv/core/Mat;IILorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "ny"    # I
    .param p2, "nx"    # I
    .param p3, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1970
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->repeat_0(JIIJ)V

    .line 1972
    return-void
.end method

.method private static native repeat_0(JIIJ)V
.end method

.method public static rotate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "rotateCode"    # I

    .prologue
    .line 1984
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->rotate_0(JJI)V

    .line 1986
    return-void
.end method

.method private static native rotate_0(JJI)V
.end method

.method public static scaleAdd(Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "alpha"    # D
    .param p3, "src2"    # Lorg/opencv/core/Mat;
    .param p4, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 1998
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->scaleAdd_0(JDJJ)V

    .line 2000
    return-void
.end method

.method private static native scaleAdd_0(JDJJ)V
.end method

.method public static setErrorVerbosity(Z)V
    .locals 0
    .param p0, "verbose"    # Z

    .prologue
    .line 2012
    invoke-static {p0}, Lorg/opencv/core/Core;->setErrorVerbosity_0(Z)V

    .line 2014
    return-void
.end method

.method private static native setErrorVerbosity_0(Z)V
.end method

.method public static setIdentity(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p0, "mtx"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2035
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->setIdentity_1(J)V

    .line 2037
    return-void
.end method

.method public static setIdentity(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;)V
    .locals 10
    .param p0, "mtx"    # Lorg/opencv/core/Mat;
    .param p1, "s"    # Lorg/opencv/core/Scalar;

    .prologue
    .line 2026
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    invoke-static/range {v0 .. v9}, Lorg/opencv/core/Core;->setIdentity_0(JDDDD)V

    .line 2028
    return-void
.end method

.method private static native setIdentity_0(JDDDD)V
.end method

.method private static native setIdentity_1(J)V
.end method

.method public static setNumThreads(I)V
    .locals 0
    .param p0, "nthreads"    # I

    .prologue
    .line 2049
    invoke-static {p0}, Lorg/opencv/core/Core;->setNumThreads_0(I)V

    .line 2051
    return-void
.end method

.method private static native setNumThreads_0(I)V
.end method

.method public static setRNGSeed(I)V
    .locals 0
    .param p0, "seed"    # I

    .prologue
    .line 2063
    invoke-static {p0}, Lorg/opencv/core/Core;->setRNGSeed_0(I)V

    .line 2065
    return-void
.end method

.method private static native setRNGSeed_0(I)V
.end method

.method public static setUseIPP(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 2240
    invoke-static {p0}, Lorg/opencv/core/Core;->setUseIPP_0(Z)V

    .line 2242
    return-void
.end method

.method private static native setUseIPP_0(Z)V
.end method

.method public static solve(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 7
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 317
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->solve_1(JJJ)Z

    move-result v6

    .line 319
    .local v6, "retVal":Z
    return v6
.end method

.method public static solve(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)Z
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .prologue
    .line 308
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->solve_0(JJJI)Z

    move-result v7

    .line 310
    .local v7, "retVal":Z
    return v7
.end method

.method public static solveCubic(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 6
    .param p0, "coeffs"    # Lorg/opencv/core/Mat;
    .param p1, "roots"    # Lorg/opencv/core/Mat;

    .prologue
    .line 646
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->solveCubic_0(JJ)I

    move-result v0

    .line 648
    .local v0, "retVal":I
    return v0
.end method

.method private static native solveCubic_0(JJ)I
.end method

.method public static solvePoly(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 6
    .param p0, "coeffs"    # Lorg/opencv/core/Mat;
    .param p1, "roots"    # Lorg/opencv/core/Mat;

    .prologue
    .line 520
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->solvePoly_1(JJ)D

    move-result-wide v0

    .line 522
    .local v0, "retVal":D
    return-wide v0
.end method

.method public static solvePoly(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 6
    .param p0, "coeffs"    # Lorg/opencv/core/Mat;
    .param p1, "roots"    # Lorg/opencv/core/Mat;
    .param p2, "maxIters"    # I

    .prologue
    .line 511
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/core/Core;->solvePoly_0(JJI)D

    move-result-wide v0

    .line 513
    .local v0, "retVal":D
    return-wide v0
.end method

.method private static native solvePoly_0(JJI)D
.end method

.method private static native solvePoly_1(JJ)D
.end method

.method private static native solve_0(JJJI)Z
.end method

.method private static native solve_1(JJJ)Z
.end method

.method public static sort(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .prologue
    .line 2077
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->sort_0(JJI)V

    .line 2079
    return-void
.end method

.method public static sortIdx(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .prologue
    .line 2091
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->sortIdx_0(JJI)V

    .line 2093
    return-void
.end method

.method private static native sortIdx_0(JJI)V
.end method

.method private static native sort_0(JJI)V
.end method

.method public static split(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 6
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2104
    .local p1, "mv":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 2105
    .local v0, "mv_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->split_0(JJ)V

    .line 2106
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 2107
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 2108
    return-void
.end method

.method private static native split_0(JJ)V
.end method

.method public static sqrt(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2120
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->sqrt_0(JJ)V

    .line 2122
    return-void
.end method

.method private static native sqrt_0(JJ)V
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2152
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->subtract_2(JJJ)V

    .line 2154
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2143
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->subtract_1(JJJJ)V

    .line 2145
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    .prologue
    .line 2134
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->subtract_0(JJJJI)V

    .line 2136
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2184
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->subtract_5(JDDDDJ)V

    .line 2186
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 16
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2175
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v15}, Lorg/opencv/core/Core;->subtract_4(JDDDDJJ)V

    .line 2177
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    .prologue
    .line 2166
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v16, p4

    invoke-static/range {v2 .. v16}, Lorg/opencv/core/Core;->subtract_3(JDDDDJJI)V

    .line 2168
    return-void
.end method

.method private static native subtract_0(JJJJI)V
.end method

.method private static native subtract_1(JJJJ)V
.end method

.method private static native subtract_2(JJJ)V
.end method

.method private static native subtract_3(JDDDDJJI)V
.end method

.method private static native subtract_4(JDDDDJJ)V
.end method

.method private static native subtract_5(JDDDDJ)V
.end method

.method public static sumElems(Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;

    .prologue
    .line 220
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Core;->sumElems_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    .line 222
    .local v0, "retVal":Lorg/opencv/core/Scalar;
    return-object v0
.end method

.method private static native sumElems_0(J)[D
.end method

.method public static trace(Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 4
    .param p0, "mtx"    # Lorg/opencv/core/Mat;

    .prologue
    .line 234
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/core/Core;->trace_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    .line 236
    .local v0, "retVal":Lorg/opencv/core/Scalar;
    return-object v0
.end method

.method private static native trace_0(J)[D
.end method

.method public static transform(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "m"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2198
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->transform_0(JJJ)V

    .line 2200
    return-void
.end method

.method private static native transform_0(JJJ)V
.end method

.method public static transpose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .prologue
    .line 2212
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->transpose_0(JJ)V

    .line 2214
    return-void
.end method

.method private static native transpose_0(JJ)V
.end method

.method public static useIPP()Z
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lorg/opencv/core/Core;->useIPP_0()Z

    move-result v0

    .line 333
    .local v0, "retVal":Z
    return v0
.end method

.method private static native useIPP_0()Z
.end method

.method public static vconcat(Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p1, "dst"    # Lorg/opencv/core/Mat;
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
    .line 2225
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 2226
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/core/Core;->vconcat_0(JJ)V

    .line 2228
    return-void
.end method

.method private static native vconcat_0(JJ)V
.end method
