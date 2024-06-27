.class final Lcom/videooperate/bean/Song$1;
.super Ljava/lang/Object;
.source "Song.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/bean/Song;
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
        "Lcom/videooperate/bean/Song;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/videooperate/bean/Song;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 108
    new-instance v0, Lcom/videooperate/bean/Song;

    invoke-direct {v0, p1}, Lcom/videooperate/bean/Song;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/videooperate/bean/Song$1;->createFromParcel(Landroid/os/Parcel;)Lcom/videooperate/bean/Song;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/videooperate/bean/Song;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 113
    new-array v0, p1, [Lcom/videooperate/bean/Song;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/videooperate/bean/Song$1;->newArray(I)[Lcom/videooperate/bean/Song;

    move-result-object v0

    return-object v0
.end method
