.class Lcom/hfufo/rxdrone/PlayVideoActivity$7;
.super Ljava/lang/Object;
.source "PlayVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/PlayVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const v11, 0xedf2

    const v9, 0xedf1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 570
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 571
    .local v5, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 572
    .local v6, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 642
    :cond_0
    :goto_0
    return v7

    .line 574
    :pswitch_0
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v5}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2102(Lcom/hfufo/rxdrone/PlayVideoActivity;F)F

    .line 575
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v6}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2202(Lcom/hfufo/rxdrone/PlayVideoActivity;F)F

    .line 576
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    float-to-int v9, v5

    invoke-static {v8, v9}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2302(Lcom/hfufo/rxdrone/PlayVideoActivity;I)I

    .line 577
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    float-to-int v9, v6

    invoke-static {v8, v9}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2402(Lcom/hfufo/rxdrone/PlayVideoActivity;I)I

    .line 578
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v4}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2502(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    goto :goto_0

    .line 581
    :pswitch_1
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2100(Lcom/hfufo/rxdrone/PlayVideoActivity;)F

    move-result v8

    sub-float v2, v5, v8

    .line 582
    .local v2, "deltaX":F
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2200(Lcom/hfufo/rxdrone/PlayVideoActivity;)F

    move-result v8

    sub-float v3, v6, v8

    .line 583
    .local v3, "deltaY":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 584
    .local v0, "absDeltaX":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 587
    .local v1, "absDeltaY":F
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2600(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2600(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_3

    .line 588
    cmpg-float v8, v0, v1

    if-gez v8, :cond_1

    move v4, v7

    .line 596
    .local v4, "isAdjustAudio":Z
    :cond_1
    :goto_1
    if-eqz v4, :cond_8

    .line 597
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2700(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gez v8, :cond_6

    .line 598
    cmpl-float v8, v3, v10

    if-lez v8, :cond_5

    .line 599
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v11, v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2800(Lcom/hfufo/rxdrone/PlayVideoActivity;IF)V

    .line 623
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v5}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2102(Lcom/hfufo/rxdrone/PlayVideoActivity;F)F

    .line 624
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v6}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2202(Lcom/hfufo/rxdrone/PlayVideoActivity;F)F

    goto :goto_0

    .line 589
    .end local v4    # "isAdjustAudio":Z
    :cond_3
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2600(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2600(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_4

    .line 590
    const/4 v4, 0x1

    .restart local v4    # "isAdjustAudio":Z
    goto :goto_1

    .line 591
    .end local v4    # "isAdjustAudio":Z
    :cond_4
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2600(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2600(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-gez v8, :cond_0

    .line 592
    const/4 v4, 0x0

    .restart local v4    # "isAdjustAudio":Z
    goto :goto_1

    .line 600
    :cond_5
    cmpg-float v8, v3, v10

    if-gez v8, :cond_2

    .line 601
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v9, v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2800(Lcom/hfufo/rxdrone/PlayVideoActivity;IF)V

    goto :goto_2

    .line 604
    :cond_6
    cmpl-float v8, v3, v10

    if-lez v8, :cond_7

    .line 605
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v11, v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2900(Lcom/hfufo/rxdrone/PlayVideoActivity;IF)V

    goto :goto_2

    .line 606
    :cond_7
    cmpg-float v8, v3, v10

    if-gez v8, :cond_2

    .line 607
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v9, v1}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2900(Lcom/hfufo/rxdrone/PlayVideoActivity;IF)V

    goto :goto_2

    .line 611
    :cond_8
    cmpl-float v8, v2, v10

    if-lez v8, :cond_9

    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2700(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_9

    .line 612
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2500(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 613
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$3000(Lcom/hfufo/rxdrone/PlayVideoActivity;F)V

    .line 614
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v7}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2502(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    goto :goto_2

    .line 616
    :cond_9
    cmpg-float v8, v2, v10

    if-gez v8, :cond_2

    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2700(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    .line 617
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2500(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 618
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$3100(Lcom/hfufo/rxdrone/PlayVideoActivity;F)V

    .line 619
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v7}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2502(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    goto/16 :goto_2

    .line 627
    .end local v0    # "absDeltaX":F
    .end local v1    # "absDeltaY":F
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "isAdjustAudio":Z
    :pswitch_2
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2300(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2600(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_a

    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2400(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2600(Lcom/hfufo/rxdrone/PlayVideoActivity;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    .line 628
    :cond_a
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v4}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$3202(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    .line 630
    :cond_b
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v10}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2102(Lcom/hfufo/rxdrone/PlayVideoActivity;F)F

    .line 631
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v10}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2202(Lcom/hfufo/rxdrone/PlayVideoActivity;F)F

    .line 632
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v4}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2302(Lcom/hfufo/rxdrone/PlayVideoActivity;I)I

    .line 633
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$3200(Lcom/hfufo/rxdrone/PlayVideoActivity;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 634
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$000(Lcom/hfufo/rxdrone/PlayVideoActivity;)V

    .line 636
    :cond_c
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v7}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$3202(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    .line 637
    iget-object v8, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$7;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-static {v8, v4}, Lcom/hfufo/rxdrone/PlayVideoActivity;->access$2502(Lcom/hfufo/rxdrone/PlayVideoActivity;Z)Z

    goto/16 :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
