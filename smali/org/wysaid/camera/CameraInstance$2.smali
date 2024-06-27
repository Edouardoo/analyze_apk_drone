.class Lorg/wysaid/camera/CameraInstance$2;
.super Ljava/lang/Object;
.source "CameraInstance.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wysaid/camera/CameraInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/camera/CameraInstance;


# direct methods
.method constructor <init>(Lorg/wysaid/camera/CameraInstance;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/camera/CameraInstance;

    .prologue
    .line 226
    iput-object p1, p0, Lorg/wysaid/camera/CameraInstance$2;->this$0:Lorg/wysaid/camera/CameraInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 3
    .param p1, "lhs"    # Landroid/hardware/Camera$Size;
    .param p2, "rhs"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 229
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    sub-int v0, v1, v2

    .line 230
    .local v0, "w":I
    if-nez v0, :cond_0

    .line 231
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    sub-int v0, v1, v2

    .line 232
    .end local v0    # "w":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 226
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lorg/wysaid/camera/CameraInstance$2;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
