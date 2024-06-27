.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/fh/util/MsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionViewInit()V
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
    .line 5587
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5591
    iget v7, p1, Landroid/os/Message;->what:I

    const v8, 0x20005

    if-ne v7, v8, :cond_0

    .line 5592
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 5593
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "Channel1"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    and-int/lit16 v5, v7, 0xff

    .line 5594
    .local v5, "x":I
    const-string v7, "Channel2"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    rsub-int v7, v7, 0xff

    and-int/lit16 v6, v7, 0xff

    .line 5597
    .local v6, "y":I
    const-string v7, "degreeCurrent"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5598
    .local v1, "degree":I
    const-string v7, "step"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 5601
    .local v2, "step":Z
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v7, v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v7}, Lcom/hfufo/widget/ManualView;->getRightState()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5602
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 5603
    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-static {v5, v8, v9}, Lcom/fh/hdutil/AppUtils;->changeXonSpeed(ID)I

    move-result v3

    .line 5604
    .local v3, "vx":I
    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-static {v6, v8, v9}, Lcom/fh/hdutil/AppUtils;->changeXonSpeed(ID)I

    move-result v4

    .line 5615
    .local v4, "vy":I
    :goto_0
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5617
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/fh/util/Protocol1;->setData(I)V

    .line 5619
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v7

    int-to-byte v8, v3

    invoke-virtual {v7, v8}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 5620
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v7

    int-to-byte v8, v4

    invoke-virtual {v7, v8}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 5621
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setData(I)V

    .line 5624
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v7, v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v8, Landroid/graphics/Point;

    rsub-int v9, v6, 0xff

    invoke-direct {v8, v5, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/hfufo/widget/ManualView;->setLeftRudderPoint(Landroid/graphics/Point;)V

    .line 5640
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "degree":I
    .end local v2    # "step":Z
    .end local v3    # "vx":I
    .end local v4    # "vy":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_0
    :goto_1
    return-void

    .line 5605
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "degree":I
    .restart local v2    # "step":Z
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_1
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 5606
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v5, v8, v9}, Lcom/fh/hdutil/AppUtils;->changeXonSpeed(ID)I

    move-result v3

    .line 5607
    .restart local v3    # "vx":I
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v6, v8, v9}, Lcom/fh/hdutil/AppUtils;->changeXonSpeed(ID)I

    move-result v4

    .restart local v4    # "vy":I
    goto :goto_0

    .line 5609
    .end local v3    # "vx":I
    .end local v4    # "vy":I
    :cond_2
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v5, v8, v9}, Lcom/fh/hdutil/AppUtils;->changeXonSpeed(ID)I

    move-result v3

    .line 5610
    .restart local v3    # "vx":I
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v6, v8, v9}, Lcom/fh/hdutil/AppUtils;->changeXonSpeed(ID)I

    move-result v4

    .restart local v4    # "vy":I
    goto :goto_0

    .line 5628
    :cond_3
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/fh/util/Protocol1;->setData(I)V

    .line 5629
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v7

    int-to-byte v8, v3

    invoke-virtual {v7, v8}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 5630
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v7

    int-to-byte v8, v4

    invoke-virtual {v7, v8}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 5631
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setData(I)V

    .line 5633
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v7, v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v8, Landroid/graphics/Point;

    rsub-int v9, v6, 0xff

    invoke-direct {v8, v5, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method public onReset(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, -0x80

    .line 5644
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 5645
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 5646
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 5647
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    .line 5648
    return-void
.end method
