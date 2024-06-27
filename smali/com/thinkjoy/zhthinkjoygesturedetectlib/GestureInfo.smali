.class public Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;
.super Ljava/lang/Object;
.source "GestureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIST:I = 0x0

.field public static final INDEX_FINGER:I = 0x4

.field public static final OK_GESTURE:I = 0x2

.field public static final PALM:I = 0x1

.field public static final V_GESTURE:I = 0x3


# instance fields
.field public gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo$1;

    invoke-direct {v0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo$1;-><init>()V

    sput-object v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    iput-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    iput-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    .line 36
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    .line 37
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    .line 38
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    .line 39
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    .line 40
    return-void
.end method

.method public constructor <init>([FI)V
    .locals 7
    .param p1, "points"    # [F
    .param p2, "shape"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v0, v6, [Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    iput-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    .line 63
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    new-instance v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget v2, p1, v5

    aget v3, p1, v4

    invoke-direct {v1, v2, v3}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;-><init>(FF)V

    aput-object v1, v0, v4

    .line 64
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    new-instance v1, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    const/4 v2, 0x3

    aget v2, p1, v2

    aget v3, p1, v6

    invoke-direct {v1, v2, v3}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;-><init>(FF)V

    aput-object v1, v0, v5

    .line 66
    iput p2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public setGesture([FI)V
    .locals 4
    .param p1, "points"    # [F
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v2

    aget v1, p1, v2

    iput v1, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    .line 56
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v2

    aget v1, p1, v3

    iput v1, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    .line 57
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v3

    const/4 v1, 0x2

    aget v1, p1, v1

    iput v1, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    .line 58
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    aget v1, p1, v1

    iput v1, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    .line 59
    iput p2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    iget v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 78
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 79
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 80
    iget-object v0, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;->gestureRectangle:[Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 81
    return-void
.end method
