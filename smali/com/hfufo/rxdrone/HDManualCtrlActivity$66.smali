.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;
.super Ljava/lang/Thread;
.source "HDManualCtrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->LongTouchSendCmd(Landroid/app/Activity;ILandroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

.field final synthetic val$c:I


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 7582
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iput p2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->val$c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x80

    .line 7584
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 7587
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7588
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7591
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->val$c:I

    .line 7592
    .local v0, "cmd":I
    packed-switch v0, :pswitch_data_0

    .line 7630
    :goto_1
    :pswitch_0
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 7594
    :pswitch_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_1

    .line 7598
    :pswitch_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_1

    .line 7602
    :pswitch_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    goto :goto_1

    .line 7606
    :pswitch_4
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    goto :goto_1

    .line 7610
    :pswitch_5
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto :goto_1

    .line 7614
    :pswitch_6
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto :goto_1

    .line 7634
    .end local v0    # "cmd":I
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$13500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7635
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/ManualView;->setLeftRudderPoint(Landroid/graphics/Point;)V

    .line 7642
    :cond_1
    :goto_2
    return-void

    .line 7637
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    goto :goto_2

    .line 7592
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
