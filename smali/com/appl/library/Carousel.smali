.class public Lcom/appl/library/Carousel;
.super Landroid/view/ViewGroup;
.source "Carousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appl/library/Carousel$ViewCache;,
        Lcom/appl/library/Carousel$OnItemSelectedListener;
    }
.end annotation


# static fields
.field protected static final LAYOUT_MODE_AFTER:I = 0x0

.field protected static final LAYOUT_MODE_TO_BEFORE:I = 0x1

.field protected static final TOUCH_STATE_ALIGN:I = 0x3

.field protected static final TOUCH_STATE_FLING:I = 0x2

.field protected static final TOUCH_STATE_RESTING:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field protected final NO_VALUE:I

.field protected mAdapter:Landroid/widget/Adapter;

.field protected final mCache:Lcom/appl/library/Carousel$ViewCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appl/library/Carousel$ViewCache",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildHeight:I

.field protected mChildWidth:I

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mFirstVisibleChild:I

.field private mLastMotionX:F

.field private mLastVisibleChild:I

.field protected mLeftEdge:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnItemSelectedListener:Lcom/appl/library/Carousel$OnItemSelectedListener;

.field private mReverseOrderIndex:I

.field protected mRightEdge:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mSelection:I

.field private mSlowDownCoefficient:I

.field protected mSpacing:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appl/library/Carousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/appl/library/Carousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const v3, -0x7ffff90f

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v3, p0, Lcom/appl/library/Carousel;->NO_VALUE:I

    .line 51
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/appl/library/Carousel;->mTouchState:I

    .line 60
    new-instance v1, Lcom/appl/library/Carousel$1;

    invoke-direct {v1, p0}, Lcom/appl/library/Carousel$1;-><init>(Lcom/appl/library/Carousel;)V

    iput-object v1, p0, Lcom/appl/library/Carousel;->mDataObserver:Landroid/database/DataSetObserver;

    .line 78
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/appl/library/Carousel;->mSpacing:F

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    .line 86
    iput v4, p0, Lcom/appl/library/Carousel;->mSlowDownCoefficient:I

    .line 88
    const/16 v1, 0xf0

    iput v1, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    .line 89
    const/16 v1, 0x168

    iput v1, p0, Lcom/appl/library/Carousel;->mChildHeight:I

    .line 97
    new-instance v1, Lcom/appl/library/Carousel$ViewCache;

    invoke-direct {v1}, Lcom/appl/library/Carousel$ViewCache;-><init>()V

    iput-object v1, p0, Lcom/appl/library/Carousel;->mCache:Lcom/appl/library/Carousel$ViewCache;

    .line 99
    iput v3, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    .line 100
    iput v3, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    .line 115
    invoke-virtual {p0, v4}, Lcom/appl/library/Carousel;->setChildrenDrawingOrderEnabled(Z)V

    .line 116
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 117
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/appl/library/Carousel;->mTouchSlop:I

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/appl/library/Carousel;->mMinimumVelocity:I

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/appl/library/Carousel;->mMaximumVelocity:I

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/appl/library/Carousel;)V
    .locals 0
    .param p0, "x0"    # Lcom/appl/library/Carousel;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/appl/library/Carousel;->reset()V

    return-void
.end method

.method private clearChildrenCache()V
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appl/library/Carousel;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 746
    return-void
.end method

.method private enableChildrenCache()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 740
    invoke-virtual {p0, v0}, Lcom/appl/library/Carousel;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 741
    invoke-virtual {p0, v0}, Lcom/appl/library/Carousel;->setChildrenDrawingCacheEnabled(Z)V

    .line 742
    return-void
.end method

