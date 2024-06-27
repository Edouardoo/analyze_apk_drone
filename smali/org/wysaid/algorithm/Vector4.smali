.class public Lorg/wysaid/algorithm/Vector4;
.super Ljava/lang/Object;
.source "Vector4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "_x"    # F
    .param p2, "_y"    # F
    .param p3, "_z"    # F
    .param p4, "_w"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/wysaid/algorithm/Vector4;->x:F

    .line 15
    iput p2, p0, Lorg/wysaid/algorithm/Vector4;->y:F

    .line 16
    iput p3, p0, Lorg/wysaid/algorithm/Vector4;->z:F

    .line 17
    iput p4, p0, Lorg/wysaid/algorithm/Vector4;->w:F

    .line 18
    return-void
.end method
