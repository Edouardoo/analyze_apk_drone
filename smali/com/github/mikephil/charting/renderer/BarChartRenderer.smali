.class public Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;
.source "BarChartRenderer.java"


# instance fields
.field protected mBarBorderPaint:Landroid/graphics/Paint;

.field protected mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

.field protected mBarRect:Landroid/graphics/RectF;

.field private mBarShadowRectBuffer:Landroid/graphics/RectF;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

.field protected mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 4
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 40
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 73
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 75
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 77
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p0, p1, v2, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v20

    .line 89
    .local v20, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v3

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v13, 0x1

    .line 94
    .local v13, "drawBorder":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v18

    .line 95
    .local v18, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v19

    .line 98
    .local v19, "phaseY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarShadowColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v8

    .line 103
    .local v8, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v9

    .line 104
    .local v9, "barWidth":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v9, v2

    .line 107
    .local v10, "barWidthHalf":F
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 108
    .local v12, "count":I
    :goto_1
    if-ge v15, v12, :cond_2

    .line 111
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/BarEntry;

    .line 113
    .local v14, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v21

    .line 115
    .local v21, "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    sub-float v3, v21, v10

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    add-float v3, v21, v10

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 92
    .end local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .end local v9    # "barWidth":F
    .end local v10    # "barWidthHalf":F
    .end local v12    # "count":I
    .end local v13    # "drawBorder":Z
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v15    # "i":I
    .end local v18    # "phaseX":F
    .end local v19    # "phaseY":F
    .end local v21    # "x":F
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 123
    .restart local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .restart local v9    # "barWidth":F
    .restart local v10    # "barWidthHalf":F
    .restart local v12    # "count":I
    .restart local v13    # "drawBorder":Z
    .restart local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .restart local v15    # "i":I
    .restart local v18    # "phaseX":F
    .restart local v19    # "phaseY":F
    .restart local v21    # "x":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-nez v2, :cond_5

    .line 134
    .end local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .end local v9    # "barWidth":F
    .end local v10    # "barWidthHalf":F
    .end local v12    # "count":I
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v15    # "i":I
    .end local v21    # "x":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v11, v2, p3

    .line 135
    .local v11, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 136
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarWidth(F)V

    .line 140
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 142
    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 144
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/16 v16, 0x1

    .line 146
    .local v16, "isSingleColor":Z
    :goto_3
    if-eqz v16, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    :cond_3
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_4
    invoke-virtual {v11}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-nez v2, :cond_7

    .line 150
    :cond_4
    :goto_5
    add-int/lit8 v17, v17, 0x4

    goto :goto_4

    .line 126
    .end local v11    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .end local v16    # "isSingleColor":Z
    .end local v17    # "j":I
    .restart local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .restart local v9    # "barWidth":F
    .restart local v10    # "barWidthHalf":F
    .restart local v12    # "count":I
    .restart local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .restart local v15    # "i":I
    .restart local v21    # "x":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 144
    .end local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .end local v9    # "barWidth":F
    .end local v10    # "barWidthHalf":F
    .end local v12    # "count":I
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v15    # "i":I
    .end local v21    # "x":F
    .restart local v11    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    :cond_6
    const/16 v16, 0x0

    goto :goto_3

    .line 155
    .restart local v16    # "isSingleColor":Z
    .restart local v17    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v3, v3, v17

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-nez v2, :cond_9

    .line 172
    :cond_8
    return-void

    .line 158
    :cond_9
    if-nez v16, :cond_a

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v3, v17, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    :cond_a
    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v3, v2, v17

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x1

    aget v4, v2, v4

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v17, 0x2

    aget v5, v2, v5

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v17, 0x3

    aget v6, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    if-eqz v13, :cond_4

    .line 168
    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v3, v2, v17

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x1

    aget v4, v2, v4

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v17, 0x2

    aget v5, v2, v5

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v17, 0x3

    aget v6, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 404
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v7

    .line 344
    .local v7, "barData":Lcom/github/mikephil/charting/data/BarData;
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v14, :cond_5

    aget-object v9, p2, v13

    .line 346
    .local v9, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 348
    .local v12, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isHighlightEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_1
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v1

    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v2

    invoke-interface {v12, v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BarEntry;

    .line 353
    .local v8, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {p0, v8, v12}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    .line 358
    .local v6, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 361
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v10, 0x1

    .line 366
    .local v10, "isStack":Z
    :goto_2
    if-eqz v10, :cond_4

    .line 368
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isHighlightFullBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v3

    .line 371
    .local v3, "y1":F
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v1

    neg-float v4, v1

    .line 386
    .local v4, "y2":F
    :goto_3
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v2

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    .line 388
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v9, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V

    .line 390
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 361
    .end local v3    # "y1":F
    .end local v4    # "y2":F
    .end local v10    # "isStack":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 375
    .restart local v10    # "isStack":Z
    :cond_3
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getRanges()[Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v1

    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v2

    aget-object v11, v1, v2

    .line 377
    .local v11, "range":Lcom/github/mikephil/charting/highlight/Range;
    iget v3, v11, Lcom/github/mikephil/charting/highlight/Range;->from:F

    .line 378
    .restart local v3    # "y1":F
    iget v4, v11, Lcom/github/mikephil/charting/highlight/Range;->to:F

    .line 379
    .restart local v4    # "y2":F
    goto :goto_3

    .line 382
    .end local v3    # "y1":F
    .end local v4    # "y2":F
    .end local v11    # "range":Lcom/github/mikephil/charting/highlight/Range;
    :cond_4
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v3

    .line 383
    .restart local v3    # "y1":F
    const/4 v4, 0x0

    .restart local v4    # "y2":F
    goto :goto_3

    .line 392
    .end local v3    # "y1":F
    .end local v4    # "y2":F
    .end local v6    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v8    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v9    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v10    # "isStack":Z
    .end local v12    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_5
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v21

    .line 194
    .local v21, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v38

    .line 195
    .local v38, "valueOffsetPlus":F
    const/16 v32, 0x0

    .line 196
    .local v32, "posOffset":F
    const/16 v29, 0x0

    .line 197
    .local v29, "negOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v23

    .line 199
    .local v23, "drawValueAboveBar":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v2

    if-ge v7, v2, :cond_18

    .line 201
    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 203
    .local v20, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 207
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {v20 .. v20}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v26

    .line 213
    .local v26, "isInverted":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v3, "8"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v39, v0

    .line 214
    .local v39, "valueTextHeight":F
    if-eqz v23, :cond_4

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v32, v0

    .line 215
    :goto_1
    if-eqz v23, :cond_5

    add-float v29, v39, v38

    .line 217
    :goto_2
    if-eqz v26, :cond_2

    .line 218
    move/from16 v0, v32

    neg-float v2, v0

    sub-float v32, v2, v39

    .line 219
    move/from16 v0, v29

    neg-float v2, v0

    sub-float v29, v2, v39

    .line 223
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v18, v2, v7

    .line 225
    .local v18, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v31

    .line 228
    .local v31, "phaseY":F
    invoke-interface/range {v20 .. v20}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v2

    if-nez v2, :cond_8

    .line 230
    const/16 v27, 0x0

    .local v27, "j":I
    :goto_3
    move/from16 v0, v27

    int-to-float v2, v0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    array-length v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 232
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v2, v2, v27

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v27, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 234
    .local v8, "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v27, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 238
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-nez v2, :cond_6

    .line 230
    :cond_3
    :goto_4
    add-int/lit8 v27, v27, 0x4

    goto :goto_3

    .line 214
    .end local v8    # "x":F
    .end local v18    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .end local v27    # "j":I
    .end local v31    # "phaseY":F
    :cond_4
    add-float v32, v39, v38

    goto :goto_1

    .line 215
    :cond_5
    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v29, v0

    goto :goto_2

    .line 241
    .restart local v8    # "x":F
    .restart local v18    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .restart local v27    # "j":I
    .restart local v31    # "phaseY":F
    :cond_6
    div-int/lit8 v2, v27, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    .line 242
    .local v6, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v5

    .line 244
    .local v5, "val":F
    invoke-interface/range {v20 .. v20}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v4

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_7

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v27, 0x1

    aget v2, v2, v3

    add-float v9, v2, v32

    :goto_5
    div-int/lit8 v2, v27, 0x4

    .line 246
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 244
    invoke-virtual/range {v2 .. v10}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_4

    :cond_7
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v27, 0x3

    aget v2, v2, v3

    add-float v9, v2, v29

    goto :goto_5

    .line 252
    .end local v5    # "val":F
    .end local v6    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v8    # "x":F
    .end local v27    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {v20 .. v20}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v34

    .line 254
    .local v34, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    const/16 v19, 0x0

    .line 255
    .local v19, "bufferIndex":I
    const/16 v25, 0x0

    .line 257
    .local v25, "index":I
    :cond_9
    :goto_6
    move/from16 v0, v25

    int-to-float v2, v0

    invoke-interface/range {v20 .. v20}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 259
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    .line 261
    .restart local v6    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v36

    .line 262
    .local v36, "vals":[F
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v2, v2, v19

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v19, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 264
    .restart local v8    # "x":F
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v17

    .line 269
    .local v17, "color":I
    if-nez v36, :cond_c

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v19, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 275
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 278
    invoke-interface/range {v20 .. v20}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v11

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v12

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v19, 0x1

    aget v3, v2, v3

    .line 279
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_b

    move/from16 v2, v32

    :goto_7
    add-float v16, v3, v2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v13, v6

    move v14, v7

    move v15, v8

    .line 278
    invoke-virtual/range {v9 .. v17}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 331
    :cond_a
    if-nez v36, :cond_17

    add-int/lit8 v19, v19, 0x4

    .line 332
    :goto_8
    add-int/lit8 v25, v25, 0x1

    .line 333
    goto/16 :goto_6

    :cond_b
    move/from16 v2, v29

    .line 279
    goto :goto_7

    .line 285
    :cond_c
    move-object/from16 v0, v36

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v35, v0

    .line 287
    .local v35, "transformed":[F
    const/16 v33, 0x0

    .line 288
    .local v33, "posY":F
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v2

    neg-float v0, v2

    move/from16 v30, v0

    .line 290
    .local v30, "negY":F
    const/16 v28, 0x0

    .local v28, "k":I
    const/16 v24, 0x0

    .local v24, "idx":I
    :goto_9
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_10

    .line 292
    aget v37, v36, v24

    .line 295
    .local v37, "value":F
    const/4 v2, 0x0

    cmpl-float v2, v37, v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    cmpl-float v2, v30, v2

    if-nez v2, :cond_e

    .line 297
    :cond_d
    move/from16 v16, v37

    .line 306
    .local v16, "y":F
    :goto_a
    add-int/lit8 v2, v28, 0x1

    mul-float v3, v16, v31

    aput v3, v35, v2

    .line 290
    add-int/lit8 v28, v28, 0x2

    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 298
    .end local v16    # "y":F
    :cond_e
    const/4 v2, 0x0

    cmpl-float v2, v37, v2

    if-ltz v2, :cond_f

    .line 299
    add-float v33, v33, v37

    .line 300
    move/from16 v16, v33

    .restart local v16    # "y":F
    goto :goto_a

    .line 302
    .end local v16    # "y":F
    :cond_f
    move/from16 v16, v30

    .line 303
    .restart local v16    # "y":F
    sub-float v30, v30, v37

    goto :goto_a

    .line 309
    .end local v16    # "y":F
    .end local v37    # "value":F
    :cond_10
    invoke-virtual/range {v34 .. v35}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 311
    const/16 v28, 0x0

    :goto_b
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_a

    .line 313
    div-int/lit8 v2, v28, 0x2

    aget v5, v36, v2

    .line 314
    .restart local v5    # "val":F
    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-nez v2, :cond_11

    const/4 v2, 0x0

    cmpl-float v2, v30, v2

    if-nez v2, :cond_11

    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-gtz v2, :cond_12

    :cond_11
    const/4 v2, 0x0

    cmpg-float v2, v5, v2

    if-gez v2, :cond_14

    :cond_12
    const/16 v22, 0x1

    .line 317
    .local v22, "drawBelow":Z
    :goto_c
    add-int/lit8 v2, v28, 0x1

    aget v3, v35, v2

    if-eqz v22, :cond_15

    move/from16 v2, v29

    :goto_d
    add-float v16, v3, v2

    .line 320
    .restart local v16    # "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 324
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-nez v2, :cond_16

    .line 311
    :cond_13
    :goto_e
    add-int/lit8 v28, v28, 0x2

    goto :goto_b

    .line 314
    .end local v16    # "y":F
    .end local v22    # "drawBelow":Z
    :cond_14
    const/16 v22, 0x0

    goto :goto_c

    .restart local v22    # "drawBelow":Z
    :cond_15
    move/from16 v2, v32

    .line 317
    goto :goto_d

    .line 327
    .restart local v16    # "y":F
    :cond_16
    invoke-interface/range {v20 .. v20}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v11

    div-int/lit8 v2, v28, 0x2

    aget v12, v36, v2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v13, v6

    move v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_e

    .line 331
    .end local v5    # "val":F
    .end local v16    # "y":F
    .end local v22    # "drawBelow":Z
    .end local v24    # "idx":I
    .end local v28    # "k":I
    .end local v30    # "negY":F
    .end local v33    # "posY":F
    .end local v35    # "transformed":[F
    :cond_17
    move-object/from16 v0, v36

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    add-int v19, v19, v2

    goto/16 :goto_8

    .line 337
    .end local v6    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v7    # "i":I
    .end local v8    # "x":F
    .end local v17    # "color":I
    .end local v18    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .end local v19    # "bufferIndex":I
    .end local v20    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .end local v21    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    .end local v23    # "drawValueAboveBar":Z
    .end local v25    # "index":I
    .end local v26    # "isInverted":Z
    .end local v29    # "negOffset":F
    .end local v31    # "phaseY":F
    .end local v32    # "posOffset":F
    .end local v34    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v36    # "vals":[F
    .end local v38    # "valueOffsetPlus":F
    .end local v39    # "valueTextHeight":F
    :cond_18
    return-void
.end method

.method public initBuffers()V
    .locals 8

    .prologue
    .line 58
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 59
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/BarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 62
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 63
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v5, Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    mul-int/lit8 v6, v3, 0x4

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    move-result v3

    :goto_1
    mul-int/2addr v3, v6

    .line 64
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v6

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v7

    invoke-direct {v5, v3, v6, v7}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IIZ)V

    aput-object v5, v4, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 66
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_1
    return-void
.end method

.method protected prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "barWidthHalf"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 176
    sub-float v1, p1, p4

    .line 177
    .local v1, "left":F
    add-float v2, p1, p4

    .line 178
    .local v2, "right":F
    move v3, p2

    .line 179
    .local v3, "top":F
    move v0, p3

    .line 181
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 183
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    invoke-virtual {p5, v4, v5}, Lcom/github/mikephil/charting/utils/Transformer;->rectToPixelPhase(Landroid/graphics/RectF;F)V

    .line 184
    return-void
.end method

.method protected setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .param p2, "bar"    # Landroid/graphics/RectF;

    .prologue
    .line 399
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 400
    return-void
.end method