.method private reset()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v7, -0x7ffff90f

    .line 323
    iget-object v6, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v6}, Landroid/widget/Adapter;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->requestLayout()V

    goto :goto_0

    .line 332
    :cond_2
    iget v6, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    invoke-virtual {p0, v6}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 333
    .local v4, "selectedView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 334
    .local v2, "selectedLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 337
    .local v3, "selectedTop":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->removeAllViewsInLayout()V

    .line 338
    iput v7, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    .line 339
    iput v7, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    .line 341
    iget-object v6, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    iget v7, p0, Lcom/appl/library/Carousel;->mSelection:I

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 342
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p0, v5, v9}, Lcom/appl/library/Carousel;->addAndMeasureChild(Landroid/view/View;I)Landroid/view/View;

    .line 343
    iput v9, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    .line 345
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v1, v2, v6

    .line 346
    .local v1, "right":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v0, v3, v6

    .line 347
    .local v0, "bottom":I
    invoke-virtual {v5, v2, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 349
    iget v6, p0, Lcom/appl/library/Carousel;->mSelection:I

    iput v6, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    .line 350
    iget v6, p0, Lcom/appl/library/Carousel;->mSelection:I

    iput v6, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    .line 352
    iget v6, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    iget-object v7, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v7}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    .line 353
    iput v1, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    .line 355
    :cond_3
    iget v6, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    if-nez v6, :cond_4

    .line 356
    iput v2, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    .line 359
    :cond_4
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->refill()V

    .line 361
    invoke-virtual {p0, v5}, Lcom/appl/library/Carousel;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    .line 362
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateReverseOrderIndex()V
    .locals 12

    .prologue
    .line 227
    iget v6, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    .line 228
    .local v6, "oldReverseIndex":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getScrollX()I

    move-result v11

    add-int v8, v10, v11

    .line 229
    .local v8, "screenCenter":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v0

    .line 231
    .local v0, "c":I
    const v3, 0x7fffffff

    .line 232
    .local v3, "minDiff":I
    const/4 v4, -0x1

    .line 235
    .local v4, "minDiffIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 236
    invoke-virtual {p0, v2}, Lcom/appl/library/Carousel;->getChildCenter(I)I

    move-result v9

    .line 237
    .local v9, "viewCenter":I
    sub-int v10, v8, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 238
    .local v1, "diff":I
    if-ge v1, v3, :cond_0

    .line 239
    move v3, v1

    .line 240
    move v4, v2

    .line 235
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "diff":I
    .end local v9    # "viewCenter":I
    :cond_1
    const v10, 0x7fffffff

    if-eq v3, v10, :cond_2

    .line 245
    iput v4, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    .line 248
    :cond_2
    iget v10, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    if-eq v6, v10, :cond_3

    .line 249
    invoke-virtual {p0, v6}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 250
    .local v7, "oldSelected":Landroid/view/View;
    iget v10, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    invoke-virtual {p0, v10}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 252
    .local v5, "newSelected":Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setSelected(Z)V

    .line 253
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    .line 255
    iget v10, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    iget v11, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/appl/library/Carousel;->mSelection:I

    .line 256
    iget-object v10, p0, Lcom/appl/library/Carousel;->mOnItemSelectedListener:Lcom/appl/library/Carousel$OnItemSelectedListener;

    if-eqz v10, :cond_3

    .line 257
    iget-object v10, p0, Lcom/appl/library/Carousel;->mOnItemSelectedListener:Lcom/appl/library/Carousel$OnItemSelectedListener;

    iget v11, p0, Lcom/appl/library/Carousel;->mSelection:I

    invoke-interface {v10, v5, v11}, Lcom/appl/library/Carousel$OnItemSelectedListener;->onItemSelected(Landroid/view/View;I)V

    .line 261
    .end local v5    # "newSelected":Landroid/view/View;
    .end local v7    # "oldSelected":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method protected addAndMeasureChild(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutMode"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    iget v5, p0, Lcom/appl/library/Carousel;->mChildHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    :cond_0
    if-ne p2, v6, :cond_1

    const/4 v0, 0x0

    .line 309
    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3, v6}, Lcom/appl/library/Carousel;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 311
    iget v3, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 312
    .local v2, "pwms":I
    iget v3, p0, Lcom/appl/library/Carousel;->mChildHeight:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 313
    .local v1, "phms":I
    invoke-virtual {p0, p1, v2, v1}, Lcom/appl/library/Carousel;->measureChild(Landroid/view/View;II)V

    .line 314
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->isChildrenDrawnWithCacheEnabled()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 316
    return-object p1

    .line 308
    .end local v0    # "index":I
    .end local v1    # "phms":I
    .end local v2    # "pwms":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const v6, -0x7ffff90f

    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 157
    .local v0, "centerItemLeft":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 159
    .local v1, "centerItemRight":I
    iget v3, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    iget v4, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_0

    .line 160
    iget-object v3, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 162
    :cond_0
    iget v3, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    iget v4, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    sub-int/2addr v4, v0

    if-ge v3, v4, :cond_1

    .line 163
    iget-object v3, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    iget-object v3, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    iget-object v4, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 168
    iget-object v3, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 169
    iput v5, p0, Lcom/appl/library/Carousel;->mTouchState:I

    .line 170
    invoke-direct {p0}, Lcom/appl/library/Carousel;->clearChildrenCache()V

    .line 182
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->refill()V

    .line 183
    invoke-direct {p0}, Lcom/appl/library/Carousel;->updateReverseOrderIndex()V

    .line 184
    return-void

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 173
    .local v2, "x":I
    invoke-virtual {p0, v2, v5}, Lcom/appl/library/Carousel;->scrollTo(II)V

    .line 175
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->postInvalidate()V

    goto :goto_0

    .line 177
    .end local v2    # "x":I
    :cond_4
    iget v3, p0, Lcom/appl/library/Carousel;->mTouchState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 178
    iput v5, p0, Lcom/appl/library/Carousel;->mTouchState:I

    .line 179
    invoke-direct {p0}, Lcom/appl/library/Carousel;->clearChildrenCache()V

    goto :goto_0
