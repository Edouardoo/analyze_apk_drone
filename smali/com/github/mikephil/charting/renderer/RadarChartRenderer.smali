.class public Lcom/github/mikephil/charting/renderer/RadarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineRadarRenderer;
.source "RadarChartRenderer.java"


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/charts/RadarChart;

.field protected mDrawDataSetSurfacePathBuffer:Landroid/graphics/Path;

.field protected mDrawHighlightCirclePathBuffer:Landroid/graphics/Path;

.field protected mHighlightCirclePaint:Landroid/graphics/Paint;

.field protected mWebPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 5
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/RadarChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mDrawDataSetSurfacePathBuffer:Landroid/graphics/Path;

    .line 325
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mDrawHighlightCirclePathBuffer:Landroid/graphics/Path;

    .line 34
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xbb

    const/16 v3, 0x73

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightCirclePaint:Landroid/graphics/Paint;

    .line 45
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 60
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    .line 62
    .local v1, "radarData":Lcom/github/mikephil/charting/data/RadarData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v0

    .line 64
    .local v0, "mostEntries":I
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getDataSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    .line 66
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;I)V

    goto :goto_0

    .line 70
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;I)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    .param p3, "mostEntries"    # I

    .prologue
    .line 82
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v8

    .line 83
    .local v8, "phaseX":F
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v9

    .line 85
    .local v9, "phaseY":F
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v10

    .line 89
    .local v10, "sliceangle":F
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v4

    .line 91
    .local v4, "factor":F
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v1

    .line 92
    .local v1, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v7

    .line 93
    .local v7, "pOut":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mDrawDataSetSurfacePathBuffer:Landroid/graphics/Path;

    .line 94
    .local v11, "surface":Landroid/graphics/Path;
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 96
    const/4 v5, 0x0

    .line 98
    .local v5, "hasMovedToPoint":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v12

    if-ge v6, v12, :cond_2

    .line 100
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/RadarEntry;

    .line 106
    .local v3, "e":Lcom/github/mikephil/charting/data/RadarEntry;
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/RadarEntry;->getY()F

    move-result v12

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v4

    mul-float/2addr v12, v9

    int-to-float v13, v6

    mul-float/2addr v13, v10

    mul-float/2addr v13, v8

    iget-object v14, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 107
    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v14

    add-float/2addr v13, v14

    .line 104
    invoke-static {v1, v12, v13, v7}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 109
    iget v12, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 98
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    :cond_0
    if-nez v5, :cond_1

    .line 113
    iget v12, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v13, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 114
    const/4 v5, 0x1

    goto :goto_1

    .line 116
    :cond_1
    iget v12, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v13, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 119
    .end local v3    # "e":Lcom/github/mikephil/charting/data/RadarEntry;
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v12

    move/from16 v0, p3

    if-le v12, v0, :cond_3

    .line 121
    iget v12, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v13, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    :cond_3
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 126
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isDrawFilledEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 128
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 129
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_7

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v11, v2}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    .line 138
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_2
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getLineWidth()F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isDrawFilledEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getFillAlpha()I

    move-result v12

    const/16 v13, 0xff

    if-ge v12, v13, :cond_6

    .line 143
    :cond_5
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    :cond_6
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 146
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 147
    return-void

    .line 134
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getFillColor()I

    move-result v12

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getFillAlpha()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v11, v12, v13}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_2
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawWeb(Landroid/graphics/Canvas;)V

    .line 198
    return-void
.end method

