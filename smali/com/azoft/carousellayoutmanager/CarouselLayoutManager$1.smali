.class Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;


# direct methods
.method constructor <init>(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method
