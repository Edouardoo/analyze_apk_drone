.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/fh/listener/RudderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tranRudderInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 5536
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSteeringWheelChanged(ILandroid/graphics/Point;)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "rockerPosition"    # Landroid/graphics/Point;

    .prologue
    const/4 v5, 0x0

    .line 5541
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    invoke-virtual {v2}, Lcom/hfufo/widget/TranRockerBgView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 5543
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

    .line 5544
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v2

    iget v3, p2, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v3, -0x80

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 5545
    .local v0, "lessX":F
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v2

    iget v3, p2, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, -0x80

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 5548
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

    .line 5550
    sget v2, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 5551
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 5557
    :goto_0
    sget v2, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 5558
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    invoke-static {v2, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 5564
    :goto_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;FF)V

    .line 5566
    .end local v0    # "lessX":F
    .end local v1    # "lessY":F
    :cond_0
    return-void

    .line 5552
    .restart local v0    # "lessX":F
    .restart local v1    # "lessY":F
    :cond_1
    cmpg-float v2, v0, v5

    if-gez v2, :cond_2

    .line 5553
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    goto :goto_0

    .line 5555
    :cond_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    goto :goto_0

    .line 5559
    :cond_3
    cmpg-float v2, v1, v5

    if-gez v2, :cond_4

    .line 5560
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    goto :goto_1

    .line 5562
    :cond_4
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    goto :goto_1
.end method

.method public onTouch(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 5571
    return-void
.end method
