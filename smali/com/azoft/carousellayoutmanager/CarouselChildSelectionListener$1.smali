.class Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;
.super Ljava/lang/Object;
.source "CarouselChildSelectionListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;


# direct methods
.method constructor <init>(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 17
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v2}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->access$000(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 18
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 20
    .local v1, "position":I
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v2}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->access$100(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->access$000(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    iget-object v4, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v4}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->access$100(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->onCenterItemClicked(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v3}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->access$000(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    iget-object v4, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$1;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v4}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->access$100(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->onBackItemClicked(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V

    goto :goto_0
.end method
