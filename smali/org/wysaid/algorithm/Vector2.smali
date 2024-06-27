.class public Lorg/wysaid/algorithm/Vector2;
.super Ljava/lang/Object;
.source "Vector2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "_x"    # F
    .param p2, "_y"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/wysaid/algorithm/Vector2;->x:F

    .line 15
    iput p2, p0, Lorg/wysaid/algorithm/Vector2;->y:F

    .line 16
    return-void
.end method
