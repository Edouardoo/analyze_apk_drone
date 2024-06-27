.class public Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;,
        Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;,
        Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;,
        Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;,
        Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;
    }
.end annotation


# static fields
.field private static final CIRCLE_LAYOUT:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_POSITION:I = -0x1

.field public static final MAX_VISIBLE_ITEMS:I = 0x2

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mCenterItemPosition:I

.field private final mCircleLayout:Z

.field private mDecoratedChildHeight:Ljava/lang/Integer;

.field private mDecoratedChildWidth:Ljava/lang/Integer;

.field private mItemsCount:I

.field private final mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

.field private final mOnCenterItemSelectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientation:I

.field private mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPendingScrollPosition:I

.field private mViewPostLayout:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;-><init>(IZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "circleLayout"    # Z

    .prologue
    const/4 v2, -0x1

    .line 84
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 58
    new-instance v0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;-><init>(I)V

    iput-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    .line 63
    iput v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    .line 85
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orientation should be HORIZONTAL or VERTICAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    .line 89
    iput-boolean p2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    .line 90
    iput v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 91
    return-void
.end method

.method static synthetic access$300(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->selectItemCenterPosition(I)V

    return-void
.end method

.method private bindChild(ILandroid/support/v7/widget/RecyclerView$Recycler;Z)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "childMeasuringNeeded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 549
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 551
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->addView(Landroid/view/View;)V

    .line 552
    invoke-virtual {p0, v0, v1, v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 554
    return-object v0
.end method

.method private calculateScrollForSelectingPosition(ILandroid/support/v7/widget/RecyclerView$State;)I
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 375
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    move v0, p1

    .line 376
    .local v0, "fixedItemPosition":I
    :goto_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v1, v0

    return v1

    .line 375
    .end local v0    # "fixedItemPosition":I
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 376
    .restart local v0    # "fixedItemPosition":I
    :cond_1
    iget-object v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    goto :goto_1
.end method

.method private detectOnItemSelectionChanged(FLandroid/support/v7/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "currentScrollPosition"    # F
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 398
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-static {p1, v2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result v0

    .line 399
    .local v0, "absCurrentScrollPosition":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 401
    .local v1, "centerItem":I
    iget v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    if-eq v2, v1, :cond_0

    .line 402
    iput v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    .line 403
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$2;

    invoke-direct {v3, p0, v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$2;-><init>(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    :cond_0
    return-void
.end method

.method private fillChildItem(IIIILcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;Landroid/support/v7/widget/RecyclerView$Recycler;IZ)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .param p5, "layoutOrder"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "i"    # I
    .param p8, "childMeasuringNeeded"    # Z

    .prologue
    .line 451
    invoke-static {p5}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v2

    invoke-direct {p0, v2, p6, p8}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->bindChild(ILandroid/support/v7/widget/RecyclerView$Recycler;Z)Landroid/view/View;

    move-result-object v1

    .line 452
    .local v1, "view":Landroid/view/View;
    int-to-float v2, p7

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "transformation":Lcom/azoft/carousellayoutmanager/ItemTransformation;
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    invoke-static {p5}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v3

    iget v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    invoke-interface {v2, v1, v3, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FI)Lcom/azoft/carousellayoutmanager/ItemTransformation;

    move-result-object v0

    .line 457
    :cond_0
    if-nez v0, :cond_1

    .line 458
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 466
    :goto_0
    return-void

    .line 460
    :cond_1
    int-to-float v2, p1

    iget v3, v0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, p2

    iget v4, v0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, p3

    iget v5, v0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    add-float/2addr v4, v5

    .line 461
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v5, p4

    iget v6, v0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mTranslationY:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 460
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 463
    iget v2, v0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mScaleX:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 464
    iget v2, v0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mScaleY:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private fillData(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "childMeasuringNeeded"    # Z

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    .line 381
    .local v0, "currentScrollPosition":F
    invoke-direct {p0, v0, p2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->generateLayoutOrder(FLandroid/support/v7/widget/RecyclerView$State;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 384
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getWidthNoPadding()I

    move-result v2

    .line 385
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getHeightNoPadding()I

    move-result v1

    .line 386
    .local v1, "height":I
    const/4 v3, 0x1

    iget v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_0

    .line 387
    invoke-direct {p0, p1, v2, v1, p3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->fillDataVertical(Landroid/support/v7/widget/RecyclerView$Recycler;IIZ)V

    .line 392
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 394
    invoke-direct {p0, v0, p2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->detectOnItemSelectionChanged(FLandroid/support/v7/widget/RecyclerView$State;)V

    .line 395
    return-void

    .line 389
    :cond_0
    invoke-direct {p0, p1, v2, v1, p3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->fillDataHorizontal(Landroid/support/v7/widget/RecyclerView$Recycler;IIZ)V

    goto :goto_0
.end method

.method private fillDataHorizontal(Landroid/support/v7/widget/RecyclerView$Recycler;IIZ)V
    .locals 12
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "childMeasuringNeeded"    # Z

    .prologue
    .line 434
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    .line 435
    .local v2, "top":I
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v4, v2, v0

    .line 437
    .local v4, "bottom":I
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v9, v0, 0x2

    .line 439
    .local v9, "centerViewStart":I
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    array-length v10, v0

    .local v10, "count":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 440
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    aget-object v5, v0, v7

    .line 441
    .local v5, "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    invoke-static {v5}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v11

    .line 442
    .local v11, "offset":I
    add-int v1, v9, v11

    .line 443
    .local v1, "start":I
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v3, v1, v0

    .local v3, "end":I
    move-object v0, p0

    move-object v6, p1

    move/from16 v8, p4

    .line 444
    invoke-direct/range {v0 .. v8}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->fillChildItem(IIIILcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;Landroid/support/v7/widget/RecyclerView$Recycler;IZ)V

    .line 439
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "start":I
    .end local v3    # "end":I
    .end local v5    # "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    .end local v11    # "offset":I
    :cond_0
    return-void
.end method

.method private fillDataVertical(Landroid/support/v7/widget/RecyclerView$Recycler;IIZ)V
    .locals 12
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "childMeasuringNeeded"    # Z

    .prologue
    .line 419
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    .line 420
    .local v1, "start":I
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v3, v1, v0

    .line 422
    .local v3, "end":I
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v9, v0, 0x2

    .line 424
    .local v9, "centerViewTop":I
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    array-length v10, v0

    .local v10, "count":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 425
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$400(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    aget-object v5, v0, v7

    .line 426
    .local v5, "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    invoke-static {v5}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$500(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v11

    .line 427
    .local v11, "offset":I
    add-int v2, v9, v11

    .line 428
    .local v2, "top":I
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v4, v2, v0

    .local v4, "bottom":I
    move-object v0, p0

    move-object v6, p1

    move/from16 v8, p4

    .line 429
    invoke-direct/range {v0 .. v8}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->fillChildItem(IIIILcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;Landroid/support/v7/widget/RecyclerView$Recycler;IZ)V

    .line 424
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 431
    .end local v2    # "top":I
    .end local v4    # "bottom":I
    .end local v5    # "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    .end local v11    # "offset":I
    :cond_0
    return-void
.end method

.method private generateLayoutOrder(FLandroid/support/v7/widget/RecyclerView$State;)V
    .locals 12
    .param p1, "currentScrollPosition"    # F
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 499
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    iput v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    .line 500
    iget v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    invoke-static {p1, v8}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result v0

    .line 501
    .local v0, "absCurrentScrollPosition":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 503
    .local v1, "centerItem":I
    iget-boolean v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    iget v9, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    if-ge v8, v9, :cond_3

    .line 504
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v8}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x3

    iget v9, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 506
    .local v6, "layoutCount":I
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-virtual {v8, v6}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->initLayoutOrder(I)V

    .line 508
    div-int/lit8 v2, v6, 0x2

    .line 510
    .local v2, "countLayoutHalf":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, v2, :cond_0

    .line 511
    int-to-float v8, v4

    sub-float v8, v0, v8

    iget v9, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    rem-int v7, v8, v9

    .line 512
    .local v7, "position":I
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    sub-int v9, v2, v4

    int-to-float v10, v1

    sub-float/2addr v10, v0

    int-to-float v11, v4

    sub-float/2addr v10, v11

    invoke-virtual {v8, v9, v7, v10}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    .line 510
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 515
    .end local v7    # "position":I
    :cond_0
    add-int/lit8 v4, v6, -0x1

    :goto_1
    add-int/lit8 v8, v2, 0x1

    if-lt v4, v8, :cond_1

    .line 516
    int-to-float v8, v4

    sub-float v8, v0, v8

    int-to-float v9, v6

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    rem-int v7, v8, v9

    .line 517
    .restart local v7    # "position":I
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    add-int/lit8 v9, v4, -0x1

    int-to-float v10, v1

    sub-float/2addr v10, v0

    int-to-float v11, v6

    add-float/2addr v10, v11

    int-to-float v11, v4

    sub-float/2addr v10, v11

    invoke-virtual {v8, v9, v7, v10}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    .line 515
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 519
    .end local v7    # "position":I
    :cond_1
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    add-int/lit8 v9, v6, -0x1

    int-to-float v10, v1

    sub-float/2addr v10, v0

    invoke-virtual {v8, v9, v1, v10}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    .line 538
    .end local v2    # "countLayoutHalf":I
    :cond_2
    return-void

    .line 522
    .end local v4    # "i":I
    .end local v6    # "layoutCount":I
    :cond_3
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v8}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v8

    sub-int v8, v1, v8

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 523
    .local v3, "firstVisible":I
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v8}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 524
    .local v5, "lastVisible":I
    sub-int v8, v5, v3

    add-int/lit8 v6, v8, 0x1

    .line 526
    .restart local v6    # "layoutCount":I
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-virtual {v8, v6}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->initLayoutOrder(I)V

    .line 528
    move v4, v3

    .restart local v4    # "i":I
    :goto_2
    if-gt v4, v5, :cond_2

    .line 529
    if-ne v4, v1, :cond_4

    .line 530
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    add-int/lit8 v9, v6, -0x1

    int-to-float v10, v4

    sub-float/2addr v10, v0

    invoke-virtual {v8, v9, v4, v10}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    .line 528
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 531
    :cond_4
    if-ge v4, v1, :cond_5

    .line 532
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    sub-int v9, v4, v3

    int-to-float v10, v4

    sub-float/2addr v10, v0

    invoke-virtual {v8, v9, v4, v10}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_3

    .line 534
    :cond_5
    iget-object v8, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    sub-int v9, v4, v1

    sub-int v9, v6, v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v10, v4

    sub-float/2addr v10, v0

    invoke-virtual {v8, v9, v4, v10}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_3
.end method

.method private getCurrentScrollPosition()F
    .locals 3

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getMaxScrollOffset()I

    move-result v0

    .line 474
    .local v0, "fullScrollSize":I
    if-nez v0, :cond_0

    .line 475
    const/4 v1, 0x0

    .line 477
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private getMaxScrollOffset()I
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    iget v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getScrollDirection(I)F
    .locals 5
    .param p1, "targetPosition"    # I

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v3

    iget v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    invoke-static {v3, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result v0

    .line 232
    .local v0, "currentScrollPosition":F
    iget-boolean v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v3, :cond_1

    .line 233
    int-to-float v3, p1

    sub-float v1, v0, v3

    .line 234
    .local v1, "t1":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    int-to-float v4, v4

    sub-float v2, v3, v4

    .line 235
    .local v2, "t2":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 236
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float v1, v3, v2

    .line 241
    .end local v1    # "t1":F
    .end local v2    # "t2":F
    :cond_0
    :goto_0
    return v1

    :cond_1
    int-to-float v3, p1

    sub-float v1, v0, v3

    goto :goto_0
.end method

.method private static makeScrollPositionInRange0ToCount(FI)F
    .locals 2
    .param p0, "currentScrollPosition"    # F
    .param p1, "count"    # I

    .prologue
    .line 670
    move v0, p0

    .line 671
    .local v0, "absCurrentScrollPosition":F
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 672
    int-to-float v1, p1

    add-float/2addr v0, v1

    goto :goto_0

    .line 674
    :cond_0
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lt v1, p1, :cond_1

    .line 675
    int-to-float v1, p1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 677
    :cond_1
    return v0
.end method

.method private selectItemCenterPosition(I)V
    .locals 3
    .param p1, "centerItem"    # I

    .prologue
    .line 413
    iget-object v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;

    .line 414
    .local v0, "onCenterItemSelectionListener":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;
    invoke-interface {v0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;->onCenterItemChanged(I)V

    goto :goto_0

    .line 416
    .end local v0    # "onCenterItemSelectionListener":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnItemSelectionListener(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;)V
    .locals 1
    .param p1, "onCenterItemSelectionListener"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 5
    .param p1, "targetPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 216
    const/4 v2, 0x0

    .line 225
    :goto_0
    return-object v2

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getScrollDirection(I)F

    move-result v1

    .line 220
    .local v1, "directionDistance":F
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    float-to-int v0, v2

    .line 222
    .local v0, "direction":I
    iget v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-nez v2, :cond_1

    .line 223
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 225
    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method protected convertItemPositionDiffToSmoothPositionDiff(F)D
    .locals 8
    .param p1, "itemPositionDiff"    # F

    .prologue
    .line 598
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 601
    .local v0, "absIemPositionDiff":F
    float-to-double v2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    const-wide v6, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    .line 607
    :goto_0
    return-wide v2

    :cond_0
    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 134
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getCardOffsetByPositionDiff(F)I
    .locals 6
    .param p1, "itemPositionDiff"    # F

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->convertItemPositionDiffToSmoothPositionDiff(F)D

    move-result-wide v2

    .line 575
    .local v2, "smoothPosition":D
    const/4 v1, 0x1

    iget v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-ne v1, v4, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getHeightNoPadding()I

    move-result v1

    iget-object v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v0, v1, 0x2

    .line 581
    .local v0, "dimenDiff":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    int-to-float v4, v0

    mul-float/2addr v1, v4

    float-to-double v4, v1

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    return v1

    .line 578
    .end local v0    # "dimenDiff":I
    :cond_0
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getWidthNoPadding()I

    move-result v1

    iget-object v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v0, v1, 0x2

    .restart local v0    # "dimenDiff":I
    goto :goto_0
.end method

.method public getCenterItemPosition()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    return v0
.end method

.method public getHeightNoPadding()I
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMaxVisibleItems()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    return v0
.end method

.method protected getOffsetCenterView()I
    .locals 2

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getOffsetForCurrentView(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 652
    .local v2, "targetPosition":I
    invoke-direct {p0, v2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getScrollDirection(I)F

    move-result v0

    .line 654
    .local v0, "directionDistance":F
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 655
    .local v1, "distance":I
    iget-boolean v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v3, :cond_0

    .line 658
    :cond_0
    return v1
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    return v0
.end method

.method protected getScrollItemSize()I
    .locals 2

    .prologue
    .line 615
    const/4 v0, 0x1

    iget v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 618
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getWidthNoPadding()I
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 326
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->removeAllViews()V

    .line 327
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 333
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 335
    invoke-direct {p0, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->selectItemCenterPosition(I)V

    .line 372
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 340
    .local v0, "childMeasuringNeeded":Z
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    if-nez v3, :cond_2

    .line 341
    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 342
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->addView(Landroid/view/View;)V

    .line 343
    invoke-virtual {p0, v2, v6, v6}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 345
    invoke-virtual {p0, v2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    .line 346
    invoke-virtual {p0, v2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    .line 347
    invoke-virtual {p0, v2, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 349
    iget v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    if-ne v4, v3, :cond_1

    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    if-nez v3, :cond_1

    .line 350
    iget v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    iput v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 353
    :cond_1
    const/4 v0, 0x1

    .line 356
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    if-eq v4, v3, :cond_3

    .line 357
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 358
    .local v1, "itemsCount":I
    if-nez v1, :cond_5

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 360
    .end local v1    # "itemsCount":I
    :cond_3
    iget v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    if-eq v4, v3, :cond_6

    .line 361
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    iget v5, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    invoke-direct {p0, v5, p2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 362
    iput v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 363
    iput-object v7, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    .line 371
    :cond_4
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->fillData(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    goto :goto_0

    .line 358
    .restart local v1    # "itemsCount":I
    :cond_5
    add-int/lit8 v3, v1, -0x1

    iget v5, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    .line 364
    .end local v1    # "itemsCount":I
    :cond_6
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    if-eqz v3, :cond_7

    .line 365
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    iget-object v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    invoke-static {v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->access$200(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 366
    iput-object v7, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    goto :goto_2

    .line 367
    :cond_7
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    if-eq v4, v3, :cond_4

    .line 368
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    iget v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    invoke-direct {p0, v4, p2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_2
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    .line 316
    iput-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    .line 318
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 319
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 634
    instance-of v0, p1, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    if-eqz v0, :cond_0

    .line 635
    check-cast p1, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    .line 637
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    invoke-static {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->access$700(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 641
    :goto_0
    return-void

    .line 639
    .restart local p1    # "state":Landroid/os/Parcelable;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 624
    iget-object v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    if-eqz v1, :cond_0

    .line 625
    new-instance v0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    iget-object v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    invoke-direct {v0, v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;-><init>(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)V

    .line 629
    :goto_0
    return-object v0

    .line 627
    :cond_0
    new-instance v0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 628
    .local v0, "savedState":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
    iget v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCenterItemPosition:I

    invoke-static {v0, v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->access$202(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;I)I

    goto :goto_0
.end method

.method public removeOnItemSelectionListener(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;)V
    .locals 1
    .param p1, "onCenterItemSelectionListener"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 174
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method protected scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5
    .param p1, "diff"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 310
    :cond_1
    :goto_0
    return v1

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_4

    :cond_3
    move v1, v2

    .line 278
    goto :goto_0

    .line 281
    :cond_4
    iget-boolean v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v3, :cond_7

    .line 282
    move v1, p1

    .line 284
    .local v1, "resultScroll":I
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 286
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getScrollItemSize()I

    move-result v3

    iget v4, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mItemsCount:I

    mul-int v0, v3, v4

    .line 287
    .local v0, "maxOffset":I
    :goto_1
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v3

    if-gez v3, :cond_5

    .line 288
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_1

    .line 290
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v3

    if-le v3, v0, :cond_6

    .line 291
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_2

    .line 294
    :cond_6
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 306
    :goto_3
    if-eqz v1, :cond_1

    .line 307
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$102(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 308
    invoke-direct {p0, p2, p3, v2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->fillData(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    goto :goto_0

    .line 296
    .end local v0    # "maxOffset":I
    .end local v1    # "resultScroll":I
    :cond_7
    invoke-direct {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getMaxScrollOffset()I

    move-result v0

    .line 298
    .restart local v0    # "maxOffset":I
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v3

    add-int/2addr v3, p1

    if-gez v3, :cond_8

    .line 299
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v3

    neg-int v1, v3

    .restart local v1    # "resultScroll":I
    goto :goto_3

    .line 300
    .end local v1    # "resultScroll":I
    :cond_8
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v3

    add-int/2addr v3, p1

    if-le v3, v0, :cond_9

    .line 301
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I

    move-result v3

    sub-int v1, v0, v3

    .restart local v1    # "resultScroll":I
    goto :goto_3

    .line 303
    .end local v1    # "resultScroll":I
    :cond_9
    move v1, p1

    .restart local v1    # "resultScroll":I
    goto :goto_3
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 255
    const/4 v0, 0x1

    iget v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 180
    if-gez p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position can\'t be less then 0. position is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 184
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->requestLayout()V

    .line 185
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 247
    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public setMaxVisibleItems(I)V
    .locals 2
    .param p1, "maxVisibleItems"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 116
    if-gtz p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxVisibleItems can\'t be less then 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mLayoutHelper:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->access$002(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I

    .line 120
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->requestLayout()V

    .line 121
    return-void
.end method

.method public setPostLayoutListener(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;)V
    .locals 0
    .param p1, "postLayoutListener"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    iput-object p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->mViewPostLayout:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;

    .line 104
    invoke-virtual {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->requestLayout()V

    .line 105
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "position"    # I

    .prologue
    .line 190
    new-instance v0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;-><init>(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/content/Context;)V

    .line 208
    .local v0, "linearSmoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 210
    return-void
.end method
