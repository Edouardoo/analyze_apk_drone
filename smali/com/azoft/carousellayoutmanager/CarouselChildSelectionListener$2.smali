.class Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$2;
.super Ljava/lang/Object;
.source "CarouselChildSelectionListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;)V
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
    .line 32
    iput-object p1, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$2;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener$2;->this$0:Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {v0}, Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;->access$200(Lcom/azoft/carousellayoutmanager/CarouselChildSelectionListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
