.class public Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "PieChartRenderer.java"


# instance fields
.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterTextLastBounds:Landroid/graphics/RectF;

.field private mCenterTextLastValue:Ljava/lang/CharSequence;

.field private mCenterTextLayout:Landroid/text/StaticLayout;

.field private mCenterTextPaint:Landroid/text/TextPaint;

.field protected mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field protected mDrawBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawCenterTextPathBuffer:Landroid/graphics/Path;

.field protected mDrawHighlightedRectF:Landroid/graphics/RectF;

.field private mEntryLabelsPaint:Landroid/graphics/Paint;

.field private mHoleCirclePath:Landroid/graphics/Path;

.field protected mHolePaint:Landroid/graphics/Paint;

.field private mInnerRectBuffer:Landroid/graphics/RectF;

.field private mPathBuffer:Landroid/graphics/Path;

.field private mRectBuffer:[Landroid/graphics/RectF;

.field protected mTransparentCirclePaint:Landroid/graphics/Paint;

.field protected mValueLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 6
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/PieChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/high16 v5, 0x41500000    # 13.0f

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    .line 151
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 618
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 661
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 734
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 73
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 95
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F
    .locals 20
    .param p1, "center"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p2, "radius"    # F
    .param p3, "angle"    # F
    .param p4, "arcStartPointX"    # F
    .param p5, "arcStartPointY"    # F
    .param p6, "startAngle"    # F
    .param p7, "sweepAngle"    # F

    .prologue
    .line 162
    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, p7, v11

    add-float v2, p6, v11

    .line 165
    .local v2, "angleMiddle":F
    move-object/from16 v0, p1

    iget v11, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v12, p6, p7

    const v13, 0x3c8efa35

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p2

    add-float v3, v11, v12

    .line 166
    .local v3, "arcEndPointX":F
    move-object/from16 v0, p1

    iget v11, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v12, p6, p7

    const v13, 0x3c8efa35

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p2

    add-float v4, v11, v12

    .line 169
    .local v4, "arcEndPointY":F
    move-object/from16 v0, p1

    iget v11, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v12, 0x3c8efa35

    mul-float/2addr v12, v2

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p2

    add-float v5, v11, v12

    .line 170
    .local v5, "arcMidPointX":F
    move-object/from16 v0, p1

    iget v11, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const v12, 0x3c8efa35

    mul-float/2addr v12, v2

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p2

    add-float v6, v11, v12

    .line 173
    .local v6, "arcMidPointY":F
    sub-float v11, v3, p4

    float-to-double v12, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 174
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-float v11, v4, p5

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 175
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    .line 173
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 180
    .local v8, "basePointsDistance":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    const-wide v14, 0x4066800000000000L    # 180.0

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    const-wide v16, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v14, v14, v16

    .line 181
    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v7, v12

    .line 184
    .local v7, "containedTriangleHeight":F
    sub-float v10, p2, v7

    .line 187
    .local v10, "spacedRadius":F
    float-to-double v12, v10

    add-float v11, v3, p4

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v11, v14

    sub-float v11, v5, v11

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 188
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-float v11, v4, p5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v11, v11, v16

    sub-float v11, v6, v11

    float-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    .line 189
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    .line 187
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    double-to-float v10, v12

    .line 191
    return v10
.end method

.method protected drawCenterText(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 670
    .local v3, "centerText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawCenterTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v13

    .line 673
    .local v13, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v17

    .line 675
    .local v17, "offset":Lcom/github/mikephil/charting/utils/MPPointF;
    iget v2, v13, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move-object/from16 v0, v17

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v21, v2, v4

    .line 676
    .local v21, "x":F
    iget v2, v13, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move-object/from16 v0, v17

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v22, v2, v4

    .line 678
    .local v22, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 679
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float v15, v2, v4

    .line 682
    .local v15, "innerRadius":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v14, v2, v4

    .line 683
    .local v14, "holeRect":Landroid/graphics/RectF;
    sub-float v2, v21, v15

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 684
    sub-float v2, v22, v15

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 685
    add-float v2, v21, v15

    iput v2, v14, Landroid/graphics/RectF;->right:F

    .line 686
    add-float v2, v22, v15

    iput v2, v14, Landroid/graphics/RectF;->bottom:F

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v12, v2, v4

    .line 688
    .local v12, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v12, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v19, v2, v4

    .line 691
    .local v19, "radiusPercent":F
    move/from16 v0, v19

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    .line 693
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v19

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 694
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v19

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 692
    invoke-virtual {v12, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 698
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v12, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 701
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 702
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v20

    .line 707
    .local v20, "width":F
    new-instance v2, Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v20

    float-to-double v8, v0

    .line 709
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v7, v8

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 714
    .end local v20    # "width":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 716
    .local v16, "layoutHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 717
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v2, v4, :cond_3

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    move-object/from16 v18, v0

    .line 719
    .local v18, "path":Landroid/graphics/Path;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 720
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 721
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 724
    .end local v18    # "path":Landroid/graphics/Path;
    :cond_3
    iget v2, v12, Landroid/graphics/RectF;->left:F

    iget v4, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v5, v5, v16

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 729
    invoke-static {v13}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 730
    invoke-static/range {v17 .. v17}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 732
    .end local v12    # "boundingRect":Landroid/graphics/RectF;
    .end local v13    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v14    # "holeRect":Landroid/graphics/RectF;
    .end local v15    # "innerRadius":F
    .end local v16    # "layoutHeight":F
    .end local v17    # "offset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v19    # "radiusPercent":F
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_4
    return-void

    .line 679
    .restart local v13    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v17    # "offset":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v21    # "x":F
    .restart local v22    # "y":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 680
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v15

    goto/16 :goto_0
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v4

    float-to-int v3, v4

    .line 126
    .local v3, "width":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v4

    float-to-int v0, v4

    .line 128
    .local v0, "height":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 130
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 132
    :cond_0
    if-lez v3, :cond_3

    if-lez v0, :cond_3

    .line 134
    new-instance v4, Ljava/lang/ref/WeakReference;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 135
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 142
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    .line 144
    .local v1, "pieData":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 146
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 147
    invoke-virtual {p0, p1, v2}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    goto :goto_0

    .line 149
    .end local v1    # "pieData":Lcom/github/mikephil/charting/data/PieData;
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    :cond_3
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 42
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .prologue
    .line 215
    const/4 v13, 0x0

    .line 216
    .local v13, "angle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v28

    .line 218
    .local v28, "rotationAngle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v26

    .line 219
    .local v26, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v27

    .line 221
    .local v27, "phaseY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v17

    .line 223
    .local v17, "circleBox":Landroid/graphics/RectF;
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v22

    .line 224
    .local v22, "entryCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v18

    .line 225
    .local v18, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v5

    .line 226
    .local v5, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    .line 227
    .local v6, "radius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v19, 0x1

    .line 228
    .local v19, "drawInnerArc":Z
    :goto_0
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 229
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v4, v7

    mul-float v36, v6, v4

    .line 232
    .local v36, "userInnerRadius":F
    :goto_1
    const/16 v37, 0x0

    .line 233
    .local v37, "visibleAngleCount":I
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 235
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    .line 236
    add-int/lit8 v37, v37, 0x1

    .line 233
    :cond_0
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 227
    .end local v19    # "drawInnerArc":Z
    .end local v24    # "j":I
    .end local v36    # "userInnerRadius":F
    .end local v37    # "visibleAngleCount":I
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 229
    .restart local v19    # "drawInnerArc":Z
    :cond_2
    const/16 v36, 0x0

    goto :goto_1

    .line 240
    .restart local v24    # "j":I
    .restart local v36    # "userInnerRadius":F
    .restart local v37    # "visibleAngleCount":I
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v37

    if-gt v0, v4, :cond_c

    const/16 v30, 0x0

    .line 242
    .local v30, "sliceSpace":F
    :goto_3
    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    .line 244
    aget v29, v18, v24

    .line 245
    .local v29, "sliceAngle":F
    move/from16 v23, v36

    .line 247
    .local v23, "innerRadius":F
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v20

    .line 250
    .local v20, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_b

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/charts/PieChart;->needsHighlight(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 254
    const/4 v4, 0x0

    cmpl-float v4, v30, v4

    if-lez v4, :cond_d

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v29, v4

    if-gtz v4, :cond_d

    const/4 v12, 0x1

    .line 256
    .local v12, "accountForSliceSpacing":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_e

    const/16 v32, 0x0

    .line 261
    .local v32, "sliceSpaceAngleOuter":F
    :goto_6
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v32, v4

    add-float/2addr v4, v13

    mul-float v4, v4, v27

    add-float v10, v28, v4

    .line 262
    .local v10, "startAngleOuter":F
    sub-float v4, v29, v32

    mul-float v11, v4, v27

    .line 263
    .local v11, "sweepAngleOuter":F
    const/4 v4, 0x0

    cmpg-float v4, v11, v4

    if-gez v4, :cond_4

    .line 264
    const/4 v11, 0x0

    .line 267
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 269
    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v10

    float-to-double v0, v7

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v7, v0

    mul-float/2addr v7, v6

    add-float v8, v4, v7

    .line 270
    .local v8, "arcStartPointX":F
    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v10

    float-to-double v0, v7

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v7, v0

    mul-float/2addr v7, v6

    add-float v9, v4, v7

    .line 272
    .local v9, "arcStartPointY":F
    const/high16 v4, 0x43b40000    # 360.0f

    cmpl-float v4, v11, v4

    if-ltz v4, :cond_f

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_f

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v38, v0

    sget-object v39, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v7, v0, v6, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 287
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float v7, v7, v23

    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v38, v0

    sub-float v38, v38, v23

    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move/from16 v39, v0

    add-float v39, v39, v23

    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v40, v0

    add-float v40, v40, v23

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 293
    if-eqz v19, :cond_12

    const/4 v4, 0x0

    cmpl-float v4, v23, v4

    if-gtz v4, :cond_5

    if-eqz v12, :cond_12

    .line 296
    :cond_5
    if-eqz v12, :cond_7

    .line 297
    mul-float v7, v29, v27

    move-object/from16 v4, p0

    .line 298
    invoke-virtual/range {v4 .. v11}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v25

    .line 305
    .local v25, "minSpacedRadius":F
    const/4 v4, 0x0

    cmpg-float v4, v25, v4

    if-gez v4, :cond_6

    .line 306
    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    .line 308
    :cond_6
    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 311
    .end local v25    # "minSpacedRadius":F
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v37

    if-eq v0, v4, :cond_8

    const/4 v4, 0x0

    cmpl-float v4, v23, v4

    if-nez v4, :cond_10

    :cond_8
    const/16 v31, 0x0

    .line 314
    .local v31, "sliceSpaceAngleInner":F
    :goto_8
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v31, v4

    add-float/2addr v4, v13

    mul-float v4, v4, v27

    add-float v34, v28, v4

    .line 315
    .local v34, "startAngleInner":F
    sub-float v4, v29, v31

    mul-float v35, v4, v27

    .line 316
    .local v35, "sweepAngleInner":F
    const/4 v4, 0x0

    cmpg-float v4, v35, v4

    if-gez v4, :cond_9

    .line 317
    const/16 v35, 0x0

    .line 319
    :cond_9
    add-float v21, v34, v35

    .line 321
    .local v21, "endAngleInner":F
    const/high16 v4, 0x43b40000    # 360.0f

    cmpl-float v4, v11, v4

    if-ltz v4, :cond_11

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_11

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v38, v0

    sget-object v39, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v0, v38

    move/from16 v1, v23

    move-object/from16 v2, v39

    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 371
    .end local v21    # "endAngleInner":F
    .end local v31    # "sliceSpaceAngleInner":F
    .end local v34    # "startAngleInner":F
    .end local v35    # "sweepAngleInner":F
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 377
    .end local v8    # "arcStartPointX":F
    .end local v9    # "arcStartPointY":F
    .end local v10    # "startAngleOuter":F
    .end local v11    # "sweepAngleOuter":F
    .end local v12    # "accountForSliceSpacing":Z
    .end local v32    # "sliceSpaceAngleOuter":F
    :cond_b
    mul-float v4, v29, v26

    add-float/2addr v13, v4

    .line 242
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 240
    .end local v20    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v23    # "innerRadius":F
    .end local v29    # "sliceAngle":F
    .end local v30    # "sliceSpace":F
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v30

    goto/16 :goto_3

    .line 254
    .restart local v20    # "e":Lcom/github/mikephil/charting/data/Entry;
    .restart local v23    # "innerRadius":F
    .restart local v29    # "sliceAngle":F
    .restart local v30    # "sliceSpace":F
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 258
    .restart local v12    # "accountForSliceSpacing":Z
    :cond_e
    const v4, 0x3c8efa35

    mul-float/2addr v4, v6

    div-float v32, v30, v4

    goto/16 :goto_6

    .line 277
    .restart local v8    # "arcStartPointX":F
    .restart local v9    # "arcStartPointY":F
    .restart local v10    # "startAngleOuter":F
    .restart local v11    # "sweepAngleOuter":F
    .restart local v32    # "sliceSpaceAngleOuter":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_7

    .line 311
    :cond_10
    const v4, 0x3c8efa35

    mul-float v4, v4, v23

    div-float v31, v30, v4

    goto/16 :goto_8

    .line 326
    .restart local v21    # "endAngleInner":F
    .restart local v31    # "sliceSpaceAngleInner":F
    .restart local v34    # "startAngleInner":F
    .restart local v35    # "sweepAngleInner":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v38, 0x3c8efa35

    mul-float v38, v38, v21

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    .line 327
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v23

    add-float v7, v7, v38

    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v38, v0

    const v39, 0x3c8efa35

    mul-float v39, v39, v21

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v40, v0

    .line 328
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v23

    add-float v38, v38, v39

    .line 326
    move/from16 v0, v38

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v21

    move/from16 v1, v38

    invoke-virtual {v4, v7, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_9

    .line 338
    .end local v21    # "endAngleInner":F
    .end local v31    # "sliceSpaceAngleInner":F
    .end local v34    # "startAngleInner":F
    .end local v35    # "sweepAngleInner":F
    :cond_12
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_a

    .line 339
    if-eqz v12, :cond_13

    .line 341
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    add-float v14, v10, v4

    .line 343
    .local v14, "angleMiddle":F
    mul-float v7, v29, v27

    move-object/from16 v4, p0

    .line 344
    invoke-virtual/range {v4 .. v11}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v33

    .line 353
    .local v33, "sliceSpaceOffset":F
    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v14

    float-to-double v0, v7

    move-wide/from16 v38, v0

    .line 354
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v7, v0

    mul-float v7, v7, v33

    add-float v15, v4, v7

    .line 355
    .local v15, "arcEndPointX":F
    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v14

    float-to-double v0, v7

    move-wide/from16 v38, v0

    .line 356
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v7, v0

    mul-float v7, v7, v33

    add-float v16, v4, v7

    .line 358
    .local v16, "arcEndPointY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 363
    .end local v14    # "angleMiddle":F
    .end local v15    # "arcEndPointX":F
    .end local v16    # "arcEndPointY":F
    .end local v33    # "sliceSpaceOffset":F
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 380
    .end local v8    # "arcStartPointX":F
    .end local v9    # "arcStartPointY":F
    .end local v10    # "startAngleOuter":F
    .end local v11    # "sweepAngleOuter":F
    .end local v12    # "accountForSliceSpacing":Z
    .end local v20    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v23    # "innerRadius":F
    .end local v29    # "sliceAngle":F
    .end local v32    # "sliceSpaceAngleOuter":F
    :cond_14
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 381
    return-void
.end method

.method protected drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 607
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 608
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 613
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawHole(Landroid/graphics/Canvas;)V

    .line 614
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 615
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawCenterText(Landroid/graphics/Canvas;)V

    .line 616
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 48
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v29

    .line 739
    .local v29, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v30

    .line 742
    .local v30, "phaseY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v31

    .line 744
    .local v31, "rotationAngle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v18

    .line 745
    .local v18, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v12

    .line 746
    .local v12, "absoluteAngles":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v5

    .line 747
    .local v5, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    .line 748
    .local v6, "radius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v19, 0x1

    .line 749
    .local v19, "drawInnerArc":Z
    :goto_0
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 750
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v4, v7

    mul-float v44, v6, v4

    .line 753
    .local v44, "userInnerRadius":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    .line 754
    .local v22, "highlightedCircleBox":Landroid/graphics/RectF;
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 756
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v4, v0

    move/from16 v0, v24

    if-ge v0, v4, :cond_19

    .line 759
    aget-object v4, p2, v24

    invoke-virtual {v4}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v4

    float-to-int v0, v4

    move/from16 v25, v0

    .line 761
    .local v25, "index":I
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v25

    if-lt v0, v4, :cond_3

    .line 756
    :cond_0
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 748
    .end local v19    # "drawInnerArc":Z
    .end local v22    # "highlightedCircleBox":Landroid/graphics/RectF;
    .end local v24    # "i":I
    .end local v25    # "index":I
    .end local v44    # "userInnerRadius":F
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 750
    .restart local v19    # "drawInnerArc":Z
    :cond_2
    const/16 v44, 0x0

    goto :goto_1

    .line 764
    .restart local v22    # "highlightedCircleBox":Landroid/graphics/RectF;
    .restart local v24    # "i":I
    .restart local v25    # "index":I
    .restart local v44    # "userInnerRadius":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/PieData;

    aget-object v7, p2, v24

    .line 766
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v7

    .line 765
    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v32

    .line 768
    .local v32, "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    if-eqz v32, :cond_0

    invoke-interface/range {v32 .. v32}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isHighlightEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 771
    invoke-interface/range {v32 .. v32}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v21

    .line 772
    .local v21, "entryCount":I
    const/16 v45, 0x0

    .line 773
    .local v45, "visibleAngleCount":I
    const/16 v27, 0x0

    .local v27, "j":I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 775
    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4

    .line 776
    add-int/lit8 v45, v45, 0x1

    .line 773
    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 780
    :cond_5
    if-nez v25, :cond_f

    .line 781
    const/4 v14, 0x0

    .line 785
    .local v14, "angle":F
    :goto_5
    const/4 v4, 0x1

    move/from16 v0, v45

    if-gt v0, v4, :cond_10

    const/16 v35, 0x0

    .line 787
    .local v35, "sliceSpace":F
    :goto_6
    aget v34, v18, v25

    .line 788
    .local v34, "sliceAngle":F
    move/from16 v26, v44

    .line 790
    .local v26, "innerRadius":F
    invoke-interface/range {v32 .. v32}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSelectionShift()F

    move-result v33

    .line 791
    .local v33, "shift":F
    add-float v23, v6, v33

    .line 792
    .local v23, "highlightedRadius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 793
    move/from16 v0, v33

    neg-float v4, v0

    move/from16 v0, v33

    neg-float v7, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 795
    const/4 v4, 0x0

    cmpl-float v4, v35, v4

    if-lez v4, :cond_11

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v34, v4

    if-gtz v4, :cond_11

    const/4 v13, 0x1

    .line 797
    .local v13, "accountForSliceSpacing":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 799
    const/4 v4, 0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_12

    const/16 v37, 0x0

    .line 803
    .local v37, "sliceSpaceAngleOuter":F
    :goto_8
    const/4 v4, 0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_13

    const/16 v38, 0x0

    .line 807
    .local v38, "sliceSpaceAngleShifted":F
    :goto_9
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v37, v4

    add-float/2addr v4, v14

    mul-float v4, v4, v30

    add-float v10, v31, v4

    .line 808
    .local v10, "startAngleOuter":F
    sub-float v4, v34, v37

    mul-float v11, v4, v30

    .line 809
    .local v11, "sweepAngleOuter":F
    const/4 v4, 0x0

    cmpg-float v4, v11, v4

    if-gez v4, :cond_6

    .line 810
    const/4 v11, 0x0

    .line 813
    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v38, v4

    add-float/2addr v4, v14

    mul-float v4, v4, v30

    add-float v41, v31, v4

    .line 814
    .local v41, "startAngleShifted":F
    sub-float v4, v34, v38

    mul-float v43, v4, v30

    .line 815
    .local v43, "sweepAngleShifted":F
    const/4 v4, 0x0

    cmpg-float v4, v43, v4

    if-gez v4, :cond_7

    .line 816
    const/16 v43, 0x0

    .line 819
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 821
    const/high16 v4, 0x43b40000    # 360.0f

    cmpl-float v4, v11, v4

    if-ltz v4, :cond_14

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_14

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v23

    invoke-virtual {v4, v7, v8, v0, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 837
    :goto_a
    const/16 v39, 0x0

    .line 838
    .local v39, "sliceSpaceRadius":F
    if-eqz v13, :cond_8

    .line 839
    mul-float v7, v34, v30

    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v8, 0x3c8efa35

    mul-float/2addr v8, v10

    float-to-double v8, v8

    .line 843
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v4

    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const v9, 0x3c8efa35

    mul-float/2addr v9, v10

    float-to-double v0, v9

    move-wide/from16 v46, v0

    .line 844
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v9, v0

    mul-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v4, p0

    .line 840
    invoke-virtual/range {v4 .. v11}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v39

    .line 850
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float v7, v7, v26

    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float v8, v8, v26

    iget v9, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v9, v9, v26

    iget v0, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v46, v0

    add-float v46, v46, v26

    move/from16 v0, v46

    invoke-virtual {v4, v7, v8, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 856
    if-eqz v19, :cond_17

    const/4 v4, 0x0

    cmpl-float v4, v26, v4

    if-gtz v4, :cond_9

    if-eqz v13, :cond_17

    .line 859
    :cond_9
    if-eqz v13, :cond_b

    .line 860
    move/from16 v28, v39

    .line 862
    .local v28, "minSpacedRadius":F
    const/4 v4, 0x0

    cmpg-float v4, v28, v4

    if-gez v4, :cond_a

    .line 863
    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v28, v0

    .line 865
    :cond_a
    move/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v26

    .line 868
    .end local v28    # "minSpacedRadius":F
    :cond_b
    const/4 v4, 0x1

    move/from16 v0, v45

    if-eq v0, v4, :cond_c

    const/4 v4, 0x0

    cmpl-float v4, v26, v4

    if-nez v4, :cond_15

    :cond_c
    const/16 v36, 0x0

    .line 871
    .local v36, "sliceSpaceAngleInner":F
    :goto_b
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v36, v4

    add-float/2addr v4, v14

    mul-float v4, v4, v30

    add-float v40, v31, v4

    .line 872
    .local v40, "startAngleInner":F
    sub-float v4, v34, v36

    mul-float v42, v4, v30

    .line 873
    .local v42, "sweepAngleInner":F
    const/4 v4, 0x0

    cmpg-float v4, v42, v4

    if-gez v4, :cond_d

    .line 874
    const/16 v42, 0x0

    .line 876
    :cond_d
    add-float v20, v40, v42

    .line 878
    .local v20, "endAngleInner":F
    const/high16 v4, 0x43b40000    # 360.0f

    cmpl-float v4, v11, v4

    if-ltz v4, :cond_16

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_16

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v0, v26

    invoke-virtual {v4, v7, v8, v0, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 920
    .end local v20    # "endAngleInner":F
    .end local v36    # "sliceSpaceAngleInner":F
    .end local v40    # "startAngleInner":F
    .end local v42    # "sweepAngleInner":F
    :cond_e
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 783
    .end local v10    # "startAngleOuter":F
    .end local v11    # "sweepAngleOuter":F
    .end local v13    # "accountForSliceSpacing":Z
    .end local v14    # "angle":F
    .end local v23    # "highlightedRadius":F
    .end local v26    # "innerRadius":F
    .end local v33    # "shift":F
    .end local v34    # "sliceAngle":F
    .end local v35    # "sliceSpace":F
    .end local v37    # "sliceSpaceAngleOuter":F
    .end local v38    # "sliceSpaceAngleShifted":F
    .end local v39    # "sliceSpaceRadius":F
    .end local v41    # "startAngleShifted":F
    .end local v43    # "sweepAngleShifted":F
    :cond_f
    add-int/lit8 v4, v25, -0x1

    aget v4, v12, v4

    mul-float v14, v4, v29

    .restart local v14    # "angle":F
    goto/16 :goto_5

    .line 785
    :cond_10
    invoke-interface/range {v32 .. v32}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v35

    goto/16 :goto_6

    .line 795
    .restart local v23    # "highlightedRadius":F
    .restart local v26    # "innerRadius":F
    .restart local v33    # "shift":F
    .restart local v34    # "sliceAngle":F
    .restart local v35    # "sliceSpace":F
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 799
    .restart local v13    # "accountForSliceSpacing":Z
    :cond_12
    const v4, 0x3c8efa35

    mul-float/2addr v4, v6

    div-float v37, v35, v4

    goto/16 :goto_8

    .line 803
    .restart local v37    # "sliceSpaceAngleOuter":F
    :cond_13
    const v4, 0x3c8efa35

    mul-float v4, v4, v23

    div-float v38, v35, v4

    goto/16 :goto_9

    .line 826
    .restart local v10    # "startAngleOuter":F
    .restart local v11    # "sweepAngleOuter":F
    .restart local v38    # "sliceSpaceAngleShifted":F
    .restart local v41    # "startAngleShifted":F
    .restart local v43    # "sweepAngleShifted":F
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v8, 0x3c8efa35

    mul-float v8, v8, v41

    float-to-double v8, v8

    .line 827
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v23

    add-float/2addr v7, v8

    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const v9, 0x3c8efa35

    mul-float v9, v9, v41

    float-to-double v0, v9

    move-wide/from16 v46, v0

    .line 828
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v9, v0

    mul-float v9, v9, v23

    add-float/2addr v8, v9

    .line 826
    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, v22

    move/from16 v1, v41

    move/from16 v2, v43

    invoke-virtual {v4, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_a

    .line 868
    .restart local v39    # "sliceSpaceRadius":F
    :cond_15
    const v4, 0x3c8efa35

    mul-float v4, v4, v26

    div-float v36, v35, v4

    goto/16 :goto_b

    .line 883
    .restart local v20    # "endAngleInner":F
    .restart local v36    # "sliceSpaceAngleInner":F
    .restart local v40    # "startAngleInner":F
    .restart local v42    # "sweepAngleInner":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v8, 0x3c8efa35

    mul-float v8, v8, v20

    float-to-double v8, v8

    .line 884
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v26

    add-float/2addr v7, v8

    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const v9, 0x3c8efa35

    mul-float v9, v9, v20

    float-to-double v0, v9

    move-wide/from16 v46, v0

    .line 885
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v9, v0

    mul-float v9, v9, v26

    add-float/2addr v8, v9

    .line 883
    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    move/from16 v0, v42

    neg-float v8, v0

    move/from16 v0, v20

    invoke-virtual {v4, v7, v0, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_c

    .line 895
    .end local v20    # "endAngleInner":F
    .end local v36    # "sliceSpaceAngleInner":F
    .end local v40    # "startAngleInner":F
    .end local v42    # "sweepAngleInner":F
    :cond_17
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_e

    .line 897
    if-eqz v13, :cond_18

    .line 898
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    add-float v15, v10, v4

    .line 900
    .local v15, "angleMiddle":F
    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v15

    float-to-double v8, v7

    .line 901
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float v7, v7, v39

    add-float v16, v4, v7

    .line 902
    .local v16, "arcEndPointX":F
    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v15

    float-to-double v8, v7

    .line 903
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float v7, v7, v39

    add-float v17, v4, v7

    .line 905
    .local v17, "arcEndPointY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 911
    .end local v15    # "angleMiddle":F
    .end local v16    # "arcEndPointX":F
    .end local v17    # "arcEndPointY":F
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 925
    .end local v10    # "startAngleOuter":F
    .end local v11    # "sweepAngleOuter":F
    .end local v13    # "accountForSliceSpacing":Z
    .end local v14    # "angle":F
    .end local v21    # "entryCount":I
    .end local v23    # "highlightedRadius":F
    .end local v25    # "index":I
    .end local v26    # "innerRadius":F
    .end local v27    # "j":I
    .end local v32    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v33    # "shift":F
    .end local v34    # "sliceAngle":F
    .end local v35    # "sliceSpace":F
    .end local v37    # "sliceSpaceAngleOuter":F
    .end local v38    # "sliceSpaceAngleShifted":F
    .end local v39    # "sliceSpaceRadius":F
    .end local v41    # "startAngleShifted":F
    .end local v43    # "sweepAngleShifted":F
    .end local v45    # "visibleAngleCount":I
    :cond_19
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 926
    return-void
.end method

.method protected drawHole(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    .line 626
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    if-eqz v5, :cond_2

    .line 628
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v3

    .line 629
    .local v3, "radius":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v5

    div-float/2addr v5, v9

    mul-float v2, v3, v5

    .line 630
    .local v2, "holeRadius":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v1

    .line 632
    .local v1, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-lez v5, :cond_0

    .line 634
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v6, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v7, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 640
    :cond_0
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 641
    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v5

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 643
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 644
    .local v0, "alpha":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v5

    div-float/2addr v5, v9

    mul-float v4, v3, v5

    .line 646
    .local v4, "secondHoleRadius":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    int-to-float v6, v0

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 649
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 650
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v6, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v7, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 651
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v6, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v7, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 652
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 655
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 657
    .end local v0    # "alpha":I
    .end local v4    # "secondHoleRadius":F
    :cond_1
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 659
    .end local v1    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v2    # "holeRadius":F
    .end local v3    # "radius":F
    :cond_2
    return-void
.end method

.method protected drawRoundedSlices(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 935
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v15

    if-nez v15, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v15

    check-cast v15, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v5

    .line 940
    .local v5, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 943
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    .line 944
    .local v9, "phaseX":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 946
    .local v10, "phaseY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v3

    .line 947
    .local v3, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v11

    .line 950
    .local v11, "r":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v15

    mul-float/2addr v15, v11

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v15, v16

    .line 952
    .local v4, "circleRadius":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v6

    .line 953
    .local v6, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v2

    .line 955
    .local v2, "angle":F
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v15

    if-ge v8, v15, :cond_3

    .line 957
    aget v12, v6, v8

    .line 959
    .local v12, "sliceAngle":F
    invoke-interface {v5, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    .line 962
    .local v7, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sget v16, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    .line 964
    sub-float v15, v11, v4

    float-to-double v0, v15

    move-wide/from16 v16, v0

    add-float v15, v2, v12

    mul-float/2addr v15, v10

    float-to-double v0, v15

    move-wide/from16 v18, v0

    .line 965
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget v15, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 967
    .local v13, "x":F
    sub-float v15, v11, v4

    float-to-double v0, v15

    move-wide/from16 v16, v0

    add-float v15, v2, v12

    mul-float/2addr v15, v10

    float-to-double v0, v15

    move-wide/from16 v18, v0

    .line 968
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget v15, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 971
    .local v14, "y":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v5, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v14, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 975
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_2
    mul-float v15, v12, v9

    add-float/2addr v2, v15

    .line 955
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 977
    .end local v7    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v12    # "sliceAngle":F
    :cond_3
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto/16 :goto_0
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 80
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v42

    .line 389
    .local v42, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v65

    .line 390
    .local v65, "radius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v66

    .line 391
    .local v66, "rotationAngle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v46

    .line 392
    .local v46, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v39

    .line 394
    .local v39, "absoluteAngles":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v62

    .line 395
    .local v62, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v63

    .line 397
    .local v63, "phaseY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v54, v4, v9

    .line 398
    .local v54, "holeRadiusPercent":F
    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, v65, v4

    const v9, 0x40666666    # 3.6f

    mul-float v58, v4, v9

    .line 400
    .local v58, "labelRadiusOffset":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    mul-float v4, v65, v54

    sub-float v4, v65, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v58, v4, v9

    .line 404
    :cond_0
    sub-float v57, v65, v58

    .line 406
    .local v57, "labelRadius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v43

    check-cast v43, Lcom/github/mikephil/charting/data/PieData;

    .line 407
    .local v43, "data":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual/range {v43 .. v43}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v45

    .line 409
    .local v45, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    invoke-virtual/range {v43 .. v43}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v79

    .line 411
    .local v79, "yValueSum":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawEntryLabelsEnabled()Z

    move-result v47

    .line 414
    .local v47, "drawEntryLabels":Z
    const/16 v76, 0x0

    .line 416
    .local v76, "xIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 418
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v61

    .line 420
    .local v61, "offset":F
    const/16 v55, 0x0

    .local v55, "i":I
    :goto_0
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v55

    if-ge v0, v4, :cond_17

    .line 422
    move-object/from16 v0, v45

    move/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 424
    .local v44, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawValuesEnabled()Z

    move-result v48

    .line 426
    .local v48, "drawValues":Z
    if-nez v48, :cond_2

    if-nez v47, :cond_2

    .line 420
    :cond_1
    add-int/lit8 v55, v55, 0x1

    goto :goto_0

    .line 429
    :cond_2
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getXValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v77

    .line 430
    .local v77, "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v78

    .line 433
    .local v78, "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v9, "Q"

    invoke-static {v4, v9}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x40800000    # 4.0f

    .line 436
    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v9

    add-float v60, v4, v9

    .line 438
    .local v60, "lineHeight":F
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v16

    .line 440
    .local v16, "formatter":Lcom/github/mikephil/charting/formatter/IValueFormatter;
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v53

    .line 442
    .local v53, "entryCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineWidth()F

    move-result v9

    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v68

    .line 447
    .local v68, "sliceSpace":F
    const/16 v56, 0x0

    .local v56, "j":I
    :goto_1
    move/from16 v0, v56

    move/from16 v1, v53

    if-ge v0, v1, :cond_1

    .line 449
    move-object/from16 v0, v44

    move/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v18

    check-cast v18, Lcom/github/mikephil/charting/data/PieEntry;

    .line 451
    .local v18, "entry":Lcom/github/mikephil/charting/data/PieEntry;
    if-nez v76, :cond_9

    .line 452
    const/16 v40, 0x0

    .line 456
    .local v40, "angle":F
    :goto_2
    aget v67, v46, v76

    .line 457
    .local v67, "sliceAngle":F
    const v4, 0x3c8efa35

    mul-float v4, v4, v57

    div-float v69, v68, v4

    .line 460
    .local v69, "sliceSpaceMiddleAngle":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v69, v4

    sub-float v4, v67, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v41, v4, v9

    .line 462
    .local v41, "angleOffset":F
    add-float v40, v40, v41

    .line 464
    mul-float v4, v40, v63

    add-float v72, v66, v4

    .line 466
    .local v72, "transformedAngle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v4

    div-float v4, v4, v79

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v17, v4, v9

    .line 469
    .local v17, "value":F
    :goto_3
    const v4, 0x3c8efa35

    mul-float v4, v4, v72

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v0, v10

    move/from16 v70, v0

    .line 470
    .local v70, "sliceXBase":F
    const v4, 0x3c8efa35

    mul-float v4, v4, v72

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v0, v10

    move/from16 v71, v0

    .line 472
    .local v71, "sliceYBase":F
    if-eqz v47, :cond_b

    sget-object v4, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-object/from16 v0, v77

    if-ne v0, v4, :cond_b

    const/16 v50, 0x1

    .line 474
    .local v50, "drawXOutside":Z
    :goto_4
    if-eqz v48, :cond_c

    sget-object v4, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-object/from16 v0, v78

    if-ne v0, v4, :cond_c

    const/16 v52, 0x1

    .line 476
    .local v52, "drawYOutside":Z
    :goto_5
    if-eqz v47, :cond_d

    sget-object v4, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-object/from16 v0, v77

    if-ne v0, v4, :cond_d

    const/16 v49, 0x1

    .line 478
    .local v49, "drawXInside":Z
    :goto_6
    if-eqz v48, :cond_e

    sget-object v4, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-object/from16 v0, v78

    if-ne v0, v4, :cond_e

    const/16 v51, 0x1

    .line 481
    .local v51, "drawYInside":Z
    :goto_7
    if-nez v50, :cond_3

    if-eqz v52, :cond_6

    .line 483
    :cond_3
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1Length()F

    move-result v73

    .line 484
    .local v73, "valueLineLength1":F
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart2Length()F

    move-result v74

    .line 485
    .local v74, "valueLineLength2":F
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1OffsetPercentage()F

    move-result v4

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v75, v4, v9

    .line 492
    .local v75, "valueLinePart1OffsetPercentage":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 493
    mul-float v4, v65, v54

    sub-float v4, v65, v4

    mul-float v4, v4, v75

    mul-float v9, v65, v54

    add-float v59, v4, v9

    .line 499
    .local v59, "line1Radius":F
    :goto_8
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isValueLineVariableLength()Z

    move-result v4

    if-eqz v4, :cond_10

    mul-float v4, v57, v74

    const v9, 0x3c8efa35

    mul-float v9, v9, v72

    float-to-double v10, v9

    .line 500
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float v64, v4, v9

    .line 504
    .local v64, "polyline2Width":F
    :goto_9
    mul-float v4, v59, v70

    move-object/from16 v0, v42

    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v5, v4, v9

    .line 505
    .local v5, "pt0x":F
    mul-float v4, v59, v71

    move-object/from16 v0, v42

    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v6, v4, v9

    .line 507
    .local v6, "pt0y":F
    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v4, v73

    mul-float v4, v4, v57

    mul-float v4, v4, v70

    move-object/from16 v0, v42

    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v7, v4, v9

    .line 508
    .local v7, "pt1x":F
    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v4, v73

    mul-float v4, v4, v57

    mul-float v4, v4, v71

    move-object/from16 v0, v42

    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v8, v4, v9

    .line 510
    .local v8, "pt1y":F
    move/from16 v0, v72

    float-to-double v10, v0

    const-wide v14, 0x4076800000000000L    # 360.0

    rem-double/2addr v10, v14

    const-wide v14, 0x4056800000000000L    # 90.0

    cmpl-double v4, v10, v14

    if-ltz v4, :cond_11

    move/from16 v0, v72

    float-to-double v10, v0

    const-wide v14, 0x4076800000000000L    # 360.0

    rem-double/2addr v10, v14

    const-wide v14, 0x4070e00000000000L    # 270.0

    cmpg-double v4, v10, v14

    if-gtz v4, :cond_11

    .line 511
    sub-float v12, v7, v64

    .line 512
    .local v12, "pt2x":F
    move v13, v8

    .line 514
    .local v13, "pt2y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 516
    if-eqz v50, :cond_4

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 519
    :cond_4
    sub-float v20, v12, v61

    .line 520
    .local v20, "labelPtx":F
    move/from16 v21, v13

    .line 533
    .local v21, "labelPty":F
    :goto_a
    invoke-interface/range {v44 .. v44}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v4

    const v9, 0x112233

    if-eq v4, v9, :cond_5

    .line 534
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v7

    move v11, v8

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 539
    :cond_5
    if-eqz v50, :cond_13

    if-eqz v52, :cond_13

    .line 541
    const/16 v19, 0x0

    .line 548
    move-object/from16 v0, v44

    move/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v22

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 541
    invoke-virtual/range {v14 .. v22}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 550
    invoke-virtual/range {v43 .. v43}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v4

    move/from16 v0, v56

    if-ge v0, v4, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 551
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    add-float v9, v21, v60

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v4, v2, v9}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 565
    .end local v5    # "pt0x":F
    .end local v6    # "pt0y":F
    .end local v7    # "pt1x":F
    .end local v8    # "pt1y":F
    .end local v12    # "pt2x":F
    .end local v13    # "pt2y":F
    .end local v20    # "labelPtx":F
    .end local v21    # "labelPty":F
    .end local v59    # "line1Radius":F
    .end local v64    # "polyline2Width":F
    .end local v73    # "valueLineLength1":F
    .end local v74    # "valueLineLength2":F
    .end local v75    # "valueLinePart1OffsetPercentage":F
    :cond_6
    :goto_b
    if-nez v49, :cond_7

    if-eqz v51, :cond_8

    .line 567
    :cond_7
    mul-float v4, v57, v70

    move-object/from16 v0, v42

    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v28, v4, v9

    .line 568
    .local v28, "x":F
    mul-float v4, v57, v71

    move-object/from16 v0, v42

    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v29, v4, v9

    .line 570
    .local v29, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 573
    if-eqz v49, :cond_15

    if-eqz v51, :cond_15

    .line 575
    const/16 v27, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v30

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v16

    move/from16 v25, v17

    move-object/from16 v26, v18

    invoke-virtual/range {v22 .. v30}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 577
    invoke-virtual/range {v43 .. v43}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v4

    move/from16 v0, v56

    if-ge v0, v4, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 578
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    add-float v9, v29, v60

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v4, v2, v9}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 591
    .end local v28    # "x":F
    .end local v29    # "y":F
    :cond_8
    :goto_c
    add-int/lit8 v76, v76, 0x1

    .line 447
    add-int/lit8 v56, v56, 0x1

    goto/16 :goto_1

    .line 454
    .end local v17    # "value":F
    .end local v40    # "angle":F
    .end local v41    # "angleOffset":F
    .end local v49    # "drawXInside":Z
    .end local v50    # "drawXOutside":Z
    .end local v51    # "drawYInside":Z
    .end local v52    # "drawYOutside":Z
    .end local v67    # "sliceAngle":F
    .end local v69    # "sliceSpaceMiddleAngle":F
    .end local v70    # "sliceXBase":F
    .end local v71    # "sliceYBase":F
    .end local v72    # "transformedAngle":F
    :cond_9
    add-int/lit8 v4, v76, -0x1

    aget v4, v39, v4

    mul-float v40, v4, v62

    .restart local v40    # "angle":F
    goto/16 :goto_2

    .line 467
    .restart local v41    # "angleOffset":F
    .restart local v67    # "sliceAngle":F
    .restart local v69    # "sliceSpaceMiddleAngle":F
    .restart local v72    # "transformedAngle":F
    :cond_a
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v17

    goto/16 :goto_3

    .line 472
    .restart local v17    # "value":F
    .restart local v70    # "sliceXBase":F
    .restart local v71    # "sliceYBase":F
    :cond_b
    const/16 v50, 0x0

    goto/16 :goto_4

    .line 474
    .restart local v50    # "drawXOutside":Z
    :cond_c
    const/16 v52, 0x0

    goto/16 :goto_5

    .line 476
    .restart local v52    # "drawYOutside":Z
    :cond_d
    const/16 v49, 0x0

    goto/16 :goto_6

    .line 478
    .restart local v49    # "drawXInside":Z
    :cond_e
    const/16 v51, 0x0

    goto/16 :goto_7

    .line 497
    .restart local v51    # "drawYInside":Z
    .restart local v73    # "valueLineLength1":F
    .restart local v74    # "valueLineLength2":F
    .restart local v75    # "valueLinePart1OffsetPercentage":F
    :cond_f
    mul-float v59, v65, v75

    .restart local v59    # "line1Radius":F
    goto/16 :goto_8

    .line 500
    :cond_10
    mul-float v64, v57, v74

    goto/16 :goto_9

    .line 522
    .restart local v5    # "pt0x":F
    .restart local v6    # "pt0y":F
    .restart local v7    # "pt1x":F
    .restart local v8    # "pt1y":F
    .restart local v64    # "polyline2Width":F
    :cond_11
    add-float v12, v7, v64

    .line 523
    .restart local v12    # "pt2x":F
    move v13, v8

    .line 524
    .restart local v13    # "pt2y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 526
    if-eqz v50, :cond_12

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 529
    :cond_12
    add-float v20, v12, v61

    .line 530
    .restart local v20    # "labelPtx":F
    move/from16 v21, v13

    .restart local v21    # "labelPty":F
    goto/16 :goto_a

    .line 554
    :cond_13
    if-eqz v50, :cond_14

    .line 555
    invoke-virtual/range {v43 .. v43}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v4

    move/from16 v0, v56

    if-ge v0, v4, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 556
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v60, v9

    add-float v9, v9, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v4, v2, v9}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto/16 :goto_b

    .line 558
    :cond_14
    if-eqz v52, :cond_6

    .line 560
    const/16 v27, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v60, v4

    add-float v29, v21, v4

    .line 561
    move-object/from16 v0, v44

    move/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v30

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v16

    move/from16 v25, v17

    move-object/from16 v26, v18

    move/from16 v28, v20

    .line 560
    invoke-virtual/range {v22 .. v30}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto/16 :goto_b

    .line 581
    .end local v5    # "pt0x":F
    .end local v6    # "pt0y":F
    .end local v7    # "pt1x":F
    .end local v8    # "pt1y":F
    .end local v12    # "pt2x":F
    .end local v13    # "pt2y":F
    .end local v20    # "labelPtx":F
    .end local v21    # "labelPty":F
    .end local v59    # "line1Radius":F
    .end local v64    # "polyline2Width":F
    .end local v73    # "valueLineLength1":F
    .end local v74    # "valueLineLength2":F
    .end local v75    # "valueLinePart1OffsetPercentage":F
    .restart local v28    # "x":F
    .restart local v29    # "y":F
    :cond_15
    if-eqz v49, :cond_16

    .line 582
    invoke-virtual/range {v43 .. v43}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v4

    move/from16 v0, v56

    if-ge v0, v4, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 583
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v60, v9

    add-float v9, v9, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v4, v2, v9}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto/16 :goto_c

    .line 585
    :cond_16
    if-eqz v51, :cond_8

    .line 587
    const/16 v35, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v60, v4

    add-float v37, v29, v4

    move-object/from16 v0, v44

    move/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v38

    move-object/from16 v30, p0

    move-object/from16 v31, p1

    move-object/from16 v32, v16

    move/from16 v33, v17

    move-object/from16 v34, v18

    move/from16 v36, v28

    invoke-virtual/range {v30 .. v38}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto/16 :goto_c

    .line 594
    .end local v16    # "formatter":Lcom/github/mikephil/charting/formatter/IValueFormatter;
    .end local v17    # "value":F
    .end local v18    # "entry":Lcom/github/mikephil/charting/data/PieEntry;
    .end local v28    # "x":F
    .end local v29    # "y":F
    .end local v40    # "angle":F
    .end local v41    # "angleOffset":F
    .end local v44    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v48    # "drawValues":Z
    .end local v49    # "drawXInside":Z
    .end local v50    # "drawXOutside":Z
    .end local v51    # "drawYInside":Z
    .end local v52    # "drawYOutside":Z
    .end local v53    # "entryCount":I
    .end local v56    # "j":I
    .end local v60    # "lineHeight":F
    .end local v67    # "sliceAngle":F
    .end local v68    # "sliceSpace":F
    .end local v69    # "sliceSpaceMiddleAngle":F
    .end local v70    # "sliceXBase":F
    .end local v71    # "sliceYBase":F
    .end local v72    # "transformedAngle":F
    .end local v77    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .end local v78    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    :cond_17
    invoke-static/range {v42 .. v42}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 596
    return-void
.end method

.method public getPaintCenterText()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintEntryLabels()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintHole()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintTransparentCircle()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F
    .locals 5
    .param p1, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .prologue
    .line 202
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isAutomaticallyDisableSliceSpacingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 205
    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getSmallestContentExtension()F

    move-result v4

    div-float v2, v3, v4

    .line 206
    .local v2, "spaceSizeRatio":F
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYMin()F

    move-result v4

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v3

    div-float v3, v4, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v3, v4

    .line 208
    .local v0, "minValueRatio":F
    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    const/4 v1, 0x0

    .line 210
    .local v1, "sliceSpace":F
    :goto_1
    goto :goto_0

    .line 208
    .end local v1    # "sliceSpace":F
    :cond_1
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v1

    goto :goto_1
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public releaseBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 984
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 986
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 989
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 990
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 991
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 993
    :cond_1
    return-void
.end method
