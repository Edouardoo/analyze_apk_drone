.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;
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
    .line 687
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, -0x2d0

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide v8, 0x3fa999999999999aL    # 0.05

    const/4 v6, 0x0

    .line 691
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-double v2, v1

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 697
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v0

    if-ge v12, v0, :cond_5

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v0

    const/16 v1, 0x2d0

    if-ge v0, v1, :cond_5

    .line 699
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 700
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 704
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 705
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v1

    float-to-double v2, v1

    add-double/2addr v2, v8

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 709
    :goto_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)V

    .line 710
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setRotation(I)V

    .line 711
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 712
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 726
    :cond_1
    :goto_3
    return-void

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-double v2, v1

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)D

    move-result-wide v4

    mul-double/2addr v4, v10

    sub-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    goto/16 :goto_0

    .line 701
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto :goto_1

    .line 707
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F

    move-result v1

    float-to-double v2, v1

    sub-double/2addr v2, v8

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    goto :goto_2

    .line 713
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_6

    .line 714
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 715
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 716
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 717
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setRotation(I)V

    .line 718
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)V

    goto :goto_3

    .line 719
    :cond_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v0

    if-gt v0, v12, :cond_1

    .line 720
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 721
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 722
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 723
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setRotation(I)V

    .line 724
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)V

    goto/16 :goto_3
.end method
