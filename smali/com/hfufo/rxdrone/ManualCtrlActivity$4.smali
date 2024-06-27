.class Lcom/hfufo/rxdrone/ManualCtrlActivity$4;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
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
    .line 614
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, -0x2d0

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide v8, 0x3fb1eb851eb851ecL    # 0.07

    const/4 v6, 0x0

    .line 618
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-double v2, v1

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 625
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v0

    if-ge v12, v0, :cond_5

    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v0

    const/16 v1, 0x2d0

    if-ge v0, v1, :cond_5

    .line 627
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 628
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1402(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 633
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v1

    float-to-double v2, v1

    add-double/2addr v2, v8

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1302(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    .line 639
    :goto_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1500(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)V

    .line 640
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    .line 642
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 658
    :cond_1
    :goto_3
    return-void

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-double v2, v1

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)D

    move-result-wide v4

    mul-double/2addr v4, v10

    sub-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    goto/16 :goto_0

    .line 630
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1402(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto :goto_1

    .line 637
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F

    move-result v1

    float-to-double v2, v1

    sub-double/2addr v2, v8

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1302(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F

    goto :goto_2

    .line 644
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_6

    .line 645
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 646
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 648
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    .line 649
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1500(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)V

    goto :goto_3

    .line 651
    :cond_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v0

    if-gt v0, v12, :cond_1

    .line 652
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 653
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 655
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    .line 656
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1500(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)V

    goto/16 :goto_3
.end method
