.class Lcom/hfufo/rxdrone/ManualCtrlActivity$56;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/fh/listener/RudderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->tranRudderInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 6459
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSteeringWheelChanged(ILandroid/graphics/Point;)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "rockerPosition"    # Landroid/graphics/Point;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 6464
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/TranRockerBgView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/widget/TranRockerBgView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 6466
    const-string v2, "ttta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSteeringWheelChanged:x- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-y-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6467
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v2

    iget v3, p2, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v3, -0x80

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 6468
    .local v0, "lessX":F
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v2

    iget v3, p2, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, -0x80

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 6471
    .local v1, "lessY":F
    const-string v2, "lawwingLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viewTouch-lessX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6472
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldScaleWidth:F

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxW:F

    .line 6473
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldScaleWidth:F

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxH:F

    .line 6474
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v2, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxW:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 6475
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxW:F

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16402(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    .line 6481
    :goto_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v2, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxH:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 6482
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxH:F

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16502(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    .line 6488
    :goto_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16600(Lcom/hfufo/rxdrone/ManualCtrlActivity;FF)V

    .line 6490
    .end local v0    # "lessX":F
    .end local v1    # "lessY":F
    :cond_0
    return-void

    .line 6476
    .restart local v0    # "lessX":F
    .restart local v1    # "lessY":F
    :cond_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v2, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxW:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 6477
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxW:F

    neg-float v3, v3

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16402(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    goto :goto_0

    .line 6479
    :cond_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16402(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    goto :goto_0

    .line 6483
    :cond_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v2, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxH:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    .line 6484
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxH:F

    neg-float v3, v3

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16502(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    goto :goto_1

    .line 6486
    :cond_4
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16502(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    goto :goto_1
.end method

.method public onTouch(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 6495
    return-void
.end method
