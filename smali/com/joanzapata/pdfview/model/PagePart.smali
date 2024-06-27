.class public Lcom/joanzapata/pdfview/model/PagePart;
.super Ljava/lang/Object;
.source "PagePart.java"


# instance fields
.field private cacheOrder:I

.field private height:F

.field private page:I

.field private pageRelativeBounds:Landroid/graphics/RectF;

.field private renderedBitmap:Landroid/graphics/Bitmap;

.field private thumbnail:Z

.field private userPage:I

.field private width:F


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V
    .locals 0
    .param p1, "userPage"    # I
    .param p2, "page"    # I
    .param p3, "renderedBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "pageRelativeBounds"    # Landroid/graphics/RectF;
    .param p7, "thumbnail"    # Z
    .param p8, "cacheOrder"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/joanzapata/pdfview/model/PagePart;->userPage:I

    .line 43
    iput p2, p0, Lcom/joanzapata/pdfview/model/PagePart;->page:I

    .line 44
    iput-object p3, p0, Lcom/joanzapata/pdfview/model/PagePart;->renderedBitmap:Landroid/graphics/Bitmap;

    .line 45
    iput-object p6, p0, Lcom/joanzapata/pdfview/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    .line 46
    iput-boolean p7, p0, Lcom/joanzapata/pdfview/model/PagePart;->thumbnail:Z

    .line 47
    iput p8, p0, Lcom/joanzapata/pdfview/model/PagePart;->cacheOrder:I

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 88
    instance-of v2, p1, Lcom/joanzapata/pdfview/model/PagePart;

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/joanzapata/pdfview/model/PagePart;

    .line 93
    .local v0, "part":Lcom/joanzapata/pdfview/model/PagePart;
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getPage()I

    move-result v2

    iget v3, p0, Lcom/joanzapata/pdfview/model/PagePart;->page:I

    if-ne v2, v3, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getUserPage()I

    move-result v2

    iget v3, p0, Lcom/joanzapata/pdfview/model/PagePart;->userPage:I

    if-ne v2, v3, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/joanzapata/pdfview/model/PagePart;->width:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/joanzapata/pdfview/model/PagePart;->height:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/joanzapata/pdfview/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/joanzapata/pdfview/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/joanzapata/pdfview/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/joanzapata/pdfview/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/joanzapata/pdfview/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCacheOrder()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/joanzapata/pdfview/model/PagePart;->cacheOrder:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/joanzapata/pdfview/model/PagePart;->height:F

    return v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/joanzapata/pdfview/model/PagePart;->page:I

    return v0
.end method

.method public getPageRelativeBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/joanzapata/pdfview/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRenderedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/joanzapata/pdfview/model/PagePart;->renderedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUserPage()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/joanzapata/pdfview/model/PagePart;->userPage:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/joanzapata/pdfview/model/PagePart;->width:F

    return v0
.end method

.method public isThumbnail()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/joanzapata/pdfview/model/PagePart;->thumbnail:Z

    return v0
.end method

.method public setCacheOrder(I)V
    .locals 0
    .param p1, "cacheOrder"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/joanzapata/pdfview/model/PagePart;->cacheOrder:I

    .line 84
    return-void
.end method
