.class public Lcom/opencvstitcher/OpencvStitcher;
.super Ljava/lang/Object;
.source "OpencvStitcher.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stitchImage(J)I
    .locals 2
    .param p0, "srcMat"    # J

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/opencv/openCVJni;->addImage(J)I

    move-result v0

    return v0
.end method

.method public static stitchImageRelease()V
    .locals 0

    .prologue
    .line 92
    invoke-static {}, Lcom/opencv/openCVJni;->stitchImageRelease()V

    .line 93
    return-void
.end method

.method public static stitchImageStart(JJ)I
    .locals 2
    .param p0, "srcMat"    # J
    .param p2, "dstmat"    # J

    .prologue
    .line 88
    invoke-static {p0, p1, p2, p3}, Lcom/opencv/openCVJni;->stitchImageStart(JJ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public finishStitcher(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "outputVideoUrl"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 62
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v3, Lorg/opencv/core/CvType;->CV_8UC3:I

    invoke-direct {v0, v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 63
    .local v0, "mMat":Lorg/opencv/core/Mat;
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;Z)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->type()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/opencvstitcher/OpencvStitcher;->finishStitcher(Lorg/opencv/core/Mat;IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public finishStitcher(Lorg/opencv/core/Mat;IILjava/lang/String;)I
    .locals 10
    .param p1, "mat_src"    # Lorg/opencv/core/Mat;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputVideoUrl"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 40
    .local v1, "dstMat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    sget v5, Lorg/opencv/core/CvType;->CV_8UC3:I

    invoke-direct {v2, p2, p3, v5}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 41
    .local v2, "mat1":Lorg/opencv/core/Mat;
    const/4 v5, 0x1

    invoke-static {p1, v2, v5}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 43
    invoke-virtual {v2}, Lorg/opencv/core/Mat;->getNativeObjAddr()J

    move-result-wide v6

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->getNativeObjAddr()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/opencvstitcher/OpencvStitcher;->stitchImageStart(JJ)I

    move-result v3

    .line 44
    .local v3, "result":I
    const-string v5, "OpencvStitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "errir type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-eqz v3, :cond_0

    .line 56
    .end local v3    # "result":I
    :goto_0
    return v3

    .line 49
    .restart local v3    # "result":I
    :cond_0
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->width()I

    move-result v5

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->height()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "bit":Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 51
    const/16 v5, 0x63

    invoke-static {v0, p4, v5}, Lcom/fh/hdutil/AppUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result v4

    .line 52
    .local v4, "success":Z
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    if-eqz v4, :cond_1

    .line 54
    const/4 v3, 0x0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/16 v4, 0x0

    .line 27
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v3, Lorg/opencv/core/CvType;->CV_8UC3:I

    invoke-direct {v0, v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 28
    .local v0, "mMat":Lorg/opencv/core/Mat;
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;Z)V

    .line 29
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->type()I

    move-result v1

    if-nez v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/opencvstitcher/OpencvStitcher;->setImage(Lorg/opencv/core/Mat;II)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public setImage(Lorg/opencv/core/Mat;II)V
    .locals 4
    .param p1, "mat_src"    # Lorg/opencv/core/Mat;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 21
    new-instance v0, Lorg/opencv/core/Mat;

    sget v1, Lorg/opencv/core/CvType;->CV_8UC3:I

    invoke-direct {v0, p2, p3, v1}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 22
    .local v0, "mat1":Lorg/opencv/core/Mat;
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 23
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->getNativeObjAddr()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/opencvstitcher/OpencvStitcher;->stitchImage(J)I

    .line 24
    return-void
.end method