.end method

.method public fling(II)V
    .locals 13
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v7, 0x0

    const v4, -0x7ffff90f

    .line 718
    iget v0, p0, Lcom/appl/library/Carousel;->mSlowDownCoefficient:I

    div-int/2addr p1, v0

    .line 720
    const/4 v0, 0x2

    iput v0, p0, Lcom/appl/library/Carousel;->mTouchState:I

    .line 721
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getScrollX()I

    move-result v1

    .line 722
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getScrollY()I

    move-result v2

    .line 724
    .local v2, "y":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v9, v0, v3

    .line 725
    .local v9, "centerItemLeft":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v10, v0, v3

    .line 728
    .local v10, "centerItemRight":I
    iget v0, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    if-ne v0, v4, :cond_0

    const v12, 0x7fffffff

    .line 730
    .local v12, "rightInPixels":I
    :goto_0
    iget v0, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    if-ne v0, v4, :cond_1

    const/high16 v0, -0x80000000

    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v3

    add-int v11, v0, v3

    .line 733
    .local v11, "leftInPixels":I
    :goto_1
    iget-object v0, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    sub-int v5, v11, v9

    sub-int v3, v12, v10

    add-int/lit8 v6, v3, 0x1

    move v3, p1

    move v4, p2

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 736
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->invalidate()V

    .line 737
    return-void

    .line 729
    .end local v11    # "leftInPixels":I
    .end local v12    # "rightInPixels":I
    :cond_0
    iget v12, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    .restart local v12    # "rightInPixels":I
    goto :goto_0

    .line 731
    :cond_1
    iget v11, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    .restart local v11    # "leftInPixels":I
    goto :goto_1
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method protected getChildCenter(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appl/library/Carousel;->getChildCenter(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getChildCenter(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 511
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 525
    iget v0, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    if-ge p2, v0, :cond_0

    .line 528
    .end local p2    # "i":I
    :goto_0
    return p2

    .restart local p2    # "i":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    sub-int v1, p2, v1

    sub-int p2, v0, v1

    goto :goto_0
.end method

.method protected getPartOfViewCoveredBySibling()I
    .locals 3

    .prologue
    .line 379
    iget v0, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/appl/library/Carousel;->mSpacing:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    invoke-virtual {p0, v0}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/appl/library/Carousel;->mSelection:I

    return v0
.end method

.method protected getViewFromAdapter(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/appl/library/Carousel;->mCache:Lcom/appl/library/Carousel$ViewCache;

    invoke-virtual {v1}, Lcom/appl/library/Carousel$ViewCache;->getCachedView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected layoutChild(Landroid/view/View;I)I
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 287
    .local v4, "verticalCenter":I
    move v1, p2

    .line 288
    .local v1, "l":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 290
    .local v3, "t":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v2, v1, v5

    .line 291
    .local v2, "r":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v0, v3, v5

    .line 293
    .local v0, "b":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/appl/library/Carousel;->mSpacing:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v1

    return v5
.end method

.method protected layoutChildToBefore(Landroid/view/View;I)I
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "right"    # I

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 270
    .local v4, "verticalCenter":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v1, p2, v5

    .line 271
    .local v1, "l":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 273
    .local v3, "t":I
    move v2, p2

    .line 274
    .local v2, "r":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v0, v3, v5

    .line 276
    .local v0, "b":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/appl/library/Carousel;->mSpacing:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v5, v2, v5

    return v5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 549
    .local v0, "action":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    iget v6, p0, Lcom/appl/library/Carousel;->mTouchState:I

    if-ne v6, v8, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v8

    .line 553
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 554
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 555
    .local v5, "y":F
    packed-switch v0, :pswitch_data_0

    .line 598
    :cond_2
    :goto_1
    iget v6, p0, Lcom/appl/library/Carousel;->mTouchState:I

    if-eq v6, v8, :cond_0

    move v8, v7

    goto :goto_0

    .line 566
    :pswitch_0
    iget v6, p0, Lcom/appl/library/Carousel;->mLastMotionX:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v3, v6

    .line 568
    .local v3, "xDiff":I
    iget v1, p0, Lcom/appl/library/Carousel;->mTouchSlop:I

    .line 569
    .local v1, "touchSlop":I
    if-le v3, v1, :cond_3

    move v4, v8

    .line 571
    .local v4, "xMoved":Z
    :goto_2
    if-eqz v4, :cond_2

    .line 573
    iput v8, p0, Lcom/appl/library/Carousel;->mTouchState:I

    .line 574
    invoke-direct {p0}, Lcom/appl/library/Carousel;->enableChildrenCache()V

    .line 575
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->cancelLongPress()V

    goto :goto_1

    .end local v4    # "xMoved":Z
    :cond_3
    move v4, v7

    .line 569
    goto :goto_2

    .line 582
    .end local v1    # "touchSlop":I
    .end local v3    # "xDiff":I
    :pswitch_1
    iput v2, p0, Lcom/appl/library/Carousel;->mLastMotionX:F

    .line 589
    iget-object v6, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    iput v6, p0, Lcom/appl/library/Carousel;->mTouchState:I

    goto :goto_1

    :cond_4
    move v6, v8

    goto :goto_3

    .line 593
    :pswitch_2
    iput v7, p0, Lcom/appl/library/Carousel;->mTouchState:I

    .line 594
    invoke-direct {p0}, Lcom/appl/library/Carousel;->clearChildrenCache()V

    goto :goto_1

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 189
    iget-object v7, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v7}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v5, 0x0

    .line 193
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 194
    iget v7, p0, Lcom/appl/library/Carousel;->mSelection:I

    invoke-virtual {p0, v7}, Lcom/appl/library/Carousel;->getViewFromAdapter(I)Landroid/view/View;

    move-result-object v5

    .line 195
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/appl/library/Carousel;->addAndMeasureChild(Landroid/view/View;I)Landroid/view/View;

    .line 197
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 198
    .local v1, "horizontalCenter":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getHeight()I

    move-result v7

    div-int/lit8 v6, v7, 0x2

    .line 199
    .local v6, "verticalCenter":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v1, v7

    .line 200
    .local v2, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 201
    .local v3, "right":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v6, v7

    .line 202
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 203
    .local v0, "bottom":I
    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 205
    iget v7, p0, Lcom/appl/library/Carousel;->mSelection:I

    iput v7, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    .line 206
    iget v7, p0, Lcom/appl/library/Carousel;->mSelection:I

    iput v7, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    .line 208
    iget v7, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    iget-object v8, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v8}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    .line 209
    iput v3, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    .line 211
    :cond_2
    iget v7, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    if-nez v7, :cond_3

    .line 212
    iput v2, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    .line 216
    .end local v0    # "bottom":I
    .end local v1    # "horizontalCenter":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    .end local v6    # "verticalCenter":I
    :cond_3
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->refill()V

    .line 218
    if-eqz v5, :cond_4

    .line 219
    invoke-virtual {p0, v5}, Lcom/appl/library/Carousel;->indexOfChild(Landroid/view/View;)I

    move-result v7

    iput v7, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    .line 220
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/appl/library/Carousel;->updateReverseOrderIndex()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 635
    iget-object v10, p0, Lcom/appl/library/Carousel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_0

    .line 636
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/appl/library/Carousel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 638
    :cond_0
    iget-object v10, p0, Lcom/appl/library/Carousel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 641
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 642
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 644
    .local v8, "y":F
    packed-switch v0, :pswitch_data_0

    .line 714
    :cond_1
    :goto_0
    return v9

    .line 650
    :pswitch_0
    iget-object v10, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_2

    .line 651
    iget-object v10, p0, Lcom/appl/library/Carousel;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10, v9}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 655
    :cond_2
    iput v5, p0, Lcom/appl/library/Carousel;->mLastMotionX:F

    goto :goto_0

    .line 660
    :pswitch_1
    iget v10, p0, Lcom/appl/library/Carousel;->mTouchState:I

    if-ne v10, v9, :cond_3

    .line 662
    iget v10, p0, Lcom/appl/library/Carousel;->mLastMotionX:F

    sub-float/2addr v10, v5

    float-to-int v1, v10

    .line 663
    .local v1, "deltaX":I
    iput v5, p0, Lcom/appl/library/Carousel;->mLastMotionX:F

    .line 665
    invoke-virtual {p0, v1}, Lcom/appl/library/Carousel;->scrollByDelta(I)V

    goto :goto_0

    .line 667
    .end local v1    # "deltaX":I
    :cond_3
    iget v10, p0, Lcom/appl/library/Carousel;->mLastMotionX:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v6, v10

    .line 669
    .local v6, "xDiff":I
    iget v4, p0, Lcom/appl/library/Carousel;->mTouchSlop:I

    .line 670
    .local v4, "touchSlop":I
    if-le v6, v4, :cond_4

    move v7, v9

    .line 673
    .local v7, "xMoved":Z
    :cond_4
    if-eqz v7, :cond_1

    .line 675
    iput v9, p0, Lcom/appl/library/Carousel;->mTouchState:I

    .line 676
    invoke-direct {p0}, Lcom/appl/library/Carousel;->enableChildrenCache()V

    .line 677
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->cancelLongPress()V

    goto :goto_0

    .line 683
    .end local v4    # "touchSlop":I
    .end local v6    # "xDiff":I
    .end local v7    # "xMoved":Z
    :pswitch_2
    iget v10, p0, Lcom/appl/library/Carousel;->mTouchState:I

    if-ne v10, v9, :cond_6

    .line 685
    iget-object v10, p0, Lcom/appl/library/Carousel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    iget v12, p0, Lcom/appl/library/Carousel;->mMaximumVelocity:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 686
    iget-object v10, p0, Lcom/appl/library/Carousel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    float-to-int v2, v10

    .line 687
    .local v2, "initialXVelocity":I
    iget-object v10, p0, Lcom/appl/library/Carousel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v3, v10

    .line 689
    .local v3, "initialYVelocity":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/appl/library/Carousel;->mMinimumVelocity:I

    if-le v10, v11, :cond_5

    .line 690
    neg-int v10, v2

    neg-int v11, v3

    invoke-virtual {p0, v10, v11}, Lcom/appl/library/Carousel;->fling(II)V

    .line 697
    :goto_1
    iget-object v10, p0, Lcom/appl/library/Carousel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 698
    iget-object v10, p0, Lcom/appl/library/Carousel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 699
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/appl/library/Carousel;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 693
    :cond_5
    invoke-direct {p0}, Lcom/appl/library/Carousel;->clearChildrenCache()V

    .line 694
    iput v7, p0, Lcom/appl/library/Carousel;->mTouchState:I

    goto :goto_1

    .line 706
    .end local v2    # "initialXVelocity":I
    .end local v3    # "initialYVelocity":I
    :cond_6
    invoke-direct {p0}, Lcom/appl/library/Carousel;->clearChildrenCache()V

    .line 707
    iput v7, p0, Lcom/appl/library/Carousel;->mTouchState:I

    goto :goto_0

    .line 711
    :pswitch_3
    iput v7, p0, Lcom/appl/library/Carousel;->mTouchState:I

    goto/16 :goto_0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected refill()V
    .locals 3

    .prologue
    .line 366
    iget-object v2, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getScrollX()I

    move-result v0

    .line 369
    .local v0, "leftScreenEdge":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v2

    add-int v1, v0, v2

    .line 371
    .local v1, "rightScreenEdge":I
    invoke-virtual {p0, v0}, Lcom/appl/library/Carousel;->removeNonVisibleViewsLeftToRight(I)V

    .line 372
    invoke-virtual {p0, v1}, Lcom/appl/library/Carousel;->removeNonVisibleViewsRightToLeft(I)V

    .line 374
    invoke-virtual {p0, v0, v1}, Lcom/appl/library/Carousel;->refillLeftToRight(II)V

    .line 375
    invoke-virtual {p0, v0}, Lcom/appl/library/Carousel;->refillRightToLeft(I)V

    goto :goto_0
.end method

.method protected refillLeftToRight(II)V
    .locals 6
    .param p1, "leftScreenEdge"    # I
    .param p2, "rightScreenEdge"    # I

    .prologue
    const/4 v5, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 425
    .local v1, "childLeft":I
    iget v3, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/appl/library/Carousel;->mSpacing:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int v2, v1, v3

    .line 427
    .local v2, "newLeft":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getPartOfViewCoveredBySibling()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v3, p2, :cond_1

    iget v3, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    iget-object v4, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    .line 428
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 429
    iget v3, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    .line 431
    iget v3, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    invoke-virtual {p0, v3}, Lcom/appl/library/Carousel;->getViewFromAdapter(I)Landroid/view/View;

    move-result-object v0

    .line 432
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 434
    invoke-virtual {p0, v0, v5}, Lcom/appl/library/Carousel;->addAndMeasureChild(Landroid/view/View;I)Landroid/view/View;

    .line 435
    invoke-virtual {p0, v0, v2}, Lcom/appl/library/Carousel;->layoutChild(Landroid/view/View;I)I

    move-result v2

    .line 437
    iget v3, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    iget-object v4, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    goto :goto_0

    .line 441
    :cond_1
    return-void
.end method

.method protected refillRightToLeft(I)V
    .locals 6
    .param p1, "leftScreenEdge"    # I

    .prologue
    const/4 v5, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 412
    :cond_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p0, v5}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 396
    .local v1, "childRight":I
    iget v3, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/appl/library/Carousel;->mSpacing:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v2, v1, v3

    .line 398
    .local v2, "newRight":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getPartOfViewCoveredBySibling()I

    move-result v3

    sub-int v3, v2, v3

    if-le v3, p1, :cond_0

    iget v3, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    if-lez v3, :cond_0

    .line 399
    iget v3, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    .line 401
    iget v3, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    invoke-virtual {p0, v3}, Lcom/appl/library/Carousel;->getViewFromAdapter(I)Landroid/view/View;

    move-result-object v0

    .line 402
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 403
    iget v3, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    .line 405
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/appl/library/Carousel;->addAndMeasureChild(Landroid/view/View;I)Landroid/view/View;

    .line 406
    invoke-virtual {p0, v0, v2}, Lcom/appl/library/Carousel;->layoutChildToBefore(Landroid/view/View;I)I

    move-result v2

    .line 408
    iget v3, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    if-gtz v3, :cond_2

    .line 409
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    goto :goto_0
.end method

