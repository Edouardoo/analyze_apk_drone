.class Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutOrder"
.end annotation


# instance fields
.field private mItemAdapterPosition:I

.field private mItemPositionDiff:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)F
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    .prologue
    .line 815
    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->mItemPositionDiff:F

    return v0
.end method

.method static synthetic access$502(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;F)F
    .locals 0
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    .param p1, "x1"    # F

    .prologue
    .line 815
    iput p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->mItemPositionDiff:F

    return p1
.end method

.method static synthetic access$600(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    .prologue
    .line 815
    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->mItemAdapterPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    .param p1, "x1"    # I

    .prologue
    .line 815
    iput p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->mItemAdapterPosition:I

    return p1
.end method
