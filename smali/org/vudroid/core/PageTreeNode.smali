.class Lorg/vudroid/core/PageTreeNode;
.super Ljava/lang/Object;
.source "PageTreeNode.java"


# static fields
.field private static final SLICE_SIZE:I = 0xffff


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private bitmapWeakReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private children:[Lorg/vudroid/core/PageTreeNode;

.field private decodingNow:Z

.field private documentView:Lorg/vudroid/core/DocumentView;

.field private invalidateFlag:Z

.field private matrix:Landroid/graphics/Matrix;

.field private final page:Lorg/vudroid/core/Page;

.field private final pageSliceBounds:Landroid/graphics/RectF;

.field private targetRect:Landroid/graphics/Rect;

.field private targetRectF:Landroid/graphics/RectF;

.field private final treeNodeDepthLevel:I


# direct methods
.method constructor <init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V
    .locals 1
    .param p1, "documentView"    # Lorg/vudroid/core/DocumentView;
    .param p2, "localPageSliceBounds"    # Landroid/graphics/RectF;
    .param p3, "page"    # Lorg/vudroid/core/Page;
    .param p4, "treeNodeDepthLevel"    # I
    .param p5, "parent"    # Lorg/vudroid/core/PageTreeNode;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmapPaint:Landroid/graphics/Paint;

    .line 29
    iput-object p1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    .line 30
    invoke-direct {p0, p2, p5}, Lorg/vudroid/core/PageTreeNode;->evaluatePageSliceBounds(Landroid/graphics/RectF;Lorg/vudroid/core/PageTreeNode;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    .line 31
    iput-object p3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    .line 32
    iput p4, p0, Lorg/vudroid/core/PageTreeNode;->treeNodeDepthLevel:I

    .line 33
    return-void
.end method

.method static synthetic access$000(Lorg/vudroid/core/PageTreeNode;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lorg/vudroid/core/PageTreeNode;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/vudroid/core/PageTreeNode;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$102(Lorg/vudroid/core/PageTreeNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/vudroid/core/PageTreeNode;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lorg/vudroid/core/PageTreeNode;->invalidateFlag:Z

    return p1
.end method

.method static synthetic access$200(Lorg/vudroid/core/PageTreeNode;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/vudroid/core/PageTreeNode;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/vudroid/core/PageTreeNode;->setDecodingNow(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/Page;
    .locals 1
    .param p0, "x0"    # Lorg/vudroid/core/PageTreeNode;

    .prologue
    .line 12
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    return-object v0
.end method

.method static synthetic access$400(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/DocumentView;
    .locals 1
    .param p0, "x0"    # Lorg/vudroid/core/PageTreeNode;

    .prologue
    .line 12
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/vudroid/core/PageTreeNode;)V
    .locals 0
    .param p0, "x0"    # Lorg/vudroid/core/PageTreeNode;

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->invalidateChildren()V

    return-void
.end method

.method private childrenContainBitmaps()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 253
    :cond_1
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 254
    .local v0, "child":Lorg/vudroid/core/PageTreeNode;
    invoke-direct {v0}, Lorg/vudroid/core/PageTreeNode;->containsBitmaps()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 255
    const/4 v1, 0x1

    goto :goto_0

    .line 253
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private containsBitmaps()Z
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->childrenContainBitmaps()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodePageTreeNode()V
    .locals 6

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isDecodingNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/vudroid/core/PageTreeNode;->setDecodingNow(Z)V

    .line 143
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v0, v0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget v2, v1, Lorg/vudroid/core/Page;->index:I

    new-instance v3, Lorg/vudroid/core/PageTreeNode$1;

    invoke-direct {v3, p0}, Lorg/vudroid/core/PageTreeNode$1;-><init>(Lorg/vudroid/core/PageTreeNode;)V

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v1, v1, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    .line 155
    invoke-virtual {v1}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v4

    iget-object v5, p0, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    move-object v1, p0

    .line 143
    invoke-interface/range {v0 .. v5}, Lorg/vudroid/core/DecodeService;->decodePage(Ljava/lang/Object;ILorg/vudroid/core/DecodeService$DecodeCallback;FLandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private evaluatePageSliceBounds(Landroid/graphics/RectF;Lorg/vudroid/core/PageTreeNode;)Landroid/graphics/RectF;
    .locals 4
    .param p1, "localPageSliceBounds"    # Landroid/graphics/RectF;
    .param p2, "parent"    # Lorg/vudroid/core/PageTreeNode;

    .prologue
    .line 159
    if-nez p2, :cond_0

    .line 167
    .end local p1    # "localPageSliceBounds":Landroid/graphics/RectF;
    :goto_0
    return-object p1

    .line 162
    .restart local p1    # "localPageSliceBounds":Landroid/graphics/RectF;
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 163
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p2, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p2, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 164
    iget-object v2, p2, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p2, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 165
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 166
    .local v1, "sliceBounds":Landroid/graphics/RectF;
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object p1, v1

    .line 167
    goto :goto_0
.end method

.method private getTargetRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 202
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 204
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget-object v2, v2, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget-object v3, v3, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 205
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget-object v2, v2, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget-object v3, v3, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 207
    .local v0, "targetRectF":Landroid/graphics/RectF;
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 208
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRect:Landroid/graphics/Rect;

    .line 210
    .end local v0    # "targetRectF":Landroid/graphics/RectF;
    :cond_0
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRect:Landroid/graphics/Rect;

    return-object v1
.end method

.method private getTargetRectF()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->targetRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->targetRectF:Landroid/graphics/RectF;

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->targetRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method private invalidateChildren()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    .line 108
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->thresholdHit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget v0, p0, Lorg/vudroid/core/PageTreeNode;->treeNodeDepthLevel:I

    mul-int/lit8 v4, v0, 0x2

    .line 110
    .local v4, "newThreshold":I
    const/4 v0, 0x4

    new-array v6, v0, [Lorg/vudroid/core/PageTreeNode;

    const/4 v7, 0x0

    new-instance v0, Lorg/vudroid/core/PageTreeNode;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9, v9, v8, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/vudroid/core/PageTreeNode;-><init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    new-instance v0, Lorg/vudroid/core/PageTreeNode;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v8, v9, v10, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/vudroid/core/PageTreeNode;-><init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V

    aput-object v0, v6, v7

    const/4 v7, 0x2

    new-instance v0, Lorg/vudroid/core/PageTreeNode;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9, v8, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/vudroid/core/PageTreeNode;-><init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V

    aput-object v0, v6, v7

    const/4 v7, 0x3

    new-instance v0, Lorg/vudroid/core/PageTreeNode;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v8, v8, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/vudroid/core/PageTreeNode;-><init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V

    aput-object v0, v6, v7

    iput-object v6, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    .line 118
    .end local v4    # "newThreshold":I
    :cond_0
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->thresholdHit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    :cond_2
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->recycleChildren()V

    .line 121
    :cond_3
    return-void
.end method

.method private invalidateRecursive()V
    .locals 4

    .prologue
    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/vudroid/core/PageTreeNode;->invalidateFlag:Z

    .line 65
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-eqz v1, :cond_0

    .line 66
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 67
    .local v0, "child":Lorg/vudroid/core/PageTreeNode;
    invoke-direct {v0}, Lorg/vudroid/core/PageTreeNode;->invalidateRecursive()V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "child":Lorg/vudroid/core/PageTreeNode;
    :cond_0
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->stopDecodingThisNode()V

    .line 71
    return-void
.end method

.method private isDecodingNow()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/vudroid/core/PageTreeNode;->decodingNow:Z

    return v0
.end method

.method private isHiddenByChildren()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 226
    .local v0, "child":Lorg/vudroid/core/PageTreeNode;
    invoke-virtual {v0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    .end local v0    # "child":Lorg/vudroid/core/PageTreeNode;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isVisible()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v0}, Lorg/vudroid/core/DocumentView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->getTargetRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method private isVisibleAndNotHiddenByChildren()Z
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isHiddenByChildren()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycle()V
    .locals 4

    .prologue
    .line 262
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->stopDecodingThisNode()V

    .line 263
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/vudroid/core/PageTreeNode;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-eqz v1, :cond_0

    .line 265
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 266
    .local v0, "child":Lorg/vudroid/core/PageTreeNode;
    invoke-direct {v0}, Lorg/vudroid/core/PageTreeNode;->recycle()V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "child":Lorg/vudroid/core/PageTreeNode;
    :cond_0
    return-void
.end method

.method private recycleChildren()V
    .locals 4

    .prologue
    .line 234
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 238
    .local v0, "child":Lorg/vudroid/core/PageTreeNode;
    invoke-direct {v0}, Lorg/vudroid/core/PageTreeNode;->recycle()V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 240
    .end local v0    # "child":Lorg/vudroid/core/PageTreeNode;
    :cond_2
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->childrenContainBitmaps()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    goto :goto_0
.end method

.method private restoreBitmapReference()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/vudroid/core/PageTreeNode;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, -0x1

    .line 171
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 175
    if-eqz p1, :cond_3

    .line 176
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmapWeakReference:Ljava/lang/ref/SoftReference;

    .line 180
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v0}, Lorg/vudroid/core/DocumentView;->postInvalidate()V

    .line 182
    :cond_3
    iput-object p1, p0, Lorg/vudroid/core/PageTreeNode;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private setDecodingNow(Z)V
    .locals 1
    .param p1, "decodingNow"    # Z

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/vudroid/core/PageTreeNode;->decodingNow:Z

    if-eq v0, p1, :cond_0

    .line 192
    iput-boolean p1, p0, Lorg/vudroid/core/PageTreeNode;->decodingNow:Z

    .line 193
    if-eqz p1, :cond_1

    .line 194
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v0, v0, Lorg/vudroid/core/DocumentView;->progressModel:Lorg/vudroid/core/models/DecodingProgressModel;

    invoke-virtual {v0}, Lorg/vudroid/core/models/DecodingProgressModel;->increase()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v0, v0, Lorg/vudroid/core/DocumentView;->progressModel:Lorg/vudroid/core/models/DecodingProgressModel;

    invoke-virtual {v0}, Lorg/vudroid/core/models/DecodingProgressModel;->decrease()V

    goto :goto_0
.end method

.method private stopDecodingThisNode()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isDecodingNow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v0, v0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v0, p0}, Lorg/vudroid/core/DecodeService;->stopDecoding(Ljava/lang/Object;)V

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/vudroid/core/PageTreeNode;->setDecodingNow(Z)V

    goto :goto_0
.end method

.method private thresholdHit()Z
    .locals 6

    .prologue
    .line 124
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v3, v3, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v3}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v2

    .line 125
    .local v2, "zoom":F
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v3}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v1

    .line 126
    .local v1, "mainWidth":I
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    invoke-virtual {v3, v1, v2}, Lorg/vudroid/core/Page;->getPageHeight(IF)F

    move-result v0

    .line 127
    .local v0, "height":F
    int-to-float v3, v1

    mul-float/2addr v3, v2

    mul-float/2addr v3, v0

    iget v4, p0, Lorg/vudroid/core/PageTreeNode;->treeNodeDepthLevel:I

    iget v5, p0, Lorg/vudroid/core/PageTreeNode;->treeNodeDepthLevel:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x477fff00    # 65535.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lorg/vudroid/core/PageTreeNode;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 88
    :cond_0
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v2, :cond_2

    .line 94
    :cond_1
    return-void

    .line 91
    :cond_2
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 92
    .local v0, "child":Lorg/vudroid/core/PageTreeNode;
    invoke-virtual {v0, p1}, Lorg/vudroid/core/PageTreeNode;->draw(Landroid/graphics/Canvas;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmapWeakReference:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmapWeakReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->invalidateChildren()V

    .line 59
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->invalidateRecursive()V

    .line 60
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->updateVisibility()V

    .line 61
    return-void
.end method

.method invalidateNodeBounds()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRect:Landroid/graphics/Rect;

    .line 75
    iput-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRectF:Landroid/graphics/RectF;

    .line 76
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-eqz v1, :cond_0

    .line 77
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 78
    .local v0, "child":Lorg/vudroid/core/PageTreeNode;
    invoke-virtual {v0}, Lorg/vudroid/core/PageTreeNode;->invalidateNodeBounds()V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "child":Lorg/vudroid/core/PageTreeNode;
    :cond_0
    return-void
.end method

.method public updateVisibility()V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->invalidateChildren()V

    .line 37
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-eqz v1, :cond_0

    .line 38
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 39
    .local v0, "child":Lorg/vudroid/core/PageTreeNode;
    invoke-virtual {v0}, Lorg/vudroid/core/PageTreeNode;->updateVisibility()V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "child":Lorg/vudroid/core/PageTreeNode;
    :cond_0
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->thresholdHit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/vudroid/core/PageTreeNode;->invalidateFlag:Z

    if-nez v1, :cond_3

    .line 45
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->restoreBitmapReference()V

    .line 51
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisibleAndNotHiddenByChildren()Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->stopDecodingThisNode()V

    .line 53
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/vudroid/core/PageTreeNode;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->decodePageTreeNode()V

    goto :goto_1
.end method
