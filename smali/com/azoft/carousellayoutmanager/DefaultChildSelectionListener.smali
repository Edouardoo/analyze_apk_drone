.class public Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener;
.super Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;
.source "DefaultChildSelectionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
    }
.end annotation


# instance fields
.field private final mOnCenterItemClickListener:Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;)V
    .locals 0
    .param p1, "onCenterItemClickListener"    # Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "carouselLayoutManager"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0, p2, p3}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;)V

    .line 15
    iput-object p1, p0, Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener;->mOnCenterItemClickListener:Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;

    .line 16
    return-void
.end method

.method public static initCenterItemListener(Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;)Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener;
    .locals 1
    .param p0, "onCenterItemClickListener"    # Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "carouselLayoutManager"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    new-instance v0, Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener;-><init>(Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;)V

    return-object v0
.end method


# virtual methods
.method protected onBackItemClicked(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "carouselLayoutManager"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-virtual {p2, p3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 26
    return-void
.end method

.method protected onCenterItemClicked(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "carouselLayoutManager"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener;->mOnCenterItemClickListener:Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;->onCenterItemClicked(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V

    .line 21
    return-void
.end method
