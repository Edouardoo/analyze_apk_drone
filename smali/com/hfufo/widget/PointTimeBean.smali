.class public Lcom/hfufo/widget/PointTimeBean;
.super Ljava/lang/Object;
.source "PointTimeBean.java"


# instance fields
.field public distance:F

.field public point:Landroid/graphics/PointF;

.field public time:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # F
    .param p4, "distance"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    .line 15
    iget-object v0, p0, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 16
    iput p3, p0, Lcom/hfufo/widget/PointTimeBean;->time:F

    .line 17
    iput p4, p0, Lcom/hfufo/widget/PointTimeBean;->distance:F

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/hfufo/widget/PointTimeBean;)V
    .locals 2
    .param p1, "bean"    # Lcom/hfufo/widget/PointTimeBean;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    .line 21
    iget-object v0, p0, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 22
    iget v0, p1, Lcom/hfufo/widget/PointTimeBean;->time:F

    iput v0, p0, Lcom/hfufo/widget/PointTimeBean;->time:F

    .line 23
    iget v0, p1, Lcom/hfufo/widget/PointTimeBean;->distance:F

    iput v0, p0, Lcom/hfufo/widget/PointTimeBean;->distance:F

    .line 24
    return-void
.end method


# virtual methods
.method public set(FFJF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J
    .param p5, "distance"    # F

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 28
    long-to-float v0, p3

    iput v0, p0, Lcom/hfufo/widget/PointTimeBean;->time:F

    .line 29
    iput p5, p0, Lcom/hfufo/widget/PointTimeBean;->distance:F

    .line 30
    return-void
.end method
