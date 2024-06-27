.class Lcom/videooperate/view/SegmentTabLayout$PointEvaluator;
.super Ljava/lang/Object;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/view/SegmentTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/view/SegmentTabLayout;


# direct methods
.method constructor <init>(Lcom/videooperate/view/SegmentTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/view/SegmentTabLayout;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/videooperate/view/SegmentTabLayout$PointEvaluator;->this$0:Lcom/videooperate/view/SegmentTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/videooperate/view/SegmentTabLayout$IndicatorPoint;Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;)Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;
    .locals 6
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;
    .param p3, "endValue"    # Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    .prologue
    .line 746
    iget v3, p2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->left:F

    iget v4, p3, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->left:F

    iget v5, p2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->left:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 747
    .local v0, "left":F
    iget v3, p2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->right:F

    iget v4, p3, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->right:F

    iget v5, p2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->right:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 748
    .local v2, "right":F
    new-instance v1, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    iget-object v3, p0, Lcom/videooperate/view/SegmentTabLayout$PointEvaluator;->this$0:Lcom/videooperate/view/SegmentTabLayout;

    invoke-direct {v1, v3}, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/videooperate/view/SegmentTabLayout;)V

    .line 749
    .local v1, "point":Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;
    iput v0, v1, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 750
    iput v2, v1, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 751
    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 743
    check-cast p2, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    check-cast p3, Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/videooperate/view/SegmentTabLayout$PointEvaluator;->evaluate(FLcom/videooperate/view/SegmentTabLayout$IndicatorPoint;Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;)Lcom/videooperate/view/SegmentTabLayout$IndicatorPoint;

    move-result-object v0

    return-object v0
.end method
