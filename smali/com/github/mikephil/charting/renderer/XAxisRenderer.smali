.class public Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.super Lcom/github/mikephil/charting/renderer/AxisRenderer;
.source "XAxisRenderer.java"


# instance fields
.field protected mGridClippingRect:Landroid/graphics/RectF;

.field protected mLimitLineClippingRect:Landroid/graphics/RectF;

.field private mLimitLinePath:Landroid/graphics/Path;

.field mLimitLineSegmentsBuffer:[F

.field protected mRenderGridLinesBuffer:[F

.field protected mRenderGridLinesPath:Landroid/graphics/Path;

.field protected mRenderLimitLinesBuffer:[F

.field protected mXAxis:Lcom/github/mikephil/charting/components/XAxis;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 2
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "xAxis"    # Lcom/github/mikephil/charting/components/XAxis;
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    const/4 v1, 0x2

    .line 28
    invoke-direct {p0, p1, p3, p2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/AxisBase;)V

    .line 239
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesPath:Landroid/graphics/Path;

    .line 240
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesBuffer:[F

    .line 275
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    .line 302
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderLimitLinesBuffer:[F

    .line 303
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    .line 346
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    .line 347
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    .line 30
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 32
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 34
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    return-void
.end method


# virtual methods
.method public computeAxis(FFZ)V
    .locals 5
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "inverted"    # Z

    .prologue
    .line 48
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutX()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 51
    .local v0, "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 53
    .local v1, "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    if-eqz p3, :cond_1

    .line 55
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p1, v2

    .line 56
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p2, v2

    .line 63
    :goto_0
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 64
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 67
    .end local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .end local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxisValues(FF)V

    .line 68
    return-void

    .line 59
    .restart local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .restart local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_1
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p1, v2

    .line 60
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p2, v2

    goto :goto_0
.end method

.method protected computeAxisValues(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxisValues(FF)V

    .line 74
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeSize()V

    .line 75
    return-void
.end method

.method protected computeSize()V
    .locals 7

    .prologue
    .line 79
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "longest":Ljava/lang/String;
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 82
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getTextSize()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v5, v4}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v2

    .line 86
    .local v2, "labelSize":Lcom/github/mikephil/charting/utils/FSize;
    iget v3, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 87
    .local v3, "labelWidth":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const-string v6, "Q"

    invoke-static {v5, v6}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v5

    int-to-float v0, v5

    .line 89
    .local v0, "labelHeight":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 92
    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->getLabelRotationAngle()F

    move-result v5

    .line 89
    invoke-static {v3, v0, v5}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByDegrees(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v1

    .line 95
    .local v1, "labelRotatedSize":Lcom/github/mikephil/charting/utils/FSize;
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    .line 96
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    .line 97
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v6, v1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedWidth:I

    .line 98
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v6, v1, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    .line 100
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/FSize;->recycleInstance(Lcom/github/mikephil/charting/utils/FSize;)V

    .line 101
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/FSize;->recycleInstance(Lcom/github/mikephil/charting/utils/FSize;)V

    .line 102
    return-void
.end method

.method protected drawGridLine(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "gridLinePath"    # Landroid/graphics/Path;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v0

    invoke-virtual {p4, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 294
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v0

    invoke-virtual {p4, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 297
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 299
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 300
    return-void
.end method

.method protected drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "formattedLabel"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "anchor"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p6, "angleDegrees"    # F

    .prologue
    .line 237
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/github/mikephil/charting/utils/Utils;->drawXAxisValue(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Lcom/github/mikephil/charting/utils/MPPointF;F)V

    .line 238
    return-void
.end method

.method protected drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pos"    # F
    .param p3, "anchor"    # Lcom/github/mikephil/charting/utils/MPPointF;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 188
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getLabelRotationAngle()F

    move-result v6

    .line 189
    .local v6, "labelRotationAngleDegrees":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isCenterAxisLabelsEnabled()Z

    move-result v7

    .line 191
    .local v7, "centeringEnabled":Z
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mEntryCount:I

    mul-int/lit8 v0, v0, 0x2

    new-array v9, v0, [F

    .line 193
    .local v9, "positions":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v9

    if-ge v8, v0, :cond_1

    .line 196
    if-eqz v7, :cond_0

    .line 197
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mCenteredEntries:[F

    div-int/lit8 v1, v8, 0x2

    aget v0, v0, v1

    aput v0, v9, v8

    .line 193
    :goto_1
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    div-int/lit8 v1, v8, 0x2

    aget v0, v0, v1

    aput v0, v9, v8

    goto :goto_1

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 205
    const/4 v8, 0x0

    :goto_2
    array-length v0, v9

    if-ge v8, v0, :cond_5

    .line 207
    aget v3, v9, v8

    .line 209
    .local v3, "x":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    div-int/lit8 v4, v8, 0x2

    aget v1, v1, v4

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-interface {v0, v1, v4}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "label":Ljava/lang/String;
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isAvoidFirstLastClippingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mEntryCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne v8, v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mEntryCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 217
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v0, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v10, v0

    .line 219
    .local v10, "width":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v0

    mul-float/2addr v0, v11

    cmpl-float v0, v10, v0

    if-lez v0, :cond_2

    add-float v0, v3, v10

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 220
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 221
    div-float v0, v10, v11

    sub-float/2addr v3, v0

    .end local v10    # "width":F
    :cond_2
    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 231
    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    .line 205
    .end local v2    # "label":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 224
    .restart local v2    # "label":Ljava/lang/String;
    :cond_4
    if-nez v8, :cond_2

    .line 226
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v0, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v10, v0

    .line 227
    .restart local v10    # "width":F
    div-float v0, v10, v11

    add-float/2addr v3, v0

    goto :goto_3

    .line 234
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "x":F
    .end local v10    # "width":F
    :cond_5
    return-void
.end method

.method public getGridClippingRect()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 279
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getGridLineWidth()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 280
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 107
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getYOffset()F

    move-result v1

    .line 112
    .local v1, "yoffset":F
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 113
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    invoke-static {v5, v5}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 117
    .local v0, "pointF":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_2

    .line 118
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 119
    iput v6, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 120
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 149
    :goto_1
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_3

    .line 123
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 124
    iput v6, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 125
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_1

    .line 127
    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_4

    .line 128
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 129
    iput v5, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 130
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_1

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_5

    .line 133
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 134
    iput v5, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 135
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_1

    .line 137
    :cond_5
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_BOTTOM_LABEL:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_6

    .line 138
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 139
    iput v5, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 140
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_1

    .line 142
    :cond_6
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 143
    iput v6, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 144
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 145
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 146
    iput v5, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 147
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto/16 :goto_1
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isDrawAxisLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisLineDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 162
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 163
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 164
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 165
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_BOTTOM_LABEL:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_3

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 167
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 168
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 166
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 172
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 173
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 174
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_BOTTOM_LABEL:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_0

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 176
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 177
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 175
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public renderGridLines(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->isDrawGridLinesEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 248
    .local v0, "clipRestoreCount":I
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->getGridClippingRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 250
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesBuffer:[F

    array-length v4, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget v5, v5, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    mul-int/lit8 v5, v5, 0x2

    if-eq v4, v5, :cond_2

    .line 251
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/XAxis;->mEntryCount:I

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesBuffer:[F

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesBuffer:[F

    .line 255
    .local v3, "positions":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 256
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    div-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    aput v4, v3, v2

    .line 257
    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    div-int/lit8 v6, v2, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    .line 255
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 260
    :cond_3
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 262
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->setupGridPaint()V

    .line 264
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderGridLinesPath:Landroid/graphics/Path;

    .line 265
    .local v1, "gridLinePath":Landroid/graphics/Path;
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 267
    const/4 v2, 0x0

    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 269
    aget v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, v3, v5

    invoke-virtual {p0, p1, v4, v5, v1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawGridLine(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V

    .line 267
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public renderLimitLineLabel(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/components/LimitLine;[FF)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "limitLine"    # Lcom/github/mikephil/charting/components/LimitLine;
    .param p3, "position"    # [F
    .param p4, "yOffset"    # F

    .prologue
    const/4 v6, 0x0

    .line 368
    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextStyle()Landroid/graphics/Paint$Style;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 375
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 377
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 380
    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v4

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getXOffset()F

    move-result v5

    add-float v3, v4, v5

    .line 382
    .local v3, "xOffset":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v2

    .line 384
    .local v2, "labelPosition":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    sget-object v4, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v2, v4, :cond_1

    .line 386
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v4, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v1, v4

    .line 387
    .local v1, "labelLineHeight":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 388
    aget v4, p3, v6

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v5

    add-float/2addr v5, p4

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 406
    .end local v1    # "labelLineHeight":F
    .end local v2    # "labelPosition":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .end local v3    # "xOffset":F
    :cond_0
    :goto_0
    return-void

    .line 390
    .restart local v2    # "labelPosition":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .restart local v3    # "xOffset":F
    :cond_1
    sget-object v4, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v2, v4, :cond_2

    .line 392
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 393
    aget v4, p3, v6

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v5

    sub-float/2addr v5, p4

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 394
    :cond_2
    sget-object v4, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v2, v4, :cond_3

    .line 396
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 397
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v4, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v1, v4

    .line 398
    .restart local v1    # "labelLineHeight":F
    aget v4, p3, v6

    sub-float/2addr v4, v3

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v5

    add-float/2addr v5, p4

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 402
    .end local v1    # "labelLineHeight":F
    :cond_3
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 403
    aget v4, p3, v6

    sub-float/2addr v4, v3

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v5

    sub-float/2addr v5, p4

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public renderLimitLineLine(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/components/LimitLine;[F)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "limitLine"    # Lcom/github/mikephil/charting/components/LimitLine;
    .param p3, "position"    # [F

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    aget v1, p3, v2

    aput v1, v0, v2

    .line 351
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v1

    aput v1, v0, v3

    .line 352
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    aget v1, p3, v2

    aput v1, v0, v4

    .line 353
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v1

    aput v1, v0, v5

    .line 355
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 356
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 357
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 359
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 360
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 362
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 364
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 365
    return-void
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 313
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->getLimitLines()Ljava/util/List;

    move-result-object v3

    .line 315
    .local v3, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 344
    :cond_0
    return-void

    .line 318
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderLimitLinesBuffer:[F

    .line 319
    .local v4, "position":[F
    aput v7, v4, v8

    .line 320
    aput v7, v4, v9

    .line 322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 324
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/components/LimitLine;

    .line 326
    .local v2, "l":Lcom/github/mikephil/charting/components/LimitLine;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 322
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 330
    .local v0, "clipRestoreCount":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 331
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 332
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 334
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v5

    aput v5, v4, v8

    .line 335
    aput v7, v4, v9

    .line 337
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v5, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 339
    invoke-virtual {p0, p1, v2, v4}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderLimitLineLine(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/components/LimitLine;[F)V

    .line 340
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getYOffset()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderLimitLineLabel(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/components/LimitLine;[FF)V

    .line 342
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1
.end method

.method protected setupGridPaint()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getGridColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getGridLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getGridDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 41
    return-void
.end method
