.class final Landroid/support/v4/view/LinkagePager$SavedState$1;
.super Ljava/lang/Object;
.source "LinkagePager.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LinkagePager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Landroid/support/v4/view/LinkagePager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/LinkagePager$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1340
    new-instance v0, Landroid/support/v4/view/LinkagePager$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/view/LinkagePager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1337
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/LinkagePager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/LinkagePager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/view/LinkagePager$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1344
    new-array v0, p1, [Landroid/support/v4/view/LinkagePager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1337
    invoke-virtual {p0, p1}, Landroid/support/v4/view/LinkagePager$SavedState$1;->newArray(I)[Landroid/support/v4/view/LinkagePager$SavedState;

    move-result-object v0

    return-object v0
.end method
