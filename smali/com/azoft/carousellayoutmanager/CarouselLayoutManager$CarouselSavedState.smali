.class public Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azoft/carousellayoutmanager/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CarouselSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCenterItemPosition:I

.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 857
    new-instance v0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;

    invoke-direct {v0}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;-><init>()V

    sput-object v0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    .line 839
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$1;

    .prologue
    .line 827
    invoke-direct {p0, p1}, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-object p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 834
    return-void
.end method

.method protected constructor <init>(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)V
    .locals 1
    .param p1, "other"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iget-object v0, p1, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 843
    iget v0, p1, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    iput v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    .line 844
    return-void
.end method

.method static synthetic access$200(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    .prologue
    .line 827
    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
    .param p1, "x1"    # I

    .prologue
    .line 827
    iput p1, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 853
    iget-object v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 854
    iget v0, p0, Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    return-void
.end method
