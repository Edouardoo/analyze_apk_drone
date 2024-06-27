.class public Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;
.super Landroid/widget/FrameLayout;
.source "VerticalSeekBarWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private applyViewRotation(II)V
    .locals 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 131
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    move-result-object v5

    .line 133
    .local v5, "seekBar":Lcom/fh/lib/verticalseekbar/VerticalSeekBar;
    if-eqz v5, :cond_0

    .line 134
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v11

    if-nez v11, :cond_1

    const/4 v2, 0x1

    .line 135
    .local v2, "isLTR":Z
    :goto_0
    invoke-virtual {v5}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getRotationAngle()I

    move-result v4

    .line 136
    .local v4, "rotationAngle":I
    invoke-virtual {v5}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getMeasuredWidth()I

    move-result v7

    .line 137
    .local v7, "seekBarMeasuredWidth":I
    invoke-virtual {v5}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getMeasuredHeight()I

    move-result v6

    .line 138
    .local v6, "seekBarMeasuredHeight":I
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingRight()I

    move-result v12

    add-int v1, v11, v12

    .line 139
    .local v1, "hPadding":I
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingBottom()I

    move-result v12

    add-int v8, v11, v12

    .line 140
    .local v8, "vPadding":I
    sub-int v11, p1, v1

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int/2addr v11, v6

    int-to-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v0, v11, v12

    .line 141
    .local v0, "hOffset":F
    invoke-virtual {v5}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 143
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    sub-int v11, p2, v8

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    const/4 v11, -0x2

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    invoke-virtual {v5, v3}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    if-eqz v2, :cond_2

    move v9, v10

    :goto_1
    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 149
    invoke-static {v5, v10}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 151
    sparse-switch v4, :sswitch_data_0

    .line 174
    .end local v0    # "hOffset":F
    .end local v1    # "hPadding":I
    .end local v2    # "isLTR":Z
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "rotationAngle":I
    .end local v6    # "seekBarMeasuredHeight":I
    .end local v7    # "seekBarMeasuredWidth":I
    .end local v8    # "vPadding":I
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v9

    .line 134
    goto :goto_0

    .line 148
    .restart local v0    # "hOffset":F
    .restart local v1    # "hPadding":I
    .restart local v2    # "isLTR":Z
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "rotationAngle":I
    .restart local v6    # "seekBarMeasuredHeight":I
    .restart local v7    # "seekBarMeasuredWidth":I
    .restart local v8    # "vPadding":I
    :cond_2
    sub-int v11, p2, v8

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    goto :goto_1

    .line 153
    :sswitch_0
    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 154
    if-eqz v2, :cond_3

    .line 155
    int-to-float v9, v6

    add-float/2addr v9, v0

    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 156
    invoke-static {v5, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    .line 158
    :cond_3
    neg-float v9, v0

    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 159
    int-to-float v9, v7

    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    .line 163
    :sswitch_1
    const/high16 v9, 0x43870000    # 270.0f

    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 164
    if-eqz v2, :cond_4

    .line 165
    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 166
    int-to-float v9, v7

    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    .line 168
    :cond_4
    int-to-float v9, v6

    add-float/2addr v9, v0

    neg-float v9, v9

    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 169
    invoke-static {v5, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildSeekBar()Lcom/fh/lib/verticalseekbar/VerticalSeekBar;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "child":Landroid/view/View;
    :goto_0
    instance-of v2, v0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 177
    goto :goto_0

    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    move-object v0, v1

    .line 178
    goto :goto_1
.end method

.method private onSizeChangedTraditionalRotation(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v8, 0x0

    .line 50
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    move-result-object v2

    .line 52
    .local v2, "seekBar":Lcom/fh/lib/verticalseekbar/VerticalSeekBar;
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingRight()I

    move-result v6

    add-int v0, v5, v6

    .line 54
    .local v0, "hPadding":I
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingBottom()I

    move-result v6

    add-int v4, v5, v6

    .line 55
    .local v4, "vPadding":I
    invoke-virtual {v2}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 58
    sub-int v5, p2, v4

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 59
    invoke-virtual {v2, v1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {v2, v8, v8}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->measure(II)V

    .line 63
    invoke-virtual {v2}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getMeasuredWidth()I

    move-result v3

    .line 64
    .local v3, "seekBarMeasuredWidth":I
    sub-int v5, p1, v0

    .line 65
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    sub-int v6, p2, v4

    .line 66
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 64
    invoke-virtual {v2, v5, v6}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->measure(II)V

    .line 68
    const/16 v5, 0x33

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    sub-int v5, p1, v0

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 70
    invoke-virtual {v2, v1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .end local v0    # "hPadding":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "seekBarMeasuredWidth":I
    .end local v4    # "vPadding":I
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 74
    return-void
.end method

.method private onSizeChangedUseViewRotation(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    move-result-object v1

    .line 79
    .local v1, "seekBar":Lcom/fh/lib/verticalseekbar/VerticalSeekBar;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 81
    .local v0, "hPadding":I
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingBottom()I

    move-result v4

    add-int v2, v3, v4

    .line 82
    .local v2, "vPadding":I
    sub-int v3, p2, v2

    .line 83
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    sub-int v4, p1, v0

    .line 84
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 82
    invoke-virtual {v1, v3, v4}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->measure(II)V

    .line 87
    .end local v0    # "hPadding":I
    .end local v2    # "vPadding":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->applyViewRotation(II)V

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 89
    return-void
.end method

.method private useViewRotation()Z
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    move-result-object v0

    .line 183
    .local v0, "seekBar":Lcom/fh/lib/verticalseekbar/VerticalSeekBar;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->useViewRotation()Z

    move-result v1

    .line 186
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method applyViewRotation()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->applyViewRotation(II)V

    .line 128
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    move-result-object v8

    .line 94
    .local v8, "seekBar":Lcom/fh/lib/verticalseekbar/VerticalSeekBar;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 95
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 96
    .local v2, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 97
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 99
    .local v3, "heightSize":I
    if-eqz v8, :cond_1

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v12, v14, :cond_1

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingRight()I

    move-result v15

    add-int v1, v14, v15

    .line 103
    .local v1, "hPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->getPaddingBottom()I

    move-result v15

    add-int v11, v14, v15

    .line 104
    .local v11, "vPadding":I
    const/4 v14, 0x0

    sub-int v15, v13, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 105
    .local v5, "innerContentWidthMeasureSpec":I
    const/4 v14, 0x0

    sub-int v15, v3, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 107
    .local v4, "innerContentHeightMeasureSpec":I
    invoke-direct/range {p0 .. p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->useViewRotation()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 108
    invoke-virtual {v8, v4, v5}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->measure(II)V

    .line 109
    invoke-virtual {v8}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getMeasuredHeight()I

    move-result v10

    .line 110
    .local v10, "seekBarWidth":I
    invoke-virtual {v8}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getMeasuredWidth()I

    move-result v9

    .line 117
    .local v9, "seekBarHeight":I
    :goto_0
    add-int v14, v10, v1

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-static {v14, v0, v15}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v7

    .line 118
    .local v7, "measuredWidth":I
    add-int v14, v9, v11

    const/4 v15, 0x0

    move/from16 v0, p2

    invoke-static {v14, v0, v15}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v6

    .line 120
    .local v6, "measuredHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->setMeasuredDimension(II)V

    .line 124
    .end local v1    # "hPadding":I
    .end local v4    # "innerContentHeightMeasureSpec":I
    .end local v5    # "innerContentWidthMeasureSpec":I
    .end local v6    # "measuredHeight":I
    .end local v7    # "measuredWidth":I
    .end local v9    # "seekBarHeight":I
    .end local v10    # "seekBarWidth":I
    .end local v11    # "vPadding":I
    :goto_1
    return-void

    .line 112
    .restart local v1    # "hPadding":I
    .restart local v4    # "innerContentHeightMeasureSpec":I
    .restart local v5    # "innerContentWidthMeasureSpec":I
    .restart local v11    # "vPadding":I
    :cond_0
    invoke-virtual {v8, v5, v4}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->measure(II)V

    .line 113
    invoke-virtual {v8}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getMeasuredWidth()I

    move-result v10

    .line 114
    .restart local v10    # "seekBarWidth":I
    invoke-virtual {v8}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->getMeasuredHeight()I

    move-result v9

    .restart local v9    # "seekBarHeight":I
    goto :goto_0

    .line 122
    .end local v1    # "hPadding":I
    .end local v4    # "innerContentHeightMeasureSpec":I
    .end local v5    # "innerContentWidthMeasureSpec":I
    .end local v9    # "seekBarHeight":I
    .end local v10    # "seekBarWidth":I
    .end local v11    # "vPadding":I
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->useViewRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->onSizeChangedUseViewRotation(IIII)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fh/lib/verticalseekbar/VerticalSeekBarWrapper;->onSizeChangedTraditionalRotation(IIII)V

    goto :goto_0
.end method
