.class final Lcom/jieli/lib/dv/control/json/bean/CmdInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/json/bean/CmdInfo;
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
        "Lcom/jieli/lib/dv/control/json/bean/CmdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/jieli/lib/dv/control/json/bean/CmdInfo;
    .locals 1

    .prologue
    .line 2
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    invoke-direct {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo$a;->createFromParcel(Landroid/os/Parcel;)Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/jieli/lib/dv/control/json/bean/CmdInfo;
    .locals 1

    .prologue
    .line 2
    new-array v0, p1, [Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo$a;->newArray(I)[Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    move-result-object v0

    return-object v0
.end method
