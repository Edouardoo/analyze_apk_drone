.class final Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 861
    new-instance v0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcel;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 858
    invoke-virtual {p0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 866
    new-array v0, p1, [Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 858
    invoke-virtual {p0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;->newArray(I)[Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    move-result-object v0

    return-object v0
.end method
