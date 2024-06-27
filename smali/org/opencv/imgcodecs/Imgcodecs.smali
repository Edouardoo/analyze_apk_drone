.class public Lorg/opencv/imgcodecs/Imgcodecs;
.super Ljava/lang/Object;
.source "Imgcodecs.java"


# static fields
.field public static final CV_CVTIMG_FLIP:I = 0x1

.field public static final CV_CVTIMG_SWAP_RB:I = 0x2

.field public static final CV_IMWRITE_JPEG_CHROMA_QUALITY:I = 0x6

.field public static final CV_IMWRITE_JPEG_LUMA_QUALITY:I = 0x5

.field public static final CV_IMWRITE_JPEG_OPTIMIZE:I = 0x3

.field public static final CV_IMWRITE_JPEG_PROGRESSIVE:I = 0x2

.field public static final CV_IMWRITE_JPEG_QUALITY:I = 0x1

.field public static final CV_IMWRITE_JPEG_RST_INTERVAL:I = 0x4

.field public static final CV_IMWRITE_PAM_FORMAT_BLACKANDWHITE:I = 0x1

.field public static final CV_IMWRITE_PAM_FORMAT_GRAYSCALE:I = 0x2

.field public static final CV_IMWRITE_PAM_FORMAT_GRAYSCALE_ALPHA:I = 0x3

.field public static final CV_IMWRITE_PAM_FORMAT_NULL:I = 0x0

.field public static final CV_IMWRITE_PAM_FORMAT_RGB:I = 0x4

.field public static final CV_IMWRITE_PAM_FORMAT_RGB_ALPHA:I = 0x5

.field public static final CV_IMWRITE_PAM_TUPLETYPE:I = 0x80

.field public static final CV_IMWRITE_PNG_BILEVEL:I = 0x12

.field public static final CV_IMWRITE_PNG_COMPRESSION:I = 0x10

.field public static final CV_IMWRITE_PNG_STRATEGY:I = 0x11

.field public static final CV_IMWRITE_PNG_STRATEGY_DEFAULT:I = 0x0

.field public static final CV_IMWRITE_PNG_STRATEGY_FILTERED:I = 0x1

.field public static final CV_IMWRITE_PNG_STRATEGY_FIXED:I = 0x4

.field public static final CV_IMWRITE_PNG_STRATEGY_HUFFMAN_ONLY:I = 0x2

.field public static final CV_IMWRITE_PNG_STRATEGY_RLE:I = 0x3

.field public static final CV_IMWRITE_PXM_BINARY:I = 0x20

.field public static final CV_IMWRITE_WEBP_QUALITY:I = 0x40

.field public static final CV_LOAD_IMAGE_ANYCOLOR:I = 0x4

.field public static final CV_LOAD_IMAGE_ANYDEPTH:I = 0x2

.field public static final CV_LOAD_IMAGE_COLOR:I = 0x1

.field public static final CV_LOAD_IMAGE_GRAYSCALE:I = 0x0

.field public static final CV_LOAD_IMAGE_IGNORE_ORIENTATION:I = 0x80

.field public static final CV_LOAD_IMAGE_UNCHANGED:I = -0x1

.field public static final IMREAD_ANYCOLOR:I = 0x4

.field public static final IMREAD_ANYDEPTH:I = 0x2

.field public static final IMREAD_COLOR:I = 0x1

.field public static final IMREAD_GRAYSCALE:I = 0x0

.field public static final IMREAD_IGNORE_ORIENTATION:I = 0x80

.field public static final IMREAD_LOAD_GDAL:I = 0x8

.field public static final IMREAD_REDUCED_COLOR_2:I = 0x11

.field public static final IMREAD_REDUCED_COLOR_4:I = 0x21

.field public static final IMREAD_REDUCED_COLOR_8:I = 0x41

.field public static final IMREAD_REDUCED_GRAYSCALE_2:I = 0x10

.field public static final IMREAD_REDUCED_GRAYSCALE_4:I = 0x20

.field public static final IMREAD_REDUCED_GRAYSCALE_8:I = 0x40

.field public static final IMREAD_UNCHANGED:I = -0x1

.field public static final IMWRITE_JPEG_CHROMA_QUALITY:I = 0x6

.field public static final IMWRITE_JPEG_LUMA_QUALITY:I = 0x5

.field public static final IMWRITE_JPEG_OPTIMIZE:I = 0x3

.field public static final IMWRITE_JPEG_PROGRESSIVE:I = 0x2

.field public static final IMWRITE_JPEG_QUALITY:I = 0x1

.field public static final IMWRITE_JPEG_RST_INTERVAL:I = 0x4

.field public static final IMWRITE_PAM_FORMAT_BLACKANDWHITE:I = 0x1

.field public static final IMWRITE_PAM_FORMAT_GRAYSCALE:I = 0x2

.field public static final IMWRITE_PAM_FORMAT_GRAYSCALE_ALPHA:I = 0x3

