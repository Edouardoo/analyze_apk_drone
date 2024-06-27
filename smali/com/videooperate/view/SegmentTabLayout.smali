.class public Lcom/videooperate/view/SegmentTabLayout;
.super Landroid/widget/FrameLayout;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/view/SegmentTabLayout$PointEvaluator;,
        Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;
    }
.end annotation


# static fields
.field private static final TEXT_BOLD_BOTH:I = 0x2

.field private static final TEXT_BOLD_NONE:I = 0x0

.field private static final TEXT_BOLD_WHEN_SELECT:I = 0x1


# instance fields
.field private mBarColor:I

.field private mBarStrokeColor:I

.field private mBarStrokeWidth:F

.field private mContext:Landroid/content/Context;

.field private mCurrentP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

.field private mCurrentTab:I

.field private mDividerColor:I

.field private mDividerPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:F

.field private mFragmentChangeManager:Lcom/videooperate/view/FragmentChangeManager;

.field private mHeight:I

.field private mIndicatorAnimDuration:J

.field private mIndicatorAnimEnable:Z

.field private mIndicatorBounceEnable:Z

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private mIsFirstDraw:Z

.field private mLastP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

.field private mLastTab:I

.field private mListener:Lcom/videooperate/view/OnTabSelectListener;

.field private mRadiusArr:[F

.field private mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTabCount:I

.field private mTabPadding:F

.field private mTabSpaceEqual:Z

.field private mTabWidth:F

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mTextAllCaps:Z

.field private mTextBold:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSelectColor:I

.field private mTextUnselectColor:I

.field private mTextsize:F

.field private mTitles:[Ljava/lang/String;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/videooperate/view/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/videooperate/view/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 40
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 41
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 43
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 95
    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    .line 357
    iput-boolean v7, p0, Lcom/videooperate/view/SegmentTabLayout;->mIsFirstDraw:Z

    .line 621
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 740
    new-instance v3, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    invoke-direct {v3, p0}, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/videooperate/view/SegmentTabLayout;)V

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    .line 741
    new-instance v3, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    invoke-direct {v3, p0}, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/videooperate/view/SegmentTabLayout;)V

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mLastP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    .line 107
    invoke-virtual {p0, v6}, Lcom/videooperate/view/SegmentTabLayout;->setWillNotDraw(Z)V

    .line 108
    invoke-virtual {p0, v6}, Lcom/videooperate/view/SegmentTabLayout;->setClipChildren(Z)V

    .line 109
    invoke-virtual {p0, v6}, Lcom/videooperate/view/SegmentTabLayout;->setClipToPadding(Z)V

    .line 111
    iput-object p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    .line 112
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 113
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/videooperate/view/SegmentTabLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/videooperate/view/SegmentTabLayout;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "layout_height"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "height":Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    new-instance v3, Lcom/videooperate/view/SegmentTabLayout$PointEvaluator;

    invoke-direct {v3, p0}, Lcom/videooperate/view/SegmentTabLayout$PointEvaluator;-><init>(Lcom/videooperate/view/SegmentTabLayout;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mLastP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 131
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    return-void

    .line 122
    :cond_1
    const-string v3, "-2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    new-array v2, v7, [I

    const v3, 0x10100f5

    aput v3, v2, v6

    .line 125
    .local v2, "systemAttrs":[I
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, -0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mHeight:I

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/videooperate/view/SegmentTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/videooperate/view/SegmentTabLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/videooperate/view/SegmentTabLayout;)Lcom/videooperate/view/OnTabSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/videooperate/view/SegmentTabLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mListener:Lcom/videooperate/view/OnTabSelectListener;

    return-object v0
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "tabView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 207
    const v2, 0x7f0f01ff

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 208
    .local v1, "tv_tab_title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v2, Lcom/videooperate/view/SegmentTabLayout$1;

    invoke-direct {v2, p0}, Lcom/videooperate/view/SegmentTabLayout$1;-><init>(Lcom/videooperate/view/SegmentTabLayout;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-boolean v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabSpaceEqual:Z

    if-eqz v2, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 231
    .local v0, "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabWidth:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 232
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabWidth:F

    float-to-int v2, v2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 234
    .restart local v0    # "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void

    .line 228
    .end local v0    # "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private calcIndicatorRect()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 297
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "currentTabView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v1, v3

    .line 299
    .local v1, "left":F
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v2, v3

    .line 301
    .local v2, "right":F
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 302
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 304
    iget-boolean v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-nez v3, :cond_2

    .line 305
    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    if-nez v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v5

    .line 308
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v7

    .line 309
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v8

    .line 310
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v9

    .line 311
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x4

    aput v6, v3, v4

    .line 312
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x5

    aput v6, v3, v4

    .line 313
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x6

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 314
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x7

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 347
    :goto_0
    return-void

    .line 315
    :cond_0
    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 317
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v5

    .line 318
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v7

    .line 319
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v8

    .line 320
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v9

    .line 321
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x4

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 322
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x5

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 323
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x6

    aput v6, v3, v4

    .line 324
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x7

    aput v6, v3, v4

    goto :goto_0

    .line 327
    :cond_1
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v5

    .line 328
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v7

    .line 329
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v8

    .line 330
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v9

    .line 331
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x4

    aput v6, v3, v4

    .line 332
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x5

    aput v6, v3, v4

    .line 333
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x6

    aput v6, v3, v4

    .line 334
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x7

    aput v6, v3, v4

    goto :goto_0

    .line 338
    :cond_2
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v5

    .line 339
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v7

    .line 340
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v8

    .line 341
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v9

    .line 342
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x4

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 343
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x5

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 344
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x6

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 345
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x7

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    goto/16 :goto_0
.end method

.method private calcOffset()V
    .locals 6

    .prologue
    .line 270
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "currentTabView":Landroid/view/View;
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 272
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 274
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mLastTab:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "lastTabView":Landroid/view/View;
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mLastP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 276
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mLastP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 280
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mLastP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    iget v2, v2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->left:F

    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    iget v3, v3, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mLastP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    iget v2, v2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->right:F

    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    iget v3, v3, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mLastP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentP:Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 284
    iget-boolean v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    :cond_1
    iget-wide v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 289
    iget-boolean v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x1f4

    :goto_1
    iput-wide v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 292
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 289
    :cond_3
    const-wide/16 v2, 0xfa

    goto :goto_1
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 135
    sget-object v1, Lcom/hfufo/rxdrone/R$styleable;->SegmentTabLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, "ta":Landroid/content/res/TypedArray;
    const-string v1, "#222831"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorColor:I

    .line 138
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 139
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 140
    const/16 v1, 0x9

    invoke-virtual {p0, v4}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 141
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 142
    const/16 v1, 0xb

    invoke-virtual {p0, v4}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 143
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 144
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 145
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 146
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 148
    const/16 v1, 0xe

    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerColor:I

    .line 149
    const/16 v1, 0xf

    invoke-virtual {p0, v7}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerWidth:F

    .line 150
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerPadding:F

    .line 152
    const/16 v1, 0x14

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p0, v2}, Lcom/videooperate/view/SegmentTabLayout;->sp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextsize:F

    .line 153
    const/16 v1, 0x15

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextSelectColor:I

    .line 154
    const/16 v1, 0x16

    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextUnselectColor:I

    .line 155
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextBold:I

    .line 156
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextAllCaps:Z

    .line 158
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 159
    const/16 v1, 0x13

    invoke-virtual {p0, v6}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabWidth:F

    .line 160
    const/16 v2, 0x11

    iget-boolean v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabSpaceEqual:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabWidth:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabPadding:F

    .line 162
    const/16 v1, 0x19

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mBarColor:I

    .line 163
    const/16 v1, 0x1a

    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mBarStrokeColor:I

    .line 164
    const/16 v1, 0x1b

    invoke-virtual {p0, v7}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mBarStrokeWidth:F

    .line 166
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    return-void

    .line 160
    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method

.method private updateTabSelection(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    if-ge v0, v5, :cond_3

    .line 259
    iget-object v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 260
    .local v2, "tabView":Landroid/view/View;
    if-ne v0, p1, :cond_1

    move v1, v4

    .line 261
    .local v1, "isSelect":Z
    :goto_1
    const v5, 0x7f0f01ff

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 262
    .local v3, "tab_title":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextSelectColor:I

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextBold:I

    if-ne v5, v4, :cond_0

    .line 264
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "isSelect":Z
    .end local v3    # "tab_title":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 262
    .restart local v1    # "isSelect":Z
    .restart local v3    # "tab_title":Landroid/widget/TextView;
    :cond_2
    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextUnselectColor:I

    goto :goto_2

    .line 267
    .end local v1    # "isSelect":Z
    .end local v2    # "tabView":Landroid/view/View;
    .end local v3    # "tab_title":Landroid/widget/TextView;
    :cond_3
    return-void
.end method

.method private updateTabStyles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    if-ge v0, v3, :cond_4

    .line 239
    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, "tabView":Landroid/view/View;
    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabPadding:F

    float-to-int v3, v3

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabPadding:F

    float-to-int v4, v4

    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 241
    const v3, 0x7f0f01ff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 242
    .local v2, "tv_tab_title":Landroid/widget/TextView;
    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextSelectColor:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextsize:F

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 245
    iget-boolean v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextAllCaps:Z

    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextBold:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 250
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 238
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_2
    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextUnselectColor:I

    goto :goto_1

    .line 251
    :cond_3
    iget v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextBold:I

    if-nez v3, :cond_1

    .line 252
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    .line 255
    .end local v1    # "tabView":Landroid/view/View;
    .end local v2    # "tv_tab_title":Landroid/widget/TextView;
    :cond_4
    return-void
.end method


# virtual methods
.method protected dp2px(F)I
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 756
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 757
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerColor:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerPadding:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerWidth:F

    return v0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    .prologue
    .line 570
    iget-wide v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorHeight:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginRight:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginTop:F

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabPadding:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabWidth:F

    return v0
.end method

.method public getTextBold()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextBold:I

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextSelectColor:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextUnselectColor:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextsize:F

    return v0
.end method

.method public getTitleView(I)Landroid/widget/TextView;
    .locals 3
    .param p1, "tab"    # I

    .prologue
    .line 614
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 615
    .local v0, "tabView":Landroid/view/View;
    const v2, 0x7f0f01ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 616
    .local v1, "tv_tab_title":Landroid/widget/TextView;
    return-object v1
.end method

.method public hideMsg(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 660
    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    if-lt p1, v2, :cond_0

    .line 661
    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    add-int/lit8 p1, v2, -0x1

    .line 664
    :cond_0
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 665
    .local v0, "tabView":Landroid/view/View;
    const v2, 0x7f0f0200

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 666
    .local v1, "tipView":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 667
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    :cond_1
    return-void
.end method

.method public isIndicatorAnimEnable()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    return v0
.end method

.method public isIndicatorBounceEnable()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    return v0
.end method

.method public isTabSpaceEqual()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabSpaceEqual:Z

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    .line 191
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 192
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    array-length v2, v2

    iput v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    if-ge v0, v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f040049

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 196
    .local v1, "tabView":Landroid/view/View;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0, v0, v1}, Lcom/videooperate/view/SegmentTabLayout;->addTab(ILandroid/view/View;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "tabView":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->updateTabStyles()V

    .line 201
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 351
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    .line 352
    .local v0, "p":Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v0, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->left:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 353
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v0, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->right:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 354
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    .line 355
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 363
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    if-gtz v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->getHeight()I

    move-result v6

    .line 368
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->getPaddingLeft()I

    move-result v8

    .line 370
    .local v8, "paddingLeft":I
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorHeight:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_2

    .line 371
    int-to-float v0, v6

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginTop:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 374
    :cond_2
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    cmpg-float v0, v0, v10

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorHeight:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 375
    :cond_3
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorHeight:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 380
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mBarStrokeWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mBarStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 381
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 382
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 383
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 386
    iget-boolean v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerWidth:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 388
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 391
    .local v9, "tab":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v1, v0

    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerPadding:F

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    int-to-float v0, v6

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerPadding:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 389
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 397
    .end local v7    # "i":I
    .end local v9    # "tab":Landroid/view/View;
    :cond_5
    iget-boolean v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-eqz v0, :cond_7

    .line 398
    iget-boolean v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIsFirstDraw:Z

    if-eqz v0, :cond_6

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIsFirstDraw:Z

    .line 400
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->calcIndicatorRect()V

    .line 406
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 407
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginTop:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginRight:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginTop:F

    iget v5, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 410
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mRadiusArr:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 411
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 403
    :cond_7
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->calcIndicatorRect()V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 724
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 725
    check-cast v0, Landroid/os/Bundle;

    .line 726
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mCurrentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    .line 727
    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 728
    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 729
    iget v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/videooperate/view/SegmentTabLayout;->updateTabSelection(I)V

    .line 732
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 733
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 716
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 718
    const-string v1, "mCurrentTab"

    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "currentTab"    # I

    .prologue
    .line 417
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mLastTab:I

    .line 418
    iput p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mCurrentTab:I

    .line 419
    invoke-direct {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->updateTabSelection(I)V

    .line 420
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mFragmentChangeManager:Lcom/videooperate/view/FragmentChangeManager;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mFragmentChangeManager:Lcom/videooperate/view/FragmentChangeManager;

    invoke-virtual {v0, p1}, Lcom/videooperate/view/FragmentChangeManager;->setFragments(I)V

    .line 423
    :cond_0
    iget-boolean v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-eqz v0, :cond_1

    .line 424
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->calcOffset()V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerColor:I

    .line 483
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    .line 484
    return-void
.end method

.method public setDividerPadding(F)V
    .locals 1
    .param p1, "dividerPadding"    # F

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerPadding:F

    .line 493
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    .line 494
    return-void
.end method

.method public setDividerWidth(F)V
    .locals 1
    .param p1, "dividerWidth"    # F

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mDividerWidth:F

    .line 488
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    .line 489
    return-void
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 1
    .param p1, "indicatorAnimDuration"    # J

    .prologue
    .line 470
    iput-wide p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 471
    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0
    .param p1, "indicatorAnimEnable"    # Z

    .prologue
    .line 474
    iput-boolean p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 475
    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0
    .param p1, "indicatorBounceEnable"    # Z

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 479
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 446
    iput p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorColor:I

    .line 447
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    .line 448
    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 1
    .param p1, "indicatorCornerRadius"    # F

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 457
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    .line 458
    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 1
    .param p1, "indicatorHeight"    # F

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 452
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    .line 453
    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 1
    .param p1, "indicatorMarginLeft"    # F
    .param p2, "indicatorMarginTop"    # F
    .param p3, "indicatorMarginRight"    # F
    .param p4, "indicatorMarginBottom"    # F

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 463
    invoke-virtual {p0, p2}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 464
    invoke-virtual {p0, p3}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 465
    invoke-virtual {p0, p4}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 466
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->invalidate()V

    .line 467
    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "leftPadding"    # F
    .param p3, "bottomPadding"    # F

    .prologue
    .line 677
    iget v6, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    if-lt p1, v6, :cond_0

    .line 678
    iget v6, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    add-int/lit8 p1, v6, -0x1

    .line 680
    :cond_0
    iget-object v6, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 681
    .local v1, "tabView":Landroid/view/View;
    const v6, 0x7f0f0200

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 682
    .local v4, "tipView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 683
    const v6, 0x7f0f01ff

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 684
    .local v5, "tv_tab_title":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextsize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 685
    iget-object v6, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 686
    .local v3, "textWidth":F
    iget-object v6, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float v2, v6, v7

    .line 687
    .local v2, "textHeight":F
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 689
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0, p2}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 690
    iget v6, p0, Lcom/videooperate/view/SegmentTabLayout;->mHeight:I

    if-lez v6, :cond_2

    iget v6, p0, Lcom/videooperate/view/SegmentTabLayout;->mHeight:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, p3}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v7

    sub-int/2addr v6, v7

    :goto_0
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 692
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "textHeight":F
    .end local v3    # "textWidth":F
    .end local v5    # "tv_tab_title":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 690
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "textHeight":F
    .restart local v3    # "textWidth":F
    .restart local v5    # "tv_tab_title":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v6

    goto :goto_0
.end method

.method public setOnTabSelectListener(Lcom/videooperate/view/OnTabSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/videooperate/view/OnTabSelectListener;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mListener:Lcom/videooperate/view/OnTabSelectListener;

    .line 712
    return-void
.end method

.method public setTabData([Ljava/lang/String;)V
    .locals 2
    .param p1, "titles"    # [Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Titles can not be NULL or EMPTY !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    iput-object p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/videooperate/view/SegmentTabLayout;->notifyDataSetChanged()V

    .line 177
    return-void
.end method

.method public setTabData([Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "titles"    # [Ljava/lang/String;
    .param p2, "fa"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "containerViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p4, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    new-instance v0, Lcom/videooperate/view/FragmentChangeManager;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/videooperate/view/FragmentChangeManager;-><init>(Landroid/support/v4/app/FragmentManager;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mFragmentChangeManager:Lcom/videooperate/view/FragmentChangeManager;

    .line 184
    invoke-virtual {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setTabPadding(F)V
    .locals 1
    .param p1, "tabPadding"    # F

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabPadding:F

    .line 432
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->updateTabStyles()V

    .line 433
    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0
    .param p1, "tabSpaceEqual"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 437
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->updateTabStyles()V

    .line 438
    return-void
.end method

.method public setTabWidth(F)V
    .locals 1
    .param p1, "tabWidth"    # F

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabWidth:F

    .line 442
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->updateTabStyles()V

    .line 443
    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextAllCaps:Z

    .line 518
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->updateTabStyles()V

    .line 519
    return-void
.end method

.method public setTextBold(I)V
    .locals 0
    .param p1, "textBold"    # I

    .prologue
    .line 512
    iput p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextBold:I

    .line 513
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->updateTabStyles()V

    .line 514
    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0
    .param p1, "textSelectColor"    # I

    .prologue
    .line 502
    iput p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextSelectColor:I

    .line 503
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->updateTabStyles()V

    .line 504
    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0
    .param p1, "textUnselectColor"    # I

    .prologue
    .line 507
    iput p1, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextUnselectColor:I

    .line 508
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->updateTabStyles()V

    .line 509
    return-void
.end method

.method public setTextsize(F)V
    .locals 1
    .param p1, "textsize"    # F

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/videooperate/view/SegmentTabLayout;->sp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTextsize:F

    .line 498
    invoke-direct {p0}, Lcom/videooperate/view/SegmentTabLayout;->updateTabStyles()V

    .line 499
    return-void
.end method

.method public showDot(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 653
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    if-lt p1, v0, :cond_0

    .line 654
    iget v0, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    add-int/lit8 p1, v0, -0x1

    .line 656
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/videooperate/view/SegmentTabLayout;->showMsg(II)V

    .line 657
    return-void
.end method

.method public showMsg(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "num"    # I

    .prologue
    .line 631
    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    if-lt p1, v2, :cond_0

    .line 632
    iget v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabCount:I

    add-int/lit8 p1, v2, -0x1

    .line 634
    :cond_0
    iget-object v2, p0, Lcom/videooperate/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 635
    .local v0, "tabView":Landroid/view/View;
    const v2, 0x7f0f0200

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 636
    .local v1, "tipView":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 637
    const/16 v2, 0x63

    if-le p2, v2, :cond_2

    const-string v2, "99+"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    :cond_1
    return-void

    .line 637
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected sp2px(F)I
    .locals 3
    .param p1, "sp"    # F

    .prologue
    .line 761
    iget-object v1, p0, Lcom/videooperate/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 762
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
