.class Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$2;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->detectOnItemSelectionChanged(FLandroid/support/v7/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

.field final synthetic val$centerItem:I


# direct methods
.method constructor <init>(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$2;->this$0:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    iput p2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$2;->val$centerItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$2;->this$0:Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;

    iget v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$2;->val$centerItem:I

    invoke-static {v0, v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;->access$300(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;I)V

    .line 407
    return-void
.end method