.method public drawHighlightCircle(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/utils/MPPointF;FFIIF)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "point"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p3, "innerRadius"    # F
    .param p4, "outerRadius"    # F
    .param p5, "fillColor"    # I
    .param p6, "strokeColor"    # I
    .param p7, "strokeWidth"    # F

    .prologue
    const v4, 0x112233

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 335
    invoke-static {p4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p4

    .line 336
    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p3

    .line 338
    if-eq p5, v4, :cond_1

    .line 339
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mDrawHighlightCirclePathBuffer:Landroid/graphics/Path;

    .line 340
    .local v0, "p":Landroid/graphics/Path;
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 341
    iget v1, p2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, p2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, p4, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 342
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    .line 343
    iget v1, p2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, p2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 347
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 350
    .end local v0    # "p":Landroid/graphics/Path;
    :cond_1
    if-eq p6, v4, :cond_2

    .line 351
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 353
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightCirclePaint:Landroid/graphics/Paint;

    invoke-static {p7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    iget v1, p2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, p2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, p4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 357
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 358
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v16

    .line 266
    .local v16, "sliceangle":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v12

    .line 268
    .local v12, "factor":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v10

    .line 269
    .local v10, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    .line 271
    .local v4, "pOut":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/RadarData;

    .line 273
    .local v14, "radarData":Lcom/github/mikephil/charting/data/RadarData;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-object v13, p2, v18

    .line 275
    .local v13, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v13}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v15

    check-cast v15, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    .line 277
    .local v15, "set":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    if-eqz v15, :cond_0

    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isHighlightEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_1
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v13}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v15, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/data/RadarEntry;

    .line 282
    .local v11, "e":Lcom/github/mikephil/charting/data/RadarEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/RadarEntry;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v3

    sub-float v17, v2, v3

    .line 287
    .local v17, "y":F
    mul-float v2, v17, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 288
    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    mul-float/2addr v2, v3

    .line 289
    invoke-virtual {v13}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v3

    mul-float v3, v3, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    mul-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v5

    add-float/2addr v3, v5

    .line 287
    invoke-static {v10, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 292
    iget v2, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v13, v2, v3}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 295
    iget v2, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;)V

    .line 297
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isDrawHighlightCircleEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget v2, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getHighlightCircleStrokeColor()I

    move-result v8

    .line 302
    .local v8, "strokeColor":I
    const v2, 0x112233

    if-ne v8, v2, :cond_2

    .line 303
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getColor(I)I

    move-result v8

    .line 306
    :cond_2
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getHighlightCircleStrokeAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_3

    .line 307
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getHighlightCircleStrokeAlpha()I

    move-result v2

    invoke-static {v8, v2}, Lcom/github/mikephil/charting/utils/ColorTemplate;->colorWithAlpha(II)I

    move-result v8

    .line 312
    :cond_3
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getHighlightCircleInnerRadius()F

    move-result v5

    .line 313
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getHighlightCircleOuterRadius()F

    move-result v6

    .line 314
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getHighlightCircleFillColor()I

    move-result v7

    .line 316
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getHighlightCircleStrokeWidth()F

    move-result v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 310
    invoke-virtual/range {v2 .. v9}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawHighlightCircle(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/utils/MPPointF;FFIIF)V

    goto/16 :goto_1

    .line 321
    .end local v8    # "strokeColor":I
    .end local v11    # "e":Lcom/github/mikephil/charting/data/RadarEntry;
    .end local v13    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v15    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    .end local v17    # "y":F
    :cond_4
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 322
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 323
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v15

    .line 153
    .local v15, "phaseX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v16

    .line 155
    .local v16, "phaseY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v17

    .line 159
    .local v17, "sliceangle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v12

    .line 161
    .local v12, "factor":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v10

    .line 162
    .local v10, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v14

    .line 164
    .local v14, "pOut":Lcom/github/mikephil/charting/utils/MPPointF;
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v18

    .line 166
    .local v18, "yoffset":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetCount()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    .line 170
    .local v11, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 176
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 178
    invoke-interface {v11, v13}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/RadarEntry;

    .line 182
    .local v5, "entry":Lcom/github/mikephil/charting/data/RadarEntry;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/RadarEntry;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v12

    mul-float v1, v1, v16

    int-to-float v2, v13

    mul-float v2, v2, v17

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 183
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v3

    add-float/2addr v2, v3

    .line 180
    invoke-static {v10, v1, v2, v14}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 186
    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v3

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/RadarEntry;->getY()F

    move-result v4

    iget v7, v14, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v1, v14, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float v8, v1, v18

    .line 187
    invoke-interface {v11, v13}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getValueTextColor(I)I

    move-result v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 186
    invoke-virtual/range {v1 .. v9}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 176
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 191
    .end local v5    # "entry":Lcom/github/mikephil/charting/data/RadarEntry;
    .end local v11    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    .end local v13    # "j":I
    :cond_2
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 192
    invoke-static {v14}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 193
    return-void
.end method

.method protected drawWeb(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v18

    .line 206
    .local v18, "sliceangle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v8

    .line 207
    .local v8, "factor":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v17

    .line 209
    .local v17, "rotationangle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v7

    .line 212
    .local v7, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSkipWebLineCount()I

    move-result v1

    add-int/lit8 v19, v1, 0x1

    .line 217
    .local v19, "xIncrements":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v12

    .line 219
    .local v12, "maxEntryCount":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v13

    .line 220
    .local v13, "p":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 224
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v1

    mul-float/2addr v1, v8

    int-to-float v2, v9

    mul-float v2, v2, v18

    add-float v2, v2, v17

    .line 222
    invoke-static {v7, v1, v2, v13}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 228
    iget v2, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget v4, v13, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v13, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 220
    add-int v9, v9, v19

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {v13}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidthInner()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColorInner()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget v11, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 239
    .local v11, "labelCount":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v14

    .line 240
    .local v14, "p1out":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v15

    .line 241
    .local v15, "p2out":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v11, :cond_2

    .line 243
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getEntryCount()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget-object v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v1, v1, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v16, v1, v8

    .line 247
    .local v16, "r":F
    int-to-float v1, v9

    mul-float v1, v1, v18

    add-float v1, v1, v17

    move/from16 v0, v16

    invoke-static {v7, v0, v1, v14}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 248
    add-int/lit8 v1, v9, 0x1

    int-to-float v1, v1

    mul-float v1, v1, v18

    add-float v1, v1, v17

    move/from16 v0, v16

    invoke-static {v7, v0, v1, v15}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 250
    iget v2, v14, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v14, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget v4, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 243
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 241
    .end local v16    # "r":F
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 255
    :cond_2
    invoke-static {v14}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 256
    invoke-static {v15}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 257
    return-void
.end method

.method public getWebPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