.method protected removeNonVisibleViewsLeftToRight(I)V
    .locals 6
    .param p1, "leftScreenEdge"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 476
    :cond_0
    return-void

    .line 451
    :cond_1
    invoke-virtual {p0, v4}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 453
    .local v0, "firstChild":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/appl/library/Carousel;->mSpacing:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 456
    invoke-virtual {p0, v4, v5}, Lcom/appl/library/Carousel;->removeViewsInLayout(II)V

    .line 458
    iget-object v1, p0, Lcom/appl/library/Carousel;->mCache:Lcom/appl/library/Carousel$ViewCache;

    invoke-virtual {v1, v0}, Lcom/appl/library/Carousel$ViewCache;->cacheView(Landroid/view/View;)V

    .line 460
    iget v1, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appl/library/Carousel;->mFirstVisibleChild:I

    .line 461
    iget v1, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    .line 463
    iget v1, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 470
    invoke-virtual {p0, v4}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeNonVisibleViewsRightToLeft(I)V
    .locals 5
    .param p1, "rightScreenEdge"    # I

    .prologue
    const/4 v4, 0x1

    .line 482
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 507
    :cond_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 486
    .local v0, "lastChild":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/appl/library/Carousel;->mSpacing:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/appl/library/Carousel;->removeViewsInLayout(II)V

    .line 491
    iget-object v1, p0, Lcom/appl/library/Carousel;->mCache:Lcom/appl/library/Carousel$ViewCache;

    invoke-virtual {v1, v0}, Lcom/appl/library/Carousel$ViewCache;->cacheView(Landroid/view/View;)V

    .line 493
    iget v1, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/appl/library/Carousel;->mLastVisibleChild:I

    .line 494
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/appl/library/Carousel;->mReverseOrderIndex:I

    if-eq v1, v2, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 501
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/appl/library/Carousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 503
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected scrollByDelta(I)V
    .locals 8
    .param p1, "deltaX"    # I

    .prologue
    const v7, -0x7ffff90f

    .line 603
    iget v5, p0, Lcom/appl/library/Carousel;->mSlowDownCoefficient:I

    div-int/2addr p1, v5

    .line 605
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 606
    .local v0, "centerItemLeft":I
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 610
    .local v1, "centerItemRight":I
    iget v5, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    if-ne v5, v7, :cond_1

    .line 611
    const v3, 0x7fffffff

    .line 616
    .local v3, "rightInPixels":I
    :goto_0
    iget v5, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    if-ne v5, v7, :cond_2

    .line 617
    const/high16 v5, -0x80000000

    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getWidth()I

    move-result v6

    add-int v2, v5, v6

    .line 622
    .local v2, "leftInPixels":I
    :goto_1
    invoke-virtual {p0}, Lcom/appl/library/Carousel;->getScrollX()I

    move-result v5

    add-int v4, v5, p1

    .line 624
    .local v4, "x":I
    sub-int v5, v2, v0

    if-ge v4, v5, :cond_3

    .line 625
    sub-int v5, v2, v0

    sub-int v5, v4, v5

    sub-int/2addr p1, v5

    .line 630
    :cond_0
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/appl/library/Carousel;->scrollBy(II)V

    .line 631
    return-void

    .line 613
    .end local v2    # "leftInPixels":I
    .end local v3    # "rightInPixels":I
    .end local v4    # "x":I
    :cond_1
    iget v3, p0, Lcom/appl/library/Carousel;->mRightEdge:I

    .restart local v3    # "rightInPixels":I
    goto :goto_0

    .line 619
    :cond_2
    iget v2, p0, Lcom/appl/library/Carousel;->mLeftEdge:I

    .restart local v2    # "leftInPixels":I
    goto :goto_1

    .line 626
    .restart local v4    # "x":I
    :cond_3
    sub-int v5, v3, v1

    if-le v4, v5, :cond_0

    .line 627
    sub-int v5, v3, v1

    sub-int v5, v4, v5

    sub-int/2addr p1, v5

    goto :goto_2
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/appl/library/Carousel;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    .line 131
    iget-object v0, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/appl/library/Carousel;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 132
    invoke-direct {p0}, Lcom/appl/library/Carousel;->reset()V

    .line 133
    return-void
