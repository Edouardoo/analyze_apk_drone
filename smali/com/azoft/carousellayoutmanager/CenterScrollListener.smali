.class public Lcom/azoft/carousellayoutmanager/CenterScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CenterScrollListener.java"


# instance fields
.field private mAutoSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/azoft/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 16
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 17
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v3, v0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    if-nez v3, :cond_1

    .line 18
    iput-boolean v5, p0, Lcom/azoft/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    .line 37
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 22
    check-cast v1, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    .line 23
    .local v1, "lm":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
    iget-boolean v3, p0, Lcom/azoft/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    if-nez v3, :cond_2

    .line 24
    if-nez p2, :cond_2

    .line 25
    invoke-virtual {v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getOffsetCenterView()I

    move-result v2

    .line 26
    .local v2, "scrollNeeded":I
    invoke-virtual {v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getOrientation()I

    move-result v3

    if-nez v3, :cond_4

    .line 27
    invoke-virtual {p1, v2, v4}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 31
    :goto_1
    iput-boolean v5, p0, Lcom/azoft/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    .line 34
    .end local v2    # "scrollNeeded":I
    :cond_2
    if-eq v5, p2, :cond_3

    const/4 v3, 0x2

    if-ne v3, p2, :cond_0

    .line 35
    :cond_3
    iput-boolean v4, p0, Lcom/azoft/carousellayoutmanager/CenterScrollListener;->mAutoSet:Z

    goto :goto_0

    .line 29
    .restart local v2    # "scrollNeeded":I
    :cond_4
    invoke-virtual {p1, v4, v2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1
.end method
