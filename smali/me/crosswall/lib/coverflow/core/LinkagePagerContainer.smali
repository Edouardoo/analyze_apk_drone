.class public Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;
.super Landroid/widget/FrameLayout;
.source "LinkagePagerContainer.java"

# interfaces
.implements Landroid/support/v4/view/LinkagePager$OnPageChangeListener;


# instance fields
.field private isOverlapEnabled:Z

.field private mCenter:Landroid/graphics/Point;

.field private mInitialTouch:Landroid/graphics/Point;

.field private mNeedsRedraw:Z

.field private mPager:Landroid/support/v4/view/LinkagePager;

.field private pageItemClickListener:Lme/crosswall/lib/coverflow/core/PageItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mNeedsRedraw:Z

    .line 26
    iput-boolean v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->isOverlapEnabled:Z

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mCenter:Landroid/graphics/Point;

    .line 79
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    .line 32
    invoke-direct {p0}, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mNeedsRedraw:Z

    .line 26
    iput-boolean v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->isOverlapEnabled:Z

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mCenter:Landroid/graphics/Point;

    .line 79
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    .line 37
    invoke-direct {p0}, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mNeedsRedraw:Z

    .line 26
    iput-boolean v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->isOverlapEnabled:Z

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mCenter:Landroid/graphics/Point;

    .line 79
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    .line 42
    invoke-direct {p0}, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->setClipChildren(Z)V

    .line 52
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getViewPager()Landroid/support/v4/view/LinkagePager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/LinkagePager;

    iput-object v1, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    .line 68
    iget-object v1, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/LinkagePager;->addOnPageChangeListener(Landroid/support/v4/view/LinkagePager$OnPageChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The root child of PagerContainer must be a ViewPager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 161
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mNeedsRedraw:Z

    .line 162
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 116
    iget-boolean v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mNeedsRedraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->invalidate()V

    .line 117
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/high16 v8, 0x41000000    # 8.0f

    const/4 v7, 0x0

    .line 121
    iget-boolean v5, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->isOverlapEnabled:Z

    if-eqz v5, :cond_2

    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "loopCounter":I
    const/4 v0, 0x2

    .line 127
    .local v0, "PAGER_LOOP_THRESHOLD":I
    if-lt p1, v0, :cond_0

    .line 128
    sub-int v2, p1, v0

    .line 131
    :cond_0
    iget-object v5, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v5}, Landroid/support/v4/view/LinkagePager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 133
    iget-object v5, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v5}, Landroid/support/v4/view/LinkagePager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    iget-object v6, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v5, v6, v2}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v3

    .line 136
    .local v3, "object":Ljava/lang/Object;
    instance-of v5, v3, Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_4

    move-object v1, v3

    .line 137
    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 138
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-ne v2, p1, :cond_3

    .line 139
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 152
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 153
    add-int v5, p1, v0

    if-lt v2, v5, :cond_0

    .line 157
    .end local v0    # "PAGER_LOOP_THRESHOLD":I
    .end local v2    # "loopCounter":I
    :cond_2
    return-void

    .line 141
    .restart local v0    # "PAGER_LOOP_THRESHOLD":I
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v2    # "loopCounter":I
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_4
    move-object v4, v3

    .line 144
    check-cast v4, Landroid/view/View;

    .line 145
    .local v4, "view":Landroid/view/View;
    if-ne v2, p1, :cond_5

    .line 146
    invoke-static {v4, v8}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 148
    :cond_5
    invoke-static {v4, v7}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 83
    const-string v0, "@@@"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mCenter:Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 85
    iget-object v0, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mCenter:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 86
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    iget-object v3, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v3, p1}, Landroid/support/v4/view/LinkagePager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 92
    :pswitch_0
    iget-object v3, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 93
    iget-object v3, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 94
    iget-object v3, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-virtual {p0}, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->getWidth()I

    move-result v3

    iget-object v4, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v4}, Landroid/support/v4/view/LinkagePager;->getWidth()I

    move-result v4

    iget-object v5, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lme/crosswall/lib/coverflow/core/Utils;->isInNonTappableRegion(IIFF)I

    move-result v1

    .line 98
    .local v1, "delta":I
    if-eqz v1, :cond_0

    .line 99
    iget-object v3, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v3}, Landroid/support/v4/view/LinkagePager;->getCurrentItem()I

    move-result v2

    .line 100
    .local v2, "preItem":I
    add-int v0, v2, v1

    .line 101
    .local v0, "currentItem":I
    iget-object v3, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/LinkagePager;->setCurrentItem(I)V

    .line 102
    iget-object v3, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mInitialTouch:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 103
    iget-object v3, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->pageItemClickListener:Lme/crosswall/lib/coverflow/core/PageItemClickListener;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->pageItemClickListener:Lme/crosswall/lib/coverflow/core/PageItemClickListener;

    iget-object v4, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->mPager:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/LinkagePager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lme/crosswall/lib/coverflow/core/PageItemClickListener;->onItemClick(Landroid/view/View;I)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOverlapEnabled(Z)V
    .locals 0
    .param p1, "overlapEnabled"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->isOverlapEnabled:Z

    .line 57
    return-void
.end method

.method public setPageItemClickListener(Lme/crosswall/lib/coverflow/core/PageItemClickListener;)V
    .locals 0
    .param p1, "pageItemClickListener"    # Lme/crosswall/lib/coverflow/core/PageItemClickListener;

    .prologue
    .line 60
    iput-object p1, p0, Lme/crosswall/lib/coverflow/core/LinkagePagerContainer;->pageItemClickListener:Lme/crosswall/lib/coverflow/core/PageItemClickListener;

    .line 61
    return-void
.end method
