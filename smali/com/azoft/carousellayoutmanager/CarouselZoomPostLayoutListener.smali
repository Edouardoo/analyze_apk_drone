.class public Lcom/azoft/carousellayoutmanager/CarouselZoomPostLayoutListener;
.super Ljava/lang/Object;
.source "CarouselZoomPostLayoutListener.java"

# interfaces
.implements Lcom/azoft/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformChild(Landroid/view/View;FI)Lcom/azoft/carousellayoutmanager/ItemTransformation;
    .locals 16
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemPositionToCenterDiff"    # F
    .param p3, "orientation"    # I

    .prologue
    .line 15
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v12

    neg-double v12, v12

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-float v2, v8

    .line 20
    .local v2, "scale":F
    const/4 v7, 0x1

    move/from16 v0, p3

    if-ne v7, v0, :cond_0

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v6, v7, v8

    .line 22
    .local v6, "translateYGeneral":F
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->signum(F)F

    move-result v7

    mul-float v5, v7, v6

    .line 23
    .local v5, "translateY":F
    const/4 v3, 0x0

    .line 30
    .end local v6    # "translateYGeneral":F
    .local v3, "translateX":F
    :goto_0
    new-instance v7, Lcom/azoft/carousellayoutmanager/ItemTransformation;

    invoke-direct {v7, v2, v2, v3, v5}, Lcom/azoft/carousellayoutmanager/ItemTransformation;-><init>(FFFF)V

    return-object v7

    .line 25
    .end local v3    # "translateX":F
    .end local v5    # "translateY":F
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v4, v7, v8

    .line 26
    .local v4, "translateXGeneral":F
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->signum(F)F

    move-result v7

    mul-float v3, v7, v4

    .line 27
    .restart local v3    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_0
.end method
