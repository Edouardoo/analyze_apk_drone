.class Lcom/bm/library/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/bm/library/OnRotateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bm/library/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bm/library/PhotoView;


# direct methods
.method constructor <init>(Lcom/bm/library/PhotoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bm/library/PhotoView;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotate(FFF)V
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 674
    iget-object v0, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$000(Lcom/bm/library/PhotoView;)F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$002(Lcom/bm/library/PhotoView;F)F

    .line 675
    iget-object v0, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$100(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$202(Lcom/bm/library/PhotoView;F)F

    .line 677
    iget-object v0, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$000(Lcom/bm/library/PhotoView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$400(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$102(Lcom/bm/library/PhotoView;Z)Z

    .line 681
    iget-object v0, p0, Lcom/bm/library/PhotoView$1;->this$0:Lcom/bm/library/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$002(Lcom/bm/library/PhotoView;F)F

    goto :goto_0
.end method
