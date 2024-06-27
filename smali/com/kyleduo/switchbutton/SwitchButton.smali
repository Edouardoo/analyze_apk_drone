.class public Lcom/kyleduo/switchbutton/SwitchButton;
.super Landroid/widget/CompoundButton;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    }
.end annotation


# static fields
.field private static CHECKED_PRESSED_STATE:[I = null

.field public static final DEFAULT_ANIMATION_DURATION:I = 0xfa

.field public static final DEFAULT_THUMB_MARGIN_DP:I = 0x2

.field public static final DEFAULT_THUMB_RANGE_RATIO:F = 1.8f

.field public static final DEFAULT_THUMB_SIZE_DP:I = 0x14

.field public static final DEFAULT_TINT_COLOR:I = 0x327fc2

.field private static UNCHECKED_PRESSED_STATE:[I


# instance fields
.field private mAnimationDuration:J

.field private mBackColor:Landroid/content/res/ColorStateList;

.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackHeight:I

.field private mBackRadius:F

.field private mBackRectF:Landroid/graphics/RectF;

.field private mBackWidth:I

.field private mCatch:Z

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mClickTimeout:I

.field private mCurrBackColor:I

.field private mCurrThumbColor:I

.field private mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawDebugRect:Z

.field private mFadeBack:Z

.field private mIsBackUseDrawable:Z

.field private mIsThumbUseDrawable:Z

.field private mLastX:F

.field private mNextBackColor:I

.field private mNextBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffLayout:Landroid/text/Layout;

.field private mOffTextColor:I

.field private mOnLayout:Landroid/text/Layout;

.field private mOnTextColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPresentThumbRectF:Landroid/graphics/RectF;

.field private mProgress:F

.field private mProgressAnimator:Landroid/animation/ObjectAnimator;

.field private mReady:Z

.field private mRectPaint:Landroid/graphics/Paint;

.field private mRestoring:Z

.field private mSafeRectF:Landroid/graphics/RectF;

.field private mStartX:F

.field private mStartY:F

.field private mTextAdjust:I

.field private mTextExtra:I

.field private mTextHeight:F

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOffRectF:Landroid/graphics/RectF;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextOnRectF:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextThumbInset:I

.field private mTextWidth:F

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHeight:I

.field private mThumbMargin:Landroid/graphics/RectF;

.field private mThumbRadius:F

.field private mThumbRangeRatio:F

.field private mThumbRectF:Landroid/graphics/RectF;

.field private mThumbWidth:I

.field private mTintColor:I

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    return-void

    .line 48
    :array_0
    .array-data 4
        0x10100a0
        0x101009e
        0x10100a7
    .end array-data

    .line 49
    :array_1
    .array-data 4
        -0x10100a0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 93
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    .line 94
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 95
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 93
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    .line 94
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 95
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    .line 106
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 93
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    .line 94
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 95
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    .line 101
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method private catchView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 785
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 786
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 787
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 789
    :cond_0
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    .line 790
    return-void
.end method

.method private ceil(D)I
    .locals 3
    .param p1, "dimen"    # D

    .prologue
    .line 473
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getProgress()F
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    return v0
.end method

.method private getStatusBasedOnPos()Z
    .locals 2

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 36
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    .line 116
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v33

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v34

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    .line 118
    new-instance v33, Landroid/graphics/Paint;

    const/16 v34, 0x1

    invoke-direct/range {v33 .. v34}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v33, Landroid/graphics/Paint;

    const/16 v34, 0x1

    invoke-direct/range {v33 .. v34}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    sget-object v34, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    .line 125
    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    .line 126
    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    .line 127
    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    .line 128
    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    .line 129
    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    .line 130
    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    .line 132
    const-string v33, "progress"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    fill-array-data v34, :array_0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    const-wide/16 v34, 0xfa

    invoke-virtual/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v33, v0

    new-instance v34, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v34 .. v34}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v33 .. v34}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 138
    .local v18, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v33

    move-object/from16 v0, v33

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 140
    .local v9, "density":F
    const/16 v26, 0x0

    .line 141
    .local v26, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    .line 142
    .local v25, "thumbColor":Landroid/content/res/ColorStateList;
    const/high16 v33, 0x40000000    # 2.0f

    mul-float v13, v9, v33

    .line 143
    .local v13, "margin":F
    const/4 v15, 0x0

    .line 144
    .local v15, "marginLeft":F
    const/16 v16, 0x0

    .line 145
    .local v16, "marginRight":F
    const/16 v17, 0x0

    .line 146
    .local v17, "marginTop":F
    const/4 v14, 0x0

    .line 147
    .local v14, "marginBottom":F
    const/16 v30, 0x0

    .line 148
    .local v30, "thumbWidth":F
    const/16 v27, 0x0

    .line 149
    .local v27, "thumbHeight":F
    const/high16 v28, -0x40800000    # -1.0f

    .line 150
    .local v28, "thumbRadius":F
    const/high16 v7, -0x40800000    # -1.0f

    .line 151
    .local v7, "backRadius":F
    const/4 v6, 0x0

    .line 152
    .local v6, "backDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 153
    .local v5, "backColor":Landroid/content/res/ColorStateList;
    const v29, 0x3fe66666    # 1.8f

    .line 154
    .local v29, "thumbRangeRatio":F
    const/16 v4, 0xfa

    .line 155
    .local v4, "animationDuration":I
    const/4 v10, 0x1

    .line 156
    .local v10, "fadeBack":Z
    const/16 v31, 0x0

    .line 157
    .local v31, "tintColor":I
    const/16 v23, 0x0

    .line 158
    .local v23, "textOn":Ljava/lang/String;
    const/16 v22, 0x0

    .line 159
    .local v22, "textOff":Ljava/lang/String;
    const/16 v24, 0x0

    .line 160
    .local v24, "textThumbInset":I
    const/16 v21, 0x0

    .line 161
    .local v21, "textExtra":I
    const/16 v20, 0x0

    .line 163
    .local v20, "textAdjust":I
    if-nez p1, :cond_6

    const/16 v19, 0x0

    .line 164
    .local v19, "ta":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz v19, :cond_0

    .line 165
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbDrawable:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 166
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbColor:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v25

    .line 167
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMargin:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 168
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginLeft:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 169
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginRight:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 170
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginTop:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 171
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginBottom:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 172
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbWidth:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v30

    .line 173
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbHeight:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v27

    .line 174
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbRadius:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v28

    .line 175
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackRadius:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 176
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackDrawable:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 177
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackColor:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 178
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbRangeRatio:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 179
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAnimationDuration:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 180
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswFadeBack:I

    const/16 v34, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 181
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTintColor:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v31

    .line 182
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOn:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 183
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOff:I

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 184
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextThumbInset:I

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v24

    .line 185
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextExtra:I

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 186
    sget v33, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextAdjust:I

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    .line 187
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    :cond_0
    if-nez p1, :cond_7

    const/16 v19, 0x0

    .line 192
    :goto_1
    if-eqz v19, :cond_8

    .line 193
    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 196
    .local v11, "focusable":Z
    const/16 v33, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 197
    .local v8, "clickable":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->setFocusable(Z)V

    .line 198
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/kyleduo/switchbutton/SwitchButton;->setClickable(Z)V

    .line 199
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    .end local v8    # "clickable":Z
    .end local v11    # "focusable":Z
    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 207
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 208
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    .line 209
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    .line 210
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextAdjust:I

    .line 213
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_9

    const/16 v33, 0x1

    :goto_3
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 216
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    move/from16 v33, v0

    if-nez v33, :cond_1

    .line 218
    new-instance v32, Landroid/util/TypedValue;

    invoke-direct/range {v32 .. v32}, Landroid/util/TypedValue;-><init>()V

    .line 219
    .local v32, "typedValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v33

    sget v34, Lcom/kyleduo/switchbutton/R$attr;->colorAccent:I

    const/16 v35, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v32

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v12

    .line 220
    .local v12, "found":Z
    if-eqz v12, :cond_a

    .line 221
    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 226
    .end local v12    # "found":Z
    .end local v32    # "typedValue":Landroid/util/TypedValue;
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    move/from16 v33, v0

    if-nez v33, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    if-nez v33, :cond_2

    .line 227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    .line 232
    :cond_2
    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 233
    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    .line 236
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_b

    const/16 v33, 0x1

    :goto_5
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    move/from16 v33, v0

    if-nez v33, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    if-nez v33, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    sget-object v34, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    move/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    .line 246
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->width()F

    move-result v33

    const/16 v34, 0x0

    cmpl-float v33, v33, v34

    if-ltz v33, :cond_4

    const/high16 v33, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .end local v29    # "thumbRangeRatio":F
    :cond_4
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    .line 251
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    .line 252
    move-object/from16 v0, p0

    iput v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 253
    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    .line 254
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 260
    const/high16 v33, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    .line 262
    :cond_5
    return-void

    .line 163
    .end local v19    # "ta":Landroid/content/res/TypedArray;
    .restart local v29    # "thumbRangeRatio":F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v33

    sget-object v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton:[I

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    goto/16 :goto_0

    .line 191
    .restart local v19    # "ta":Landroid/content/res/TypedArray;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v33

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    fill-array-data v34, :array_1

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    goto/16 :goto_1

    .line 201
    :cond_8
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setFocusable(Z)V

    .line 202
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setClickable(Z)V

    goto/16 :goto_2

    .line 215
    :cond_9
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 223
    .restart local v12    # "found":Z
    .restart local v32    # "typedValue":Landroid/util/TypedValue;
    :cond_a
    const v33, 0x327fc2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    goto/16 :goto_4

    .line 238
    .end local v12    # "found":Z
    .end local v32    # "typedValue":Landroid/util/TypedValue;
    :cond_b
    const/16 v33, 0x0

    goto/16 :goto_5

    .line 132
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 191
    :array_1
    .array-data 4
        0x10100da
        0x10100e5
    .end array-data
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 266
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private measureHeight(I)I
    .locals 12
    .param p1, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 404
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 405
    .local v2, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 406
    .local v1, "heightMode":I
    move v3, v2

    .line 408
    .local v3, "measuredHeight":I
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v7, :cond_0

    .line 409
    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    .line 413
    :cond_0
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, v7, :cond_4

    .line 414
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-eqz v7, :cond_1

    .line 418
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    .line 419
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    .line 420
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v7, v8

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 422
    iput v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    .line 426
    :cond_1
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-nez v7, :cond_3

    .line 427
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    .line 428
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    if-gez v7, :cond_2

    .line 429
    iput v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    .line 430
    iput v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    move v4, v3

    .end local v3    # "measuredHeight":I
    .local v4, "measuredHeight":I
    move v5, v3

    .line 461
    .end local v4    # "measuredHeight":I
    .local v5, "measuredHeight":I
    :goto_0
    return v5

    .line 433
    .end local v5    # "measuredHeight":I
    .restart local v3    # "measuredHeight":I
    :cond_2
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    .line 435
    :cond_3
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-gez v7, :cond_8

    .line 436
    iput v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    .line 437
    iput v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    move v4, v3

    .end local v3    # "measuredHeight":I
    .restart local v4    # "measuredHeight":I
    move v5, v3

    .line 438
    .end local v4    # "measuredHeight":I
    .restart local v5    # "measuredHeight":I
    goto :goto_0

    .line 441
    .end local v5    # "measuredHeight":I
    .restart local v3    # "measuredHeight":I
    :cond_4
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    if-nez v7, :cond_5

    .line 442
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x41a00000    # 20.0f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    .line 444
    :cond_5
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    .line 445
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    if-gez v7, :cond_6

    .line 446
    iput v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    .line 447
    iput v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    move v4, v3

    .end local v3    # "measuredHeight":I
    .restart local v4    # "measuredHeight":I
    move v5, v3

    .line 448
    .end local v4    # "measuredHeight":I
    .restart local v5    # "measuredHeight":I
    goto :goto_0

    .line 450
    .end local v5    # "measuredHeight":I
    .restart local v3    # "measuredHeight":I
    :cond_6
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v6

    .line 451
    .local v6, "textExtraSpace":I
    if-lez v6, :cond_7

    .line 452
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    .line 453
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    .line 455
    :cond_7
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 457
    .local v0, "contentSize":I
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 458
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .end local v0    # "contentSize":I
    .end local v6    # "textExtraSpace":I
    :cond_8
    move v4, v3

    .end local v3    # "measuredHeight":I
    .restart local v4    # "measuredHeight":I
    move v5, v3

    .line 461
    .end local v4    # "measuredHeight":I
    .restart local v5    # "measuredHeight":I
    goto/16 :goto_0
.end method

.method private measureWidth(I)I
    .locals 14
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 313
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 314
    .local v8, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 315
    .local v7, "widthMode":I
    move v1, v8

    .line 317
    .local v1, "measuredWidth":I
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v9, :cond_0

    .line 318
    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 322
    :cond_0
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v6

    .line 327
    .local v6, "textWidth":I
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    .line 328
    const v9, 0x3fe66666    # 1.8f

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    .line 331
    :cond_1
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v7, v9, :cond_7

    .line 332
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v10

    sub-int v0, v9, v10

    .line 334
    .local v0, "contentSize":I
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-eqz v9, :cond_3

    .line 335
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v4

    .line 336
    .local v4, "moveRange":I
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    add-int/2addr v9, v6

    iget v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    sub-int v10, v4, v10

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    float-to-double v12, v11

    invoke-direct {p0, v12, v13}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v11

    add-int/2addr v10, v11

    sub-int v5, v9, v10

    .line 337
    .local v5, "textExtraSpace":I
    int-to-float v9, v4

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v9

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    .line 338
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    if-gez v9, :cond_2

    .line 339
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 341
    :cond_2
    int-to-float v9, v4

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    int-to-float v10, v0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 342
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 346
    .end local v4    # "moveRange":I
    .end local v5    # "textExtraSpace":I
    :cond_3
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-nez v9, :cond_b

    .line 347
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v10

    sub-int v0, v9, v10

    .line 348
    int-to-float v9, v0

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v4

    .line 349
    .restart local v4    # "moveRange":I
    if-gez v4, :cond_4

    .line 350
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 351
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    move v2, v1

    .end local v1    # "measuredWidth":I
    .local v2, "measuredWidth":I
    move v3, v1

    .line 400
    .end local v0    # "contentSize":I
    .end local v2    # "measuredWidth":I
    .end local v4    # "moveRange":I
    .local v3, "measuredWidth":I
    :goto_0
    return v3

    .line 354
    .end local v3    # "measuredWidth":I
    .restart local v0    # "contentSize":I
    .restart local v1    # "measuredWidth":I
    .restart local v4    # "moveRange":I
    :cond_4
    int-to-float v9, v4

    iget v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v9

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 355
    int-to-float v9, v4

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v9

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    .line 356
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    if-gez v9, :cond_5

    .line 357
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 358
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    move v2, v1

    .end local v1    # "measuredWidth":I
    .restart local v2    # "measuredWidth":I
    move v3, v1

    .line 359
    .end local v2    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    goto :goto_0

    .line 361
    .end local v3    # "measuredWidth":I
    .restart local v1    # "measuredWidth":I
    :cond_5
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    add-int/2addr v9, v6

    iget v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    sub-int v10, v4, v10

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    float-to-double v12, v11

    invoke-direct {p0, v12, v13}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v11

    add-int/2addr v10, v11

    sub-int v5, v9, v10

    .line 362
    .restart local v5    # "textExtraSpace":I
    if-lez v5, :cond_6

    .line 364
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 366
    :cond_6
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-gez v9, :cond_b

    .line 367
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 368
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    move v2, v1

    .end local v1    # "measuredWidth":I
    .restart local v2    # "measuredWidth":I
    move v3, v1

    .line 369
    .end local v2    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    goto :goto_0

    .line 378
    .end local v0    # "contentSize":I
    .end local v3    # "measuredWidth":I
    .end local v4    # "moveRange":I
    .end local v5    # "textExtraSpace":I
    .restart local v1    # "measuredWidth":I
    :cond_7
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    if-nez v9, :cond_8

    .line 382
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41a00000    # 20.0f

    mul-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v9

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 384
    :cond_8
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_9

    .line 385
    const v9, 0x3fe66666    # 1.8f

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    .line 388
    :cond_9
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v4

    .line 389
    .restart local v4    # "moveRange":I
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    add-int/2addr v9, v6

    int-to-float v9, v9

    iget v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    sub-int v10, v4, v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v5

    .line 390
    .restart local v5    # "textExtraSpace":I
    int-to-float v9, v4

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v9

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    .line 391
    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    if-gez v9, :cond_a

    .line 392
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 393
    const/4 v9, 0x0

    iput v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    move v2, v1

    .end local v1    # "measuredWidth":I
    .restart local v2    # "measuredWidth":I
    move v3, v1

    .line 394
    .end local v2    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    goto/16 :goto_0

    .line 396
    .end local v3    # "measuredWidth":I
    .restart local v1    # "measuredWidth":I
    :cond_a
    int-to-float v9, v4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v0

    .line 398
    .restart local v0    # "contentSize":I
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v4    # "moveRange":I
    .end local v5    # "textExtraSpace":I
    :cond_b
    move v2, v1

    .end local v1    # "measuredWidth":I
    .restart local v2    # "measuredWidth":I
    move v3, v1

    .line 400
    .end local v2    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    goto/16 :goto_0
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 865
    if-eqz p1, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v0

    .line 867
    .local v0, "myDrawableState":[I
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 868
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 870
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method private setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 748
    move v0, p1

    .line 749
    .local v0, "tp":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 750
    const/high16 v0, 0x3f800000    # 1.0f

    .line 754
    :cond_0
    :goto_0
    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    .line 755
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 756
    return-void

    .line 751
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 752
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setup()V
    .locals 22

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    move/from16 v16, v0

    const/high16 v17, -0x40800000    # -1.0f

    cmpl-float v16, v16, v17

    if-nez v16, :cond_2

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    .line 487
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move/from16 v16, v0

    const/high16 v17, -0x40800000    # -1.0f

    cmpl-float v16, v16, v17

    if-nez v16, :cond_3

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 491
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getMeasuredWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v17

    sub-int v6, v16, v17

    .line 492
    .local v6, "contentWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v17

    sub-int v5, v16, v17

    .line 495
    .local v5, "contentHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    sub-float v16, v16, v17

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v8

    .line 496
    .local v8, "drawingWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    sub-float v16, v16, v17

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v7

    .line 499
    .local v7, "drawingHeight":I
    if-gt v5, v7, :cond_7

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    add-float v15, v16, v17

    .line 507
    .local v15, "thumbTop":F
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v6, v0, :cond_8

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    add-float v14, v16, v17

    .line 513
    .local v14, "thumbLeft":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v15

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    sub-float v4, v16, v17

    .line 516
    .local v4, "backLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v20

    sub-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/RectF;->set(FFFF)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v9, v16, v17

    .line 524
    .local v9, "minBackRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v20

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextAdjust:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v12, v16, v17

    .line 532
    .local v12, "onLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v13, v16, v17

    .line 533
    .local v13, "onTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v13

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 536
    .end local v12    # "onLeft":F
    .end local v13    # "onTop":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextAdjust:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v10, v16, v17

    .line 538
    .local v10, "offLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v11, v16, v17

    .line 539
    .local v11, "offTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v11

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 542
    .end local v10    # "offLeft":F
    .end local v11    # "offTop":F
    :cond_6
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    goto/16 :goto_0

    .line 503
    .end local v4    # "backLeft":F
    .end local v9    # "minBackRadius":F
    .end local v14    # "thumbLeft":F
    .end local v15    # "thumbTop":F
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    add-float v16, v16, v17

    sub-int v17, v5, v7

    add-int/lit8 v17, v17, 0x1

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v15, v16, v17

    .restart local v15    # "thumbTop":F
    goto/16 :goto_1

    .line 510
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    add-float v16, v16, v17

    sub-int v17, v6, v8

    add-int/lit8 v17, v17, 0x1

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v14, v16, v17

    .restart local v14    # "thumbLeft":F
    goto/16 :goto_2
.end method


# virtual methods
.method protected animateToState(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 769
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 776
    if-eqz p1, :cond_2

    .line 777
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 781
    :goto_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    aput v2, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 644
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 646
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 647
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v4

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    .line 652
    :goto_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    .line 653
    .local v1, "nextState":[I
    :goto_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 654
    .local v2, "textColors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_0

    .line 655
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 656
    .local v0, "defaultTextColor":I
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    .line 657
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    .line 659
    .end local v0    # "defaultTextColor":I
    :cond_0
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_4

    .line 660
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v4

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 661
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v3, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    .line 674
    :cond_1
    :goto_2
    return-void

    .line 649
    .end local v1    # "nextState":[I
    .end local v2    # "textColors":Landroid/content/res/ColorStateList;
    :cond_2
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 652
    :cond_3
    sget-object v1, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    goto :goto_1

    .line 663
    .restart local v1    # "nextState":[I
    .restart local v2    # "textColors":Landroid/content/res/ColorStateList;
    :cond_4
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v3, :cond_5

    .line 664
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 665
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 669
    :goto_3
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 670
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 671
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 667
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 882
    iget-wide v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackRadius()F
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 1011
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()F
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    .prologue
    .line 1000
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    return v0
.end method

.method public getThumbRangeRatio()F
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    return v0
.end method

.method public getThumbWidth()F
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    int-to-float v0, v0

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    return v0
.end method

.method public isDrawDebugRect()Z
    .locals 1

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    return v0
.end method

.method public isFadeBack()Z
    .locals 1

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 547
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 549
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    if-nez v2, :cond_0

    .line 550
    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 552
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    if-nez v2, :cond_2

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 557
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-eqz v2, :cond_7

    .line 558
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 562
    .local v11, "below":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 564
    .local v8, "above":Landroid/graphics/drawable/Drawable;
    :goto_2
    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v10, v2

    .line 565
    .local v10, "alpha":I
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 566
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 567
    rsub-int v10, v10, 0xff

    .line 568
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 569
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 605
    .end local v8    # "above":Landroid/graphics/drawable/Drawable;
    .end local v10    # "alpha":I
    .end local v11    # "below":Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 606
    .local v14, "switchText":Landroid/text/Layout;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    .line 607
    .local v16, "textRectF":Landroid/graphics/RectF;
    :goto_5
    if-eqz v14, :cond_3

    if-eqz v16, :cond_3

    .line 608
    const/high16 v3, 0x437f0000    # 255.0f

    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v2

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x40400000    # 3.0f

    sub-float/2addr v2, v4

    :goto_6
    mul-float/2addr v2, v3

    float-to-int v10, v2

    .line 609
    .restart local v10    # "alpha":I
    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    .line 610
    .local v15, "textColor":I
    :goto_7
    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    .line 611
    .local v13, "colorAlpha":I
    mul-int v2, v13, v10

    div-int/lit16 v13, v2, 0xff

    .line 612
    invoke-virtual {v14}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual {v2, v13, v3, v4, v5}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 614
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 615
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 620
    .end local v10    # "alpha":I
    .end local v13    # "colorAlpha":I
    .end local v15    # "textColor":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgress:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 622
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v2, :cond_10

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 630
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    if-eqz v2, :cond_1

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v3, "#AA0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v3, "#0000FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v3, "#00CC00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 561
    .end local v14    # "switchText":Landroid/text/Layout;
    .end local v16    # "textRectF":Landroid/graphics/RectF;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 562
    .restart local v11    # "below":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 571
    .end local v11    # "below":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 575
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v2, :cond_a

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 581
    .local v12, "belowColor":I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    .line 584
    .local v9, "aboveColor":I
    :goto_b
    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v10, v2

    .line 585
    .restart local v10    # "alpha":I
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    .line 586
    .restart local v13    # "colorAlpha":I
    mul-int v2, v13, v10

    div-int/lit16 v13, v2, 0xff

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual {v2, v13, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 591
    rsub-int v10, v10, 0xff

    .line 592
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    .line 593
    mul-int v2, v13, v10

    div-int/lit16 v13, v2, 0xff

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual {v2, v13, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    .line 580
    .end local v9    # "aboveColor":I
    .end local v10    # "alpha":I
    .end local v12    # "belowColor":I
    .end local v13    # "colorAlpha":I
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    goto/16 :goto_a

    .line 581
    .restart local v12    # "belowColor":I
    :cond_9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    goto :goto_b

    .line 599
    .end local v12    # "belowColor":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 605
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    goto/16 :goto_4

    .line 606
    .restart local v14    # "switchText":Landroid/text/Layout;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    goto/16 :goto_5

    .line 608
    .restart local v16    # "textRectF":Landroid/graphics/RectF;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v4, v6

    if-gez v2, :cond_e

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    goto/16 :goto_6

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 609
    .restart local v10    # "alpha":I
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    goto/16 :goto_7

    .line 626
    .end local v10    # "alpha":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 638
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    goto/16 :goto_9
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Lcom/kyleduo/switchbutton/SwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v5

    iput-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 277
    :cond_0
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 278
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Lcom/kyleduo/switchbutton/SwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v5

    iput-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 281
    :cond_1
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v3, v5

    .line 282
    .local v3, "onWidth":F
    :goto_0
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v1, v5

    .line 283
    .local v1, "offWidth":F
    :goto_1
    cmpl-float v5, v3, v4

    if-nez v5, :cond_2

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_6

    .line 284
    :cond_2
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    .line 289
    :goto_2
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 290
    .local v2, "onHeight":F
    :goto_3
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v0, v5

    .line 291
    .local v0, "offHeight":F
    :goto_4
    cmpl-float v5, v2, v4

    if-nez v5, :cond_3

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_9

    .line 292
    :cond_3
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    .line 297
    :goto_5
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->measureWidth(I)I

    move-result v4

    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->measureHeight(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/kyleduo/switchbutton/SwitchButton;->setMeasuredDimension(II)V

    .line 298
    return-void

    .end local v0    # "offHeight":F
    .end local v1    # "offWidth":F
    .end local v2    # "onHeight":F
    .end local v3    # "onWidth":F
    :cond_4
    move v3, v4

    .line 281
    goto :goto_0

    .restart local v3    # "onWidth":F
    :cond_5
    move v1, v4

    .line 282
    goto :goto_1

    .line 286
    .restart local v1    # "offWidth":F
    :cond_6
    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    goto :goto_2

    :cond_7
    move v2, v4

    .line 289
    goto :goto_3

    .restart local v2    # "onHeight":F
    :cond_8
    move v0, v4

    .line 290
    goto :goto_4

    .line 294
    .restart local v0    # "offHeight":F
    :cond_9
    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    goto :goto_5
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1100
    move-object v0, p1

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    .line 1101
    .local v0, "ss":Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    .line 1103
    invoke-virtual {v0}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    .line 1105
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1091
    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1092
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    invoke-direct {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1093
    .local v0, "ss":Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    .line 1094
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    .line 1095
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 466
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->onSizeChanged(IIII)V

    .line 467
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 470
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    if-nez v8, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v6

    .line 683
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 685
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    sub-float v1, v8, v9

    .line 686
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    sub-float v2, v8, v9

    .line 688
    .local v2, "deltaY":F
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v6, v7

    .line 730
    goto :goto_0

    .line 690
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    .line 691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    .line 692
    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    iput v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    .line 693
    invoke-virtual {p0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    goto :goto_1

    .line 697
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 698
    .local v5, "x":F
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    sub-float v9, v5, v9

    iget-object v10, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    .line 699
    iget-boolean v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    if-nez v8, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 700
    :cond_2
    const/4 v8, 0x0

    cmpl-float v8, v2, v8

    if-eqz v8, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 701
    :cond_3
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->catchView()V

    .line 706
    :cond_4
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    goto :goto_1

    .line 702
    :cond_5
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    goto/16 :goto_0

    .line 711
    .end local v5    # "x":F
    :pswitch_2
    iput-boolean v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCatch:Z

    .line 712
    invoke-virtual {p0, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v4, v8

    .line 714
    .local v4, "time":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_6

    .line 715
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->performClick()Z

    goto/16 :goto_1

    .line 717
    :cond_6
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getStatusBasedOnPos()Z

    move-result v3

    .line 718
    .local v3, "nextStatus":Z
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v8

    if-eq v3, v8, :cond_7

    .line 719
    invoke-virtual {p0, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->playSoundEffect(I)V

    .line 720
    invoke-virtual {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 722
    :cond_7
    invoke-virtual {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    goto/16 :goto_1

    .line 688
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 760
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 1
    .param p1, "animationDuration"    # J

    .prologue
    .line 886
    iput-wide p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    .line 887
    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "backColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 929
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 930
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 933
    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1
    .param p1, "backColorRes"    # I

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    .line 937
    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "backDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 911
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 912
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 913
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 914
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 915
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 916
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 917
    return-void

    :cond_0
    move v0, v1

    .line 912
    goto :goto_0
.end method

.method public setBackDrawableRes(I)V
    .locals 1
    .param p1, "backDrawableRes"    # I

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 921
    return-void
.end method

.method public setBackRadius(F)V
    .locals 1
    .param p1, "backRadius"    # F

    .prologue
    .line 1019
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 1020
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 1023
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 796
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    .line 798
    :cond_0
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRestoring:Z

    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    .line 803
    :goto_0
    return-void

    .line 801
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedImmediately(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 852
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 853
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 856
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    .line 857
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 858
    return-void

    .line 856
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 816
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 817
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 823
    :goto_0
    return-void

    .line 819
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 820
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 821
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setCheckedNoEvent(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 806
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 807
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 813
    :goto_0
    return-void

    .line 809
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 810
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 811
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setDrawDebugRect(Z)V
    .locals 0
    .param p1, "drawDebugRect"    # Z

    .prologue
    .line 877
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 878
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 879
    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0
    .param p1, "fadeBack"    # Z

    .prologue
    .line 1030
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    .line 1031
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 847
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 848
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 849
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "onText"    # Ljava/lang/CharSequence;
    .param p2, "offText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 1049
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 1050
    iput-object p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 1052
    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 1053
    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 1055
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 1056
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 1057
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 1058
    return-void
.end method

.method public setTextAdjust(I)V
    .locals 1
    .param p1, "textAdjust"    # I

    .prologue
    .line 1083
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextAdjust:I

    .line 1084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 1085
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 1086
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 1087
    return-void
.end method

.method public setTextExtra(I)V
    .locals 1
    .param p1, "textExtra"    # I

    .prologue
    .line 1076
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextExtra:I

    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 1078
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 1079
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 1080
    return-void
.end method

.method public setTextThumbInset(I)V
    .locals 1
    .param p1, "textThumbInset"    # I

    .prologue
    .line 1069
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextThumbInset:I

    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 1071
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 1072
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 1073
    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 944
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 945
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 949
    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1
    .param p1, "thumbColorRes"    # I

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    .line 953
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumbDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 894
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 895
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 896
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 897
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 898
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 899
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 900
    return-void

    :cond_0
    move v0, v1

    .line 895
    goto :goto_0
.end method

.method public setThumbDrawableRes(I)V
    .locals 1
    .param p1, "thumbDrawableRes"    # I

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 904
    return-void
.end method

.method public setThumbMargin(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 979
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 981
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 982
    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "thumbMargin"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x0

    .line 971
    if-nez p1, :cond_0

    .line 972
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbMargin(FFFF)V

    .line 976
    :goto_0
    return-void

    .line 974
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbMargin(FFFF)V

    goto :goto_0
.end method

.method public setThumbRadius(F)V
    .locals 1
    .param p1, "thumbRadius"    # F

    .prologue
    .line 1004
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    .line 1005
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 1008
    :cond_0
    return-void
.end method

.method public setThumbRangeRatio(F)V
    .locals 1
    .param p1, "thumbRangeRatio"    # F

    .prologue
    .line 960
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRangeRatio:F

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 963
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 964
    return-void
.end method

.method public setThumbSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 985
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbWidth:I

    .line 986
    iput p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbHeight:I

    .line 987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mReady:Z

    .line 988
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 989
    return-void
.end method

.method public setTintColor(I)V
    .locals 2
    .param p1, "tintColor"    # I

    .prologue
    const/4 v1, 0x0

    .line 1038
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 1039
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v0}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 1040
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v0}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 1041
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 1042
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 1044
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 1045
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 1046
    return-void
.end method

.method public toggleImmediately()V
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 862
    return-void

    .line 861
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleImmediatelyNoEvent()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggleImmediately()V

    .line 843
    :goto_0
    return-void

    .line 839
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 840
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggleImmediately()V

    .line 841
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public toggleNoEvent()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggle()V

    .line 833
    :goto_0
    return-void

    .line 829
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 830
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggle()V

    .line 831
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
