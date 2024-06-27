.class public Lorg/vudroid/pdfdroid/codec/PdfPage;
.super Ljava/lang/Object;
.source "PdfPage.java"

# interfaces
.implements Lorg/vudroid/core/codec/CodecPage;


# instance fields
.field private docHandle:J

.field private pageHandle:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .param p1, "pageHandle"    # J
    .param p3, "docHandle"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    .line 20
    iput-wide p3, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->docHandle:J

    .line 21
    return-void
.end method

.method static createPage(JI)Lorg/vudroid/pdfdroid/codec/PdfPage;
    .locals 4
    .param p0, "dochandle"    # J
    .param p2, "pageno"    # I

    .prologue
    .line 55
    new-instance v0, Lorg/vudroid/pdfdroid/codec/PdfPage;

    invoke-static {p0, p1, p2}, Lorg/vudroid/pdfdroid/codec/PdfPage;->open(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p0, p1}, Lorg/vudroid/pdfdroid/codec/PdfPage;-><init>(JJ)V

    return-object v0
.end method

.method private static native free(J)V
.end method

.method private getMediaBox()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 74
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 75
    .local v0, "box":[F
    iget-wide v2, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    invoke-static {v2, v3, v0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox(J[F)V

    .line 76
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private static native getMediaBox(J[F)V
.end method

.method private native nativeCreateView(JJ[I[F[I)V
.end method

.method private static native open(JI)J
.end method

.method private static native render(JJ[I[FLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->recycle()V

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isDecoding()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized recycle()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 66
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 67
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    invoke-static {v0, v1}, Lorg/vudroid/pdfdroid/codec/PdfPage;->free(J)V

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public render(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "viewbox"    # Landroid/graphics/Rect;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v11, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-array v6, v11, [I

    .line 82
    .local v6, "mRect":[I
    iget v1, p1, Landroid/graphics/Rect;->left:I

    aput v1, v6, v2

    .line 83
    iget v1, p1, Landroid/graphics/Rect;->top:I

    aput v1, v6, v3

    .line 84
    iget v1, p1, Landroid/graphics/Rect;->right:I

    aput v1, v6, v4

    .line 85
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    aput v1, v6, v5

    .line 87
    const/16 v1, 0x9

    new-array v9, v1, [F

    .line 88
    .local v9, "matrixSource":[F
    const/4 v1, 0x6

    new-array v7, v1, [F

    .line 89
    .local v7, "matrixArray":[F
    invoke-virtual {p2, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 90
    aget v1, v9, v2

    aput v1, v7, v2

    .line 91
    aget v1, v9, v5

    aput v1, v7, v3

    .line 92
    aget v1, v9, v3

    aput v1, v7, v4

    .line 93
    aget v1, v9, v11

    aput v1, v7, v5

    .line 94
    aget v1, v9, v4

    aput v1, v7, v11

    .line 95
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, v9, v2

    aput v2, v7, v1

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 98
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 99
    .local v0, "height":I
    mul-int v1, v10, v0

    new-array v8, v1, [I

    .line 100
    .local v8, "bufferarray":[I
    iget-wide v2, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->docHandle:J

    iget-wide v4, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/vudroid/pdfdroid/codec/PdfPage;->nativeCreateView(JJ[I[F[I)V

    .line 101
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v0, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public renderBitmap(IILandroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pageSliceBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    .local v0, "matrix":Landroid/graphics/Matrix;
    int-to-float v1, p1

    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    neg-int v2, p2

    int-to-float v2, v2

    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 47
    const/4 v1, 0x0

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 48
    iget v1, p3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 49
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v4, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v4, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1, v0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->render(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public waitForDecode()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
