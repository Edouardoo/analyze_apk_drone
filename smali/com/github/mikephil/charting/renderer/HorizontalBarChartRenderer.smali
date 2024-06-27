.class public Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "HorizontalBarChartRenderer.java"


# instance fields
.field private mBarShadowRectBuffer:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 35
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v20

    .line 58
    .local v20, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v3

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v13, 0x1

    .line 63
    .local v13, "drawBorder":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v18

    .line 64
    .local v18, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v19

    .line 67
    .local v19, "phaseY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarShadowColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v8

    .line 72
    .local v8, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v9

    .line 73
    .local v9, "barWidth":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v9, v2

    .line 76
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

    .line 77
    .local v12, "count":I
    :goto_1
    if-ge v15, v12, :cond_2

    .line 80
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/BarEntry;

    .line 82
    .local v14, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v21

    .line 84
    .local v21, "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    sub-float v3, v21, v10

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    add-float v3, v21, v10

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 61
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

    .line 92
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

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-nez v2, :cond_5

    .line 103
    .end local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .end local v9    # "barWidth":F
    .end local v10    # "barWidthHalf":F
    .end local v12    # "count":I
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v15    # "i":I
    .end local v21    # "x":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v11, v2, p3

    .line 104
    .local v11, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 105
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarWidth(F)V

    .line 109
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 111
    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 113
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/16 v16, 0x1

    .line 115
    .local v16, "isSingleColor":Z
    :goto_3
    if-eqz v16, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    :cond_3
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_4
    invoke-virtual {v11}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-nez v2, :cond_7

    .line 141
    :cond_4
    return-void

    .line 95
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

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 113
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

    .line 124
    .restart local v16    # "isSingleColor":Z
    .restart local v17    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-nez v2, :cond_9

    .line 119
    :cond_8
    :goto_5
    add-int/lit8 v17, v17, 0x4

    goto :goto_4

    .line 127
    :cond_9
    if-nez v16, :cond_a

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v3, v17, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
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

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    if-eqz v13, :cond_8

    .line 137
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

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method protected drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "valueText"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "color"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 330
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v11

    .line 150
    .local v11, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v33

    .line 151
    .local v33, "valueOffsetPlus":F
    const/16 v26, 0x0

    .line 152
    .local v26, "posOffset":F
    const/16 v23, 0x0

    .line 153
    .local v23, "negOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v13

    .line 155
    .local v13, "drawValueAboveBar":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1e

    .line 157
    move/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 159
    .local v10, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 162
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v20

    .line 165
    .local v20, "isInverted":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v3, "10"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v16, v2, v3

    .line 168
    .local v16, "halfTextHeight":F
    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v15

    .line 171
    .local v15, "formatter":Lcom/github/mikephil/charting/formatter/IValueFormatter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v8, v2, v17

    .line 173
    .local v8, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v25

    .line 176
    .local v25, "phaseY":F
    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v2

    if-nez v2, :cond_8

    .line 178
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_1
    move/from16 v0, v21

    int-to-float v2, v0

    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    array-length v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v6

    mul-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 180
    iget-object v2, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v21, 0x1

    aget v2, v2, v3

    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v21, 0x3

    aget v3, v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v35, v2, v3

    .line 182
    .local v35, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v21, 0x1

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 178
    :cond_2
    :goto_2
    add-int/lit8 v21, v21, 0x4

    goto :goto_1

    .line 188
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v21, 0x1

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    div-int/lit8 v2, v21, 0x4

    invoke-interface {v10, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/BarEntry;

    .line 192
    .local v14, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v30

    .line 193
    .local v30, "val":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v15, v0, v14, v1, v2}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v2, v4}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v34, v0

    .line 197
    .local v34, "valueTextWidth":F
    if-eqz v13, :cond_5

    move/from16 v26, v33

    .line 198
    :goto_3
    if-eqz v13, :cond_6

    add-float v2, v34, v33

    neg-float v0, v2

    move/from16 v23, v0

    .line 200
    :goto_4
    if-eqz v20, :cond_4

    .line 201
    move/from16 v0, v26

    neg-float v2, v0

    sub-float v26, v2, v34

    .line 202
    move/from16 v0, v23

    neg-float v2, v0

    sub-float v23, v2, v34

    .line 205
    :cond_4
    iget-object v2, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v21, 0x2

    aget v3, v2, v3

    const/4 v2, 0x0

    cmpl-float v2, v30, v2

    if-ltz v2, :cond_7

    move/from16 v2, v26

    :goto_5
    add-float v5, v3, v2

    add-float v6, v35, v16

    div-int/lit8 v2, v21, 0x2

    .line 206
    invoke-interface {v10, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 205
    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_2

    .line 197
    :cond_5
    add-float v2, v34, v33

    neg-float v0, v2

    move/from16 v26, v0

    goto :goto_3

    :cond_6
    move/from16 v23, v33

    .line 198
    goto :goto_4

    :cond_7
    move/from16 v2, v23

    .line 205
    goto :goto_5

    .line 212
    .end local v4    # "formattedValue":Ljava/lang/String;
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v21    # "j":I
    .end local v30    # "val":F
    .end local v34    # "valueTextWidth":F
    .end local v35    # "y":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v28

    .line 214
    .local v28, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    const/4 v9, 0x0

    .line 215
    .local v9, "bufferIndex":I
    const/16 v19, 0x0

    .line 217
    .local v19, "index":I
    :cond_9
    :goto_6
    move/from16 v0, v19

    int-to-float v2, v0

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v6

    mul-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 219
    move/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/BarEntry;

    .line 221
    .restart local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    move/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v7

    .line 222
    .local v7, "color":I
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v31

    .line 227
    .local v31, "vals":[F
    if-nez v31, :cond_f

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v9, 0x1

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v9, 0x1

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 238
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v30

    .line 239
    .restart local v30    # "val":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v15, v0, v14, v1, v2}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .restart local v4    # "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v2, v4}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v34, v0

    .line 243
    .restart local v34    # "valueTextWidth":F
    if-eqz v13, :cond_c

    move/from16 v26, v33

    .line 244
    :goto_7
    if-eqz v13, :cond_d

    add-float v2, v34, v33

    neg-float v0, v2

    move/from16 v23, v0

    .line 246
    :goto_8
    if-eqz v20, :cond_a

    .line 247
    move/from16 v0, v26

    neg-float v2, v0

    sub-float v26, v2, v34

    .line 248
    move/from16 v0, v23

    neg-float v2, v0

    sub-float v23, v2, v34

    .line 251
    :cond_a
    iget-object v2, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x2

    aget v3, v2, v3

    .line 252
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_e

    move/from16 v2, v26

    :goto_9
    add-float v5, v3, v2

    iget-object v2, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    add-float v6, v2, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 251
    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 319
    .end local v4    # "formattedValue":Ljava/lang/String;
    .end local v30    # "val":F
    .end local v34    # "valueTextWidth":F
    :cond_b
    if-nez v31, :cond_1d

    add-int/lit8 v9, v9, 0x4

    .line 320
    :goto_a
    add-int/lit8 v19, v19, 0x1

    .line 321
    goto/16 :goto_6

    .line 243
    .restart local v4    # "formattedValue":Ljava/lang/String;
    .restart local v30    # "val":F
    .restart local v34    # "valueTextWidth":F
    :cond_c
    add-float v2, v34, v33

    neg-float v0, v2

    move/from16 v26, v0

    goto :goto_7

    :cond_d
    move/from16 v23, v33

    .line 244
    goto :goto_8

    :cond_e
    move/from16 v2, v23

    .line 252
    goto :goto_9

    .line 257
    .end local v4    # "formattedValue":Ljava/lang/String;
    .end local v30    # "val":F
    .end local v34    # "valueTextWidth":F
    :cond_f
    move-object/from16 v0, v31

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v29, v0

    .line 259
    .local v29, "transformed":[F
    const/16 v27, 0x0

    .line 260
    .local v27, "posY":F
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v2

    neg-float v0, v2

    move/from16 v24, v0

    .line 262
    .local v24, "negY":F
    const/16 v22, 0x0

    .local v22, "k":I
    const/16 v18, 0x0

    .local v18, "idx":I
    :goto_b
    move-object/from16 v0, v29

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_13

    .line 264
    aget v32, v31, v18

    .line 267
    .local v32, "value":F
    const/4 v2, 0x0

    cmpl-float v2, v32, v2

    if-nez v2, :cond_11

    const/4 v2, 0x0

    cmpl-float v2, v27, v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    cmpl-float v2, v24, v2

    if-nez v2, :cond_11

    .line 269
    :cond_10
    move/from16 v35, v32

    .line 278
    .restart local v35    # "y":F
    :goto_c
    mul-float v2, v35, v25

    aput v2, v29, v22

    .line 262
    add-int/lit8 v22, v22, 0x2

    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 270
    .end local v35    # "y":F
    :cond_11
    const/4 v2, 0x0

    cmpl-float v2, v32, v2

    if-ltz v2, :cond_12

    .line 271
    add-float v27, v27, v32

    .line 272
    move/from16 v35, v27

    .restart local v35    # "y":F
    goto :goto_c

    .line 274
    .end local v35    # "y":F
    :cond_12
    move/from16 v35, v24

    .line 275
    .restart local v35    # "y":F
    sub-float v24, v24, v32

    goto :goto_c

    .line 281
    .end local v32    # "value":F
    .end local v35    # "y":F
    :cond_13
    invoke-virtual/range {v28 .. v29}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 283
    const/16 v22, 0x0

    :goto_d
    move-object/from16 v0, v29

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_b

    .line 285
    div-int/lit8 v2, v22, 0x2

    aget v30, v31, v2

    .line 286
    .restart local v30    # "val":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v15, v0, v14, v1, v2}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .restart local v4    # "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v2, v4}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v34, v0

    .line 290
    .restart local v34    # "valueTextWidth":F
    if-eqz v13, :cond_18

    move/from16 v26, v33

    .line 291
    :goto_e
    if-eqz v13, :cond_19

    add-float v2, v34, v33

    neg-float v0, v2

    move/from16 v23, v0

    .line 293
    :goto_f
    if-eqz v20, :cond_14

    .line 294
    move/from16 v0, v26

    neg-float v2, v0

    sub-float v26, v2, v34

    .line 295
    move/from16 v0, v23

    neg-float v2, v0

    sub-float v23, v2, v34

    .line 298
    :cond_14
    const/4 v2, 0x0

    cmpl-float v2, v30, v2

    if-nez v2, :cond_15

    const/4 v2, 0x0

    cmpl-float v2, v24, v2

    if-nez v2, :cond_15

    const/4 v2, 0x0

    cmpl-float v2, v27, v2

    if-gtz v2, :cond_16

    :cond_15
    const/4 v2, 0x0

    cmpg-float v2, v30, v2

    if-gez v2, :cond_1a

    :cond_16
    const/4 v12, 0x1

    .line 302
    .local v12, "drawBelow":Z
    :goto_10
    aget v3, v29, v22

    if-eqz v12, :cond_1b

    move/from16 v2, v23

    :goto_11
    add-float v5, v3, v2

    .line 304
    .local v5, "x":F
    iget-object v2, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v9, 0x3

    aget v3, v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v35, v2, v3

    .line 306
    .restart local v35    # "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 283
    :cond_17
    :goto_12
    add-int/lit8 v22, v22, 0x2

    goto :goto_d

    .line 290
    .end local v5    # "x":F
    .end local v12    # "drawBelow":Z
    .end local v35    # "y":F
    :cond_18
    add-float v2, v34, v33

    neg-float v0, v2

    move/from16 v26, v0

    goto :goto_e

    :cond_19
    move/from16 v23, v33

    .line 291
    goto :goto_f

    .line 298
    :cond_1a
    const/4 v12, 0x0

    goto :goto_10

    .restart local v12    # "drawBelow":Z
    :cond_1b
    move/from16 v2, v26

    .line 302
    goto :goto_11

    .line 312
    .restart local v5    # "x":F
    .restart local v35    # "y":F
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 315
    add-float v6, v35, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_12

    .line 319
    .end local v4    # "formattedValue":Ljava/lang/String;
    .end local v5    # "x":F
    .end local v12    # "drawBelow":Z
    .end local v18    # "idx":I
    .end local v22    # "k":I
    .end local v24    # "negY":F
    .end local v27    # "posY":F
    .end local v29    # "transformed":[F
    .end local v30    # "val":F
    .end local v34    # "valueTextWidth":F
    .end local v35    # "y":F
    :cond_1d
    move-object/from16 v0, v31

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v9, v2

    goto/16 :goto_a

    .line 325
    .end local v7    # "color":I
    .end local v8    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .end local v9    # "bufferIndex":I
    .end local v10    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .end local v11    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    .end local v13    # "drawValueAboveBar":Z
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v15    # "formatter":Lcom/github/mikephil/charting/formatter/IValueFormatter;
    .end local v16    # "halfTextHeight":F
    .end local v17    # "i":I
    .end local v19    # "index":I
    .end local v20    # "isInverted":Z
    .end local v23    # "negOffset":F
    .end local v25    # "phaseY":F
    .end local v26    # "posOffset":F
    .end local v28    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v31    # "vals":[F
    .end local v33    # "valueOffsetPlus":F
    :cond_1e
    return-void
.end method

.method public initBuffers()V
    .locals 8

    .prologue
    .line 41
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 42
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 45
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 46
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v5, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

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

    .line 47
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v6

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v7

    invoke-direct {v5, v3, v6, v7}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;-><init>(IIZ)V

    aput-object v5, v4, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 49
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_1
    return-void
.end method

.method protected isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z
    .locals 3
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;

    .prologue
    .line 352
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 353
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 352
    :goto_0
    return v0

    .line 353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "barWidthHalf"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 335
    sub-float v3, p1, p4

    .line 336
    .local v3, "top":F
    add-float v0, p1, p4

    .line 337
    .local v0, "bottom":F
    move v1, p2

    .line 338
    .local v1, "left":F
    move v2, p3

    .line 340
    .local v2, "right":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    invoke-virtual {p5, v4, v5}, Lcom/github/mikephil/charting/utils/Transformer;->rectToPixelPhaseHorizontal(Landroid/graphics/RectF;F)V

    .line 343
    return-void
.end method

.method protected setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .param p2, "bar"    # Landroid/graphics/RectF;

    .prologue
    .line 347
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 348
    return-void
.end method
