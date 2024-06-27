.class public Lcom/bm/library/Info;
.super Ljava/lang/Object;
.source "Info.java"


# instance fields
.field mBaseRect:Landroid/graphics/RectF;

.field mDegrees:F

.field mImgRect:Landroid/graphics/RectF;

.field mRect:Landroid/graphics/RectF;

.field mScale:F

.field mScaleType:Landroid/widget/ImageView$ScaleType;

.field mScreenCenter:Landroid/graphics/PointF;

.field mWidgetRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "img"    # Landroid/graphics/RectF;
    .param p3, "widget"    # Landroid/graphics/RectF;
    .param p4, "base"    # Landroid/graphics/RectF;
    .param p5, "screenCenter"    # Landroid/graphics/PointF;
    .param p6, "scale"    # F
    .param p7, "degrees"    # F
    .param p8, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/Info;->mBaseRect:Landroid/graphics/RectF;

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/Info;->mScreenCenter:Landroid/graphics/PointF;

    .line 31
    iget-object v0, p0, Lcom/bm/library/Info;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 32
    iget-object v0, p0, Lcom/bm/library/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 33
    iget-object v0, p0, Lcom/bm/library/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 34
    iput p6, p0, Lcom/bm/library/Info;->mScale:F

    .line 35
    iput-object p8, p0, Lcom/bm/library/Info;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 36
    iput p7, p0, Lcom/bm/library/Info;->mDegrees:F

    .line 37
    iget-object v0, p0, Lcom/bm/library/Info;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 38
    iget-object v0, p0, Lcom/bm/library/Info;->mScreenCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, p5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 39
    return-void
.end method
