.class Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutHelper"
.end annotation


# instance fields
.field private mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

.field private mMaxVisibleItems:I

.field private final mReusedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScrollOffset:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxVisibleItems"    # I

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    .line 729
    iput p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    .line 730
    return-void
.end method

.method static synthetic access$000(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    .prologue
    .line 718
    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return v0
.end method

.method static synthetic access$002(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;
    .param p1, "x1"    # I

    .prologue
    .line 718
    iput p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return p1
.end method

.method static synthetic access$100(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    .prologue
    .line 718
    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return v0
.end method

.method static synthetic access$102(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;
    .param p1, "x1"    # I

    .prologue
    .line 718
    iput p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    return-object v0
.end method

.method private createLayoutOrder()Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    .locals 4

    .prologue
    .line 798
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 799
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 800
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 801
    .local v2, "layoutOrderWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    .line 802
    .local v1, "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 803
    if-eqz v1, :cond_0

    .line 807
    .end local v1    # "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    .end local v2    # "layoutOrderWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;>;"
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;-><init>(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;)V

    goto :goto_0
.end method

.method private fillLayoutOrder()V
    .locals 4

    .prologue
    .line 790
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    array-length v1, v2

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 791
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    invoke-direct {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->createLayoutOrder()Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v3

    aput-object v3, v2, v0

    .line 790
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    :cond_1
    return-void
.end method

.method private varargs recycleItems([Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)V
    .locals 5
    .param p1, "layoutOrders"    # [Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 783
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 785
    .local v0, "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    .end local v0    # "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    :cond_0
    return-void
.end method


# virtual methods
.method hasAdapterPosition(I)Z
    .locals 6
    .param p1, "adapterPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 771
    iget-object v2, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    if-eqz v2, :cond_0

    .line 772
    iget-object v3, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 773
    .local v0, "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    invoke-static {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 774
    const/4 v1, 0x1

    .line 778
    .end local v0    # "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    :cond_0
    return v1

    .line 772
    .restart local v0    # "layoutOrder":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method initLayoutOrder(I)V
    .locals 1
    .param p1, "layoutCount"    # I

    .prologue
    .line 738
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    array-length v0, v0

    if-eq v0, p1, :cond_2

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    invoke-direct {p0, v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->recycleItems([Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)V

    .line 742
    :cond_1
    new-array v0, p1, [Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    iput-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    .line 743
    invoke-direct {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->fillLayoutOrder()V

    .line 745
    :cond_2
    return-void
.end method

.method setLayoutOrder(IIF)V
    .locals 2
    .param p1, "arrayPosition"    # I
    .param p2, "itemAdapterPosition"    # I
    .param p3, "itemPositionDiff"    # F

    .prologue
    .line 759
    iget-object v1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    aget-object v0, v1, p1

    .line 760
    .local v0, "item":Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    invoke-static {v0, p2}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$602(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;I)I

    .line 761
    invoke-static {v0, p3}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$502(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;F)F

    .line 762
    return-void
.end method
