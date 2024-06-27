.class public Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "CandleStickChartRenderer.java"


# instance fields
.field private mBodyBuffers:[F

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

.field private mCloseBuffers:[F

.field private mOpenBuffers:[F

.field private mRangeBuffers:[F

.field private mShadowBuffers:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v1, 0x4

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    .line 26
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    .line 27
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    .line 34
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    .line 35
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 47
    .local v0, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 49
    .local v1, "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    goto :goto_0

    .line 52
    .end local v1    # "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V
    .locals 19
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v17

    .line 59
    .local v17, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v15

    .line 60
    .local v15, "phaseY":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getBarSpace()F

    move-result v8

    .line 61
    .local v8, "barSpace":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShowCandleBar()Z

    move-result v16

    .line 63
    .local v16, "showCandleBar":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v12, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .local v12, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v1, v2

    if-gt v12, v1, :cond_15

    .line 71
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 73
    .local v10, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    if-nez v10, :cond_0

    .line 68
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/CandleEntry;->getX()F

    move-result v18

    .line 78
    .local v18, "xPos":F
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/CandleEntry;->getOpen()F

    move-result v14

    .line 79
    .local v14, "open":F
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/CandleEntry;->getClose()F

    move-result v9

    .line 80
    .local v9, "close":F
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v11

    .line 81
    .local v11, "high":F
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v13

    .line 83
    .local v13, "low":F
    if-eqz v16, :cond_f

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x0

    aput v18, v1, v2

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x2

    aput v18, v1, v2

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x4

    aput v18, v1, v2

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x6

    aput v18, v1, v2

    .line 91
    cmpl-float v1, v14, v9

    if-lez v1, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x1

    mul-float v3, v11, v15

    aput v3, v1, v2

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x3

    mul-float v3, v14, v15

    aput v3, v1, v2

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x5

    mul-float v3, v13, v15

    aput v3, v1, v2

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x7

    mul-float v3, v9, v15

    aput v3, v1, v2

    .line 108
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 112
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColorSameAsCandle()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 114
    cmpl-float v1, v14, v9

    if-lez v1, :cond_4

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 116
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v1

    const v3, 0x112233

    if-ne v1, v3, :cond_3

    .line 117
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v1

    .line 115
    :goto_3
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v3, v18, v3

    add-float/2addr v3, v8

    aput v3, v1, v2

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v2, 0x1

    mul-float v3, v9, v15

    aput v3, v1, v2

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v2, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v3, v3, v18

    sub-float/2addr v3, v8

    aput v3, v1, v2

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v2, 0x3

    mul-float v3, v14, v15

    aput v3, v1, v2

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 157
    cmpl-float v1, v14, v9

    if-lez v1, :cond_b

    .line 159
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v1

    const v2, 0x112233

    if-ne v1, v2, :cond_a

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v3, 0x3

    aget v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v4, 0x2

    aget v4, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v5, 0x1

    aget v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 96
    :cond_1
    cmpg-float v1, v14, v9

    if-gez v1, :cond_2

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x1

    mul-float v3, v11, v15

    aput v3, v1, v2

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x3

    mul-float v3, v9, v15

    aput v3, v1, v2

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x5

    mul-float v3, v13, v15

    aput v3, v1, v2

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x7

    mul-float v3, v14, v15

    aput v3, v1, v2

    goto/16 :goto_2

    .line 102
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x1

    mul-float v3, v11, v15

    aput v3, v1, v2

    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x3

    mul-float v3, v14, v15

    aput v3, v1, v2

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x5

    mul-float v3, v13, v15

    aput v3, v1, v2

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    goto/16 :goto_2

    .line 118
    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v1

    goto/16 :goto_3

    .line 121
    :cond_4
    cmpg-float v1, v14, v9

    if-gez v1, :cond_6

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 123
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v1

    const v3, 0x112233

    if-ne v1, v3, :cond_5

    .line 124
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v1

    .line 122
    :goto_6
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 125
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v1

    goto :goto_6

    .line 129
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 130
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v1

    const v3, 0x112233

    if-ne v1, v3, :cond_7

    .line 131
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v1

    .line 129
    :goto_7
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 132
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v1

    goto :goto_7

    .line 136
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 137
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColor()I

    move-result v1

    const v3, 0x112233

    if-ne v1, v3, :cond_9

    .line 138
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v1

    .line 136
    :goto_8
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 139
    :cond_9
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColor()I

    move-result v1

    goto :goto_8

    .line 162
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 172
    :cond_b
    cmpg-float v1, v14, v9

    if-gez v1, :cond_d

    .line 174
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v1

    const v2, 0x112233

    if-ne v1, v2, :cond_c

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v4, 0x2

    aget v4, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v5, 0x3

    aget v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 177
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 188
    :cond_d
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v1

    const v2, 0x112233

    if-ne v1, v2, :cond_e

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v4, 0x2

    aget v4, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/4 v5, 0x3

    aget v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 191
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    .line 201
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    const/4 v2, 0x0

    aput v18, v1, v2

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    const/4 v2, 0x1

    mul-float v3, v11, v15

    aput v3, v1, v2

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    const/4 v2, 0x2

    aput v18, v1, v2

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    const/4 v2, 0x3

    mul-float v3, v13, v15

    aput v3, v1, v2

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v3, v18, v3

    add-float/2addr v3, v8

    aput v3, v1, v2

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    const/4 v2, 0x1

    mul-float v3, v14, v15

    aput v3, v1, v2

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    const/4 v2, 0x2

    aput v18, v1, v2

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    const/4 v2, 0x3

    mul-float v3, v14, v15

    aput v3, v1, v2

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v3, v3, v18

    sub-float/2addr v3, v8

    aput v3, v1, v2

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    const/4 v2, 0x1

    mul-float v3, v9, v15

    aput v3, v1, v2

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    const/4 v2, 0x2

    aput v18, v1, v2

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    const/4 v2, 0x3

    mul-float v3, v9, v15

    aput v3, v1, v2

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 223
    cmpl-float v1, v14, v9

    if-lez v1, :cond_11

    .line 224
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v1

    const v2, 0x112233

    if-ne v1, v2, :cond_10

    .line 225
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v7

    .line 236
    .local v7, "barColor":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    const/4 v4, 0x2

    aget v4, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    const/4 v5, 0x3

    aget v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    const/4 v4, 0x2

    aget v4, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    const/4 v5, 0x3

    aget v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    const/4 v4, 0x2

    aget v4, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    const/4 v5, 0x3

    aget v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 226
    .end local v7    # "barColor":I
    :cond_10
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v7

    goto :goto_b

    .line 227
    :cond_11
    cmpg-float v1, v14, v9

    if-gez v1, :cond_13

    .line 228
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v1

    const v2, 0x112233

    if-ne v1, v2, :cond_12

    .line 229
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v7

    .line 230
    .restart local v7    # "barColor":I
    :goto_c
    goto/16 :goto_b

    .end local v7    # "barColor":I
    :cond_12
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v7

    goto :goto_c

    .line 232
    :cond_13
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v1

    const v2, 0x112233

    if-ne v1, v2, :cond_14

    .line 233
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v7

    .line 234
    .restart local v7    # "barColor":I
    :goto_d
    goto/16 :goto_b

    .end local v7    # "barColor":I
    :cond_14
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v7

    goto :goto_d

    .line 251
    .end local v9    # "close":F
    .end local v10    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    .end local v11    # "high":F
    .end local v13    # "low":F
    .end local v14    # "open":F
    .end local v18    # "xPos":F
    :cond_15
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 302
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 307
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v2

    .line 309
    .local v2, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v4, p2, v10

    .line 311
    .local v4, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v4}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v12

    invoke-virtual {v2, v12}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 313
    .local v8, "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->isHighlightEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    .line 309
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v4}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v12

    invoke-virtual {v4}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v13

    invoke-interface {v8, v12, v13}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 318
    .local v3, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 321
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v13

    mul-float v6, v12, v13

    .line 322
    .local v6, "lowValue":F
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v13

    mul-float v5, v12, v13

    .line 323
    .local v5, "highValue":F
    add-float v12, v6, v5

    const/high16 v13, 0x40000000    # 2.0f

    div-float v9, v12, v13

    .line 325
    .local v9, "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v12

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->getX()F

    move-result v13

    invoke-virtual {v12, v13, v9}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v7

    .line 327
    .local v7, "pix":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-wide v12, v7, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v12, v12

    iget-wide v14, v7, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v13, v14

    invoke-virtual {v4, v12, v13}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 330
    iget-wide v12, v7, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v12, v12

    iget-wide v14, v7, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v13, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13, v8}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;)V

    goto :goto_1

    .line 332
    .end local v3    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    .end local v4    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v5    # "highValue":F
    .end local v6    # "lowValue":F
    .end local v7    # "pix":Lcom/github/mikephil/charting/utils/MPPointD;
    .end local v8    # "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    .end local v9    # "y":F
    :cond_2
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v12

    .line 261
    .local v12, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v8, v3, :cond_4

    .line 263
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 265
    .local v2, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 269
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    .line 273
    .local v1, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-virtual {v3, v4, v2}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 276
    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v5, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v6, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    .line 275
    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesCandle(Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;FFII)[F

    move-result-object v14

    .line 278
    .local v14, "positions":[F
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v16

    .line 280
    .local v16, "yOffset":F
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    array-length v3, v14

    if-ge v13, v3, :cond_0

    .line 282
    aget v9, v14, v13

    .line 283
    .local v9, "x":F
    add-int/lit8 v3, v13, 0x1

    aget v15, v14, v3

    .line 285
    .local v15, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 280
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x2

    goto :goto_1

    .line 291
    :cond_3
    div-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v4, v4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 293
    .local v7, "entry":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v5

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v6

    sub-float v10, v15, v16

    div-int/lit8 v3, v13, 0x2

    .line 294
    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getValueTextColor(I)I

    move-result v11

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 293
    invoke-virtual/range {v3 .. v11}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_2

    .line 298
    .end local v1    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v2    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    .end local v7    # "entry":Lcom/github/mikephil/charting/data/CandleEntry;
    .end local v8    # "i":I
    .end local v9    # "x":F
    .end local v12    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;>;"
    .end local v13    # "j":I
    .end local v14    # "positions":[F
    .end local v15    # "y":F
    .end local v16    # "yOffset":F
    :cond_4
    return-void
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
