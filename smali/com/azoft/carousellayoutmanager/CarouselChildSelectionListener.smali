.class public abstract Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;
.super Ljava/lang/Object;
.source "CarouselChildSelectionListener.java"


# instance fields
.field private final mCarouselLayoutManager:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "carouselLayoutManager"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;

    invoke-direct {v0, p0}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;-><init>(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)V

    iput-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 29
    iput-object p1, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 30
    iput-object p2, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->mCarouselLayoutManager:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    .line 32
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$2;

    invoke-direct {v1, p0}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$2;-><init>(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->mCarouselLayoutManager:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected abstract onBackItemClicked(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
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

.method protected abstract onCenterItemClicked(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
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
