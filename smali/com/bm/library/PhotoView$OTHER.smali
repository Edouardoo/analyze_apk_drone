.class public Lcom/bm/library/PhotoView$OTHER;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/bm/library/PhotoView$ClipCalculate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bm/library/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OTHER"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bm/library/PhotoView;


# direct methods
.method public constructor <init>(Lcom/bm/library/PhotoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/bm/library/PhotoView$OTHER;->this$0:Lcom/bm/library/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTop()F
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/bm/library/PhotoView$OTHER;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/bm/library/PhotoView$OTHER;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method
