.class Lcom/bm/library/PhotoView$5;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bm/library/PhotoView;->animaTo(Lcom/bm/library/Info;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bm/library/PhotoView;

.field final synthetic val$c:Lcom/bm/library/PhotoView$ClipCalculate;

.field final synthetic val$cx:F

.field final synthetic val$cy:F


# direct methods
.method constructor <init>(Lcom/bm/library/PhotoView;FFLcom/bm/library/PhotoView$ClipCalculate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/bm/library/PhotoView$5;->this$0:Lcom/bm/library/PhotoView;

    iput p2, p0, Lcom/bm/library/PhotoView$5;->val$cx:F

    iput p3, p0, Lcom/bm/library/PhotoView$5;->val$cy:F

    iput-object p4, p0, Lcom/bm/library/PhotoView$5;->val$c:Lcom/bm/library/PhotoView$ClipCalculate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 1378
    iget-object v0, p0, Lcom/bm/library/PhotoView$5;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1400(Lcom/bm/library/PhotoView;)Lcom/bm/library/PhotoView$Transform;

    move-result-object v0

    iget v2, p0, Lcom/bm/library/PhotoView$5;->val$cx:F

    add-float v3, v4, v2

    iget v2, p0, Lcom/bm/library/PhotoView$5;->val$cy:F

    add-float/2addr v4, v2

    iget-object v2, p0, Lcom/bm/library/PhotoView$5;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$3400(Lcom/bm/library/PhotoView;)I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Lcom/bm/library/PhotoView$5;->val$c:Lcom/bm/library/PhotoView$ClipCalculate;

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/bm/library/PhotoView$Transform;->withClip(FFFFILcom/bm/library/PhotoView$ClipCalculate;)V

    .line 1379
    return-void
.end method