.end method

.method public setChildHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 762
    iput p1, p0, Lcom/appl/library/Carousel;->mChildHeight:I

    .line 763
    return-void
.end method

.method public setChildWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 758
    iput p1, p0, Lcom/appl/library/Carousel;->mChildWidth:I

    .line 759
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/appl/library/Carousel$OnItemSelectedListener;)V
    .locals 0
    .param p1, "onItemSelectedListener"    # Lcom/appl/library/Carousel$OnItemSelectedListener;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/appl/library/Carousel;->mOnItemSelectedListener:Lcom/appl/library/Carousel$OnItemSelectedListener;

    .line 772
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You are trying to set selection on widget without adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/appl/library/Carousel;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position index must be in range of adapter values (0 - getCount()-1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    iput p1, p0, Lcom/appl/library/Carousel;->mSelection:I

    .line 151
    invoke-direct {p0}, Lcom/appl/library/Carousel;->reset()V

    .line 152
    return-void
.end method

.method public setSlowDownCoefficient(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 766
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slowdown coeficient must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_0
    iput p1, p0, Lcom/appl/library/Carousel;->mSlowDownCoefficient:I

    .line 768
    return-void
.end method

.method public setSpacing(F)V
    .locals 0
    .param p1, "spacing"    # F

    .prologue
    .line 754
    iput p1, p0, Lcom/appl/library/Carousel;->mSpacing:F

    .line 755
    return-void
.end method
