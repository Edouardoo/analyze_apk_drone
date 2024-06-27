.class Lorg/vudroid/core/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private aspectRatio:F

.field bounds:Landroid/graphics/RectF;

.field private documentView:Lorg/vudroid/core/DocumentView;

.field private final fillPaint:Landroid/graphics/Paint;

.field final index:I

.field private node:Lorg/vudroid/core/PageTreeNode;

.field private final strokePaint:Landroid/graphics/Paint;

.field private final textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Lorg/vudroid/core/DocumentView;I)V
    .locals 6
    .param p1, "documentView"    # Lorg/vudroid/core/DocumentView;
    .param p2, "index"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-direct {p0}, Lorg/vudroid/core/Page;->textPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/Page;->textPaint:Landroid/text/TextPaint;

    .line 15
    invoke-direct {p0}, Lorg/vudroid/core/Page;->fillPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/Page;->fillPaint:Landroid/graphics/Paint;

    .line 16
    invoke-direct {p0}, Lorg/vudroid/core/Page;->strokePaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/Page;->strokePaint:Landroid/graphics/Paint;

    .line 19
    iput-object p1, p0, Lorg/vudroid/core/Page;->documentView:Lorg/vudroid/core/DocumentView;

    .line 20
    iput p2, p0, Lorg/vudroid/core/Page;->index:I

    .line 21
    new-instance v0, Lorg/vudroid/core/PageTreeNode;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/vudroid/core/PageTreeNode;-><init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V

    iput-object v0, p0, Lorg/vudroid/core/Page;->node:Lorg/vudroid/core/PageTreeNode;

    .line 22
    return-void
.end method

.method private fillPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 56
    .local v0, "fillPaint":Landroid/graphics/Paint;
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    return-object v0
.end method

.method private strokePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .local v0, "strokePaint":Landroid/graphics/Paint;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    return-object v0
.end method

.method private textPaint()Landroid/text/TextPaint;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 63
    .local v0, "paint":Landroid/text/TextPaint;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 65
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 66
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/vudroid/core/Page;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/vudroid/core/Page;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/vudroid/core/Page;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lorg/vudroid/core/Page;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 41
    iget-object v0, p0, Lorg/vudroid/core/Page;->node:Lorg/vudroid/core/PageTreeNode;

    invoke-virtual {v0, p1}, Lorg/vudroid/core/PageTreeNode;->draw(Landroid/graphics/Canvas;)V

    .line 42
    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lorg/vudroid/core/Page;->strokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lorg/vudroid/core/Page;->strokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/vudroid/core/Page;->aspectRatio:F

    return v0
.end method

.method getPageHeight(IF)F
    .locals 2
    .param p1, "mainWidth"    # I
    .param p2, "zoom"    # F

    .prologue
    .line 27
    int-to-float v0, p1

    invoke-virtual {p0}, Lorg/vudroid/core/Page;->getAspectRatio()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/vudroid/core/Page;->node:Lorg/vudroid/core/PageTreeNode;

    invoke-virtual {v0}, Lorg/vudroid/core/PageTreeNode;->invalidate()V

    .line 100
    return-void
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/vudroid/core/Page;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v0}, Lorg/vudroid/core/DocumentView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 75
    iget v0, p0, Lorg/vudroid/core/Page;->aspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 76
    iput p1, p0, Lorg/vudroid/core/Page;->aspectRatio:F

    .line 77
    iget-object v0, p0, Lorg/vudroid/core/Page;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v0}, Lorg/vudroid/core/DocumentView;->invalidatePageSizes()V

    .line 79
    :cond_0
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 86
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/vudroid/core/Page;->setAspectRatio(F)V

    .line 87
    return-void
.end method

.method setBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "pageBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    .line 91
    iget-object v0, p0, Lorg/vudroid/core/Page;->node:Lorg/vudroid/core/PageTreeNode;

    invoke-virtual {v0}, Lorg/vudroid/core/PageTreeNode;->invalidateNodeBounds()V

    .line 92
    return-void
.end method

.method public updateVisibility()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/vudroid/core/Page;->node:Lorg/vudroid/core/PageTreeNode;

    invoke-virtual {v0}, Lorg/vudroid/core/PageTreeNode;->updateVisibility()V

    .line 96
    return-void
.end method