.field public static final IMWRITE_PAM_FORMAT_NULL:I = 0x0

.field public static final IMWRITE_PAM_FORMAT_RGB:I = 0x4

.field public static final IMWRITE_PAM_FORMAT_RGB_ALPHA:I = 0x5

.field public static final IMWRITE_PAM_TUPLETYPE:I = 0x80

.field public static final IMWRITE_PNG_BILEVEL:I = 0x12

.field public static final IMWRITE_PNG_COMPRESSION:I = 0x10

.field public static final IMWRITE_PNG_STRATEGY:I = 0x11

.field public static final IMWRITE_PNG_STRATEGY_DEFAULT:I = 0x0

.field public static final IMWRITE_PNG_STRATEGY_FILTERED:I = 0x1

.field public static final IMWRITE_PNG_STRATEGY_FIXED:I = 0x4

.field public static final IMWRITE_PNG_STRATEGY_HUFFMAN_ONLY:I = 0x2

.field public static final IMWRITE_PNG_STRATEGY_RLE:I = 0x3

.field public static final IMWRITE_PXM_BINARY:I = 0x20

.field public static final IMWRITE_WEBP_QUALITY:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static imdecode(Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "buf"    # Lorg/opencv/core/Mat;
    .param p1, "flags"    # I

    .prologue
    .line 94
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/imgcodecs/Imgcodecs;->imdecode_0(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 96
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method private static native imdecode_0(JI)J
.end method

.method public static imencode(Ljava/lang/String;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfByte;)Z
    .locals 6
    .param p0, "ext"    # Ljava/lang/String;
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "buf"    # Lorg/opencv/core/MatOfByte;

    .prologue
    .line 140
    move-object v0, p2

    .line 141
    .local v0, "buf_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v2, v3, v4, v5}, Lorg/opencv/imgcodecs/Imgcodecs;->imencode_1(Ljava/lang/String;JJ)Z

    move-result v1

    .line 143
    .local v1, "retVal":Z
    return v1
.end method

.method public static imencode(Ljava/lang/String;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfInt;)Z
    .locals 10
    .param p0, "ext"    # Ljava/lang/String;
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "buf"    # Lorg/opencv/core/MatOfByte;
    .param p3, "params"    # Lorg/opencv/core/MatOfInt;

    .prologue
    .line 130
    move-object v0, p2

    .line 131
    .local v0, "buf_mat":Lorg/opencv/core/Mat;
    move-object v8, p3

    .line 132
    .local v8, "params_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lorg/opencv/imgcodecs/Imgcodecs;->imencode_0(Ljava/lang/String;JJJ)Z

    move-result v9

    .line 134
    .local v9, "retVal":Z
    return v9
.end method

.method private static native imencode_0(Ljava/lang/String;JJJ)Z
.end method

.method private static native imencode_1(Ljava/lang/String;JJ)Z
.end method

.method public static imread(Ljava/lang/String;)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0}, Lorg/opencv/imgcodecs/Imgcodecs;->imread_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 119
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 108
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0, p1}, Lorg/opencv/imgcodecs/Imgcodecs;->imread_0(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 110
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method private static native imread_0(Ljava/lang/String;I)J
.end method

.method private static native imread_1(Ljava/lang/String;)J
.end method

.method public static imreadmulti(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 164
    .local v0, "mats_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v2, v3}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadmulti_1(Ljava/lang/String;J)Z

    move-result v1

    .line 166
    .local v1, "retVal":Z
    return v1
.end method

.method public static imreadmulti(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 155
    .local v0, "mats_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v2, v3, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadmulti_0(Ljava/lang/String;JI)Z

    move-result v1

    .line 157
    .local v1, "retVal":Z
    return v1
.end method

.method private static native imreadmulti_0(Ljava/lang/String;JI)Z
.end method

.method private static native imreadmulti_1(Ljava/lang/String;J)Z
.end method

.method public static imwrite(Ljava/lang/String;Lorg/opencv/core/Mat;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "img"    # Lorg/opencv/core/Mat;

    .prologue
    .line 187
    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v2, v3}, Lorg/opencv/imgcodecs/Imgcodecs;->imwrite_1(Ljava/lang/String;J)Z

    move-result v0

    .line 189
    .local v0, "retVal":Z
    return v0
.end method

.method public static imwrite(Ljava/lang/String;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfInt;)Z
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "params"    # Lorg/opencv/core/MatOfInt;

    .prologue
    .line 177
    move-object v0, p2

    .line 178
    .local v0, "params_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v2, v3, v4, v5}, Lorg/opencv/imgcodecs/Imgcodecs;->imwrite_0(Ljava/lang/String;JJ)Z

    move-result v1

    .line 180
    .local v1, "retVal":Z
    return v1
.end method

.method private static native imwrite_0(Ljava/lang/String;JJ)Z
.end method

.method private static native imwrite_1(Ljava/lang/String;J)Z
.end method
