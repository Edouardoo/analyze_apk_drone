.class public Lcom/azoft/carousellayoutmanager/CarouselSmoothScroller;
.super Ljava/lang/Object;
.source "CarouselSmoothScroller.java"


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-gez p2, :cond_0

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position can\'t be less then 0. position is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position can\'t be great then adapter items count. position is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "carouselLayoutManager"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-virtual {p2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "carouselLayoutManager"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-virtual {p2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public computeScrollVectorForPosition(ILcom/azoft/carousellayoutmanager/CarouselLayoutManager;)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I
    .param p2, "carouselLayoutManager"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-virtual {p2, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
