.class final Lcom/hfufo/bean/FileInfo$1;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/bean/FileInfo;
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
        "Lcom/hfufo/bean/FileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hfufo/bean/FileInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 277
    new-instance v0, Lcom/hfufo/bean/FileInfo;

    invoke-direct {v0, p1}, Lcom/hfufo/bean/FileInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/hfufo/bean/FileInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hfufo/bean/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/hfufo/bean/FileInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 282
    new-array v0, p1, [Lcom/hfufo/bean/FileInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/hfufo/bean/FileInfo$1;->newArray(I)[Lcom/hfufo/bean/FileInfo;

    move-result-object v0

    return-object v0
.end method
