.class public Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->x:F

    .line 11
    iput p2, p0, Lcom/thinkjoy/zhthinkjoygesturedetectlib/Point;->y:F

    .line 12
    return-void
.end method
