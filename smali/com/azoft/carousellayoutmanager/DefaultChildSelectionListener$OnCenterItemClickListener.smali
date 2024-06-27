.class public interface abstract Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
.super Ljava/lang/Object;
.source "DefaultChildSelectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azoft/carousellayoutmanager/DefaultChildSelectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCenterItemClickListener"
.end annotation


# virtual methods
.method public abstract onCenterItemClicked(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
