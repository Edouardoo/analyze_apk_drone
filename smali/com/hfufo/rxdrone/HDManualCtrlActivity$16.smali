.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


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
    .line 2450
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 34
    .param p1, "data"    # Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    .prologue
    .line 2458
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v24

    .line 2459
    .local v24, "topic":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string v29, "CTP_KEEP_ALIVE"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 2788
    :cond_0
    :goto_0
    return-void

    .line 2461
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v29

    if-eqz v29, :cond_5

    .line 2462
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "NotifyInfo:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", error:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v31

    invoke-static/range {v31 .. v31}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v29

    if-nez v29, :cond_2

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 2467
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 2471
    :cond_3
    const-string v29, "123456"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onNotify-OnNotifyListener: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v29

    sparse-switch v29, :sswitch_data_0

    .line 2517
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "topic="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", reason : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v31

    invoke-static/range {v31 .. v31}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2491
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v29

    const-string v30, "CLOSE_FIX_RT_STREAM"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 2492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_fix:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setVisibility(I)V

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto/16 :goto_0

    .line 2497
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    .line 2498
    const v29, 0x7f080078

    invoke-static/range {v29 .. v29}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 2499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 2502
    :cond_4
    const-string v29, "HDManualCtrlActivityTAG"

    const-string v30, "The device does not support rear camera"

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2507
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    goto/16 :goto_0

    .line 2514
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0xa

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    goto/16 :goto_0

    .line 2522
    :cond_5
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "topic="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v29

    if-eqz v29, :cond_6

    const-string v29, "FLIGHT_FLIP"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 2528
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "fsd"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2529
    .local v22, "s":Ljava/lang/String;
    if-eqz v22, :cond_6

    .line 2530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 2532
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->getInstance()Lcom/fh/hdutil/DeviceClientCmd;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/fh/hdutil/DeviceClientCmd;->exchangeRev(I)V

    .line 2535
    .end local v22    # "s":Ljava/lang/String;
    :cond_6
    const-string v30, "HDManualCtrlActivityTAG"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "value="

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v32, "fsd"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const/16 v17, 0x8b0

    .line 2537
    .local v17, "port":I
    const/16 v29, -0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v30

    sparse-switch v30, :sswitch_data_1

    :cond_7
    :goto_1
    packed-switch v29, :pswitch_data_0

    goto/16 :goto_0

    .line 2539
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takephoto:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePhoto(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2537
    :sswitch_4
    const-string v30, "PULL_APP_PHOTO"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x0

    goto :goto_1

    :sswitch_5
    const-string v30, "PULL_APP_VIDEO"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x1

    goto :goto_1

    :sswitch_6
    const-string v30, "OPEN_PULL_RT_STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x2

    goto :goto_1

    :sswitch_7
    const-string v30, "OPEN_FIX_RT_STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x3

    goto :goto_1

    :sswitch_8
    const-string v30, "OPEN_RT_STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x4

    goto :goto_1

    :sswitch_9
    const-string v30, "CLOSE_FIX_RT_STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x5

    goto :goto_1

    :sswitch_a
    const-string v30, "CLOSE_PULL_RT_STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x6

    goto/16 :goto_1

    :sswitch_b
    const-string v30, "CLOSE_RT_STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x7

    goto/16 :goto_1

    :sswitch_c
    const-string v30, "VIDEO_CTRL"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x8

    goto/16 :goto_1

    :sswitch_d
    const-string v30, "VIDEO_FINISH"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v30, "PHOTO_CTRL"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0xa

    goto/16 :goto_1

    :sswitch_f
    const-string v30, "FORWARD_MEDIA_FILES_LIST"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0xb

    goto/16 :goto_1

    :sswitch_10
    const-string v30, "BEHIND_MEDIA_FILES_LIST"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0xc

    goto/16 :goto_1

    :sswitch_11
    const-string v30, "THUMBNAILS"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0xd

    goto/16 :goto_1

    :sswitch_12
    const-string v30, "VIDEO_CYC_SAVEFILE"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0xe

    goto/16 :goto_1

    :sswitch_13
    const-string v30, "PULL_VIDEO_STATUS"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v29, 0xf

    goto/16 :goto_1

    .line 2542
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takevideo:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2545
    :pswitch_2
    const/16 v17, 0x8b1

    .line 2546
    const-string v29, "123456"

    const-string v30, "onNotify-OPEN_REAR_RTS: "

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    :pswitch_3
    const-string v29, "123456"

    const-string v30, "onNotify-OPEN_FIX_RT_STREAM: "

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    :pswitch_4
    const-string v29, "123456"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onNotify-OPEN_FRONT_RTS: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 2552
    const-string v29, "123456"

    const-string v30, "Please don\'t do it again."

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 2556
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Open result:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 2558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->viewInit()V

    .line 2561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLoadingView:Landroid/widget/ProgressBar;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 2565
    :cond_9
    const/4 v8, -0x1

    .line 2566
    .local v8, "format":I
    const/4 v9, 0x0

    .local v9, "height":I
    move/from16 v28, v9

    .line 2567
    .local v28, "width":I
    const/16 v29, 0x8b0

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    const/4 v11, 0x1

    .line 2568
    .local v11, "isFrontCamera":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "w"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 2569
    .local v21, "rtsWidth":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "h"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 2570
    .local v20, "rtsHeight":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "format"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2571
    .local v19, "rtsFormat":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 2572
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 2575
    const-string v29, "123456"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onNotify-rtsWidth: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    :cond_a
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_b

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 2578
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v9}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 2580
    const-string v29, "123456"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onNotify-rtsHeight: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    sget-object v30, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v30, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    add-float v31, v31, v32

    div-float v30, v30, v31

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    sget-object v30, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v30, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    add-float v31, v31, v32

    div-float v30, v30, v31

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    new-instance v30, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v32

    sget v33, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct/range {v30 .. v33}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$3502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    .line 2587
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_c

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 2588
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2591
    :cond_c
    sget-object v29, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual/range {v29 .. v29}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/hfufo/bean/DeviceDesc;->getNetMode()I

    move-result v14

    .line 2593
    .local v14, "mode":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v14, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v29

    if-nez v29, :cond_11

    .line 2594
    :cond_d
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_e

    .line 2595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 2601
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;II)Z

    .line 2602
    const-string v29, "123456"

    const-string v30, "createStream UDP_MODE - notify 00: "

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    :goto_3
    if-nez v8, :cond_f

    .line 2609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setResolution(II)Z

    .line 2611
    :cond_f
    if-eqz v11, :cond_12

    .line 2612
    const-string v29, "123456"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "\u524d\u89c6 \u5e27\u7387\uff1a"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual/range {v31 .. v31}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v29

    sget-object v30, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual/range {v30 .. v30}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setFrameRate(I)Z

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v29

    sget-object v30, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual/range {v30 .. v30}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontSampleRate()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setSampleRate(I)Z

    .line 2621
    :goto_4
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "isFront"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const-string v30, "tcp://127.0.0.1:6789"

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)V

    .line 2624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const-string v30, "tcp://127.0.0.1:6880"

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)V

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    goto/16 :goto_0

    .line 2567
    .end local v11    # "isFrontCamera":Z
    .end local v14    # "mode":I
    .end local v19    # "rtsFormat":Ljava/lang/String;
    .end local v20    # "rtsHeight":Ljava/lang/String;
    .end local v21    # "rtsWidth":Ljava/lang/String;
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 2606
    .restart local v11    # "isFrontCamera":Z
    .restart local v14    # "mode":I
    .restart local v19    # "rtsFormat":Ljava/lang/String;
    .restart local v20    # "rtsHeight":Ljava/lang/String;
    .restart local v21    # "rtsWidth":Ljava/lang/String;
    :cond_11
    const-string v29, "123456"

    const-string v30, "createStream111: "

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2616
    :cond_12
    const-string v29, "123456"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "\u540e\u89c6 \u5e27\u7387\uff1a"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual/range {v31 .. v31}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearRate()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v29

    sget-object v30, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual/range {v30 .. v30}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearRate()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setFrameRate(I)Z

    .line 2618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v29

    sget-object v30, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual/range {v30 .. v30}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearSampleRate()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setSampleRate(I)Z

    goto/16 :goto_4

    .line 2632
    .end local v8    # "format":I
    .end local v9    # "height":I
    .end local v11    # "isFrontCamera":Z
    .end local v14    # "mode":I
    .end local v19    # "rtsFormat":Ljava/lang/String;
    .end local v20    # "rtsHeight":Ljava/lang/String;
    .end local v21    # "rtsWidth":Ljava/lang/String;
    .end local v28    # "width":I
    :pswitch_5
    const-string v29, "123456"

    const-string v30, "onNotify-CLOSE_FIX_RT_STREAM: "

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 2635
    :pswitch_6
    const-string v29, "123456"

    const-string v30, "onNotify-CLOSE_PULL_RT_STREAM: "

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    :pswitch_7
    const-string v29, "123456"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onNotify-CLOSE_RT_STREAM: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 2639
    const-string v29, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v30

    const-string v31, "status"

    invoke-virtual/range {v30 .. v31}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2640
    .local v5, "closeRTS":Z
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "close rt stream result : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", isRTPlaying : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v29

    if-nez v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 2642
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v29

    if-eqz v29, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 2643
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v29

    if-eqz v29, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 2645
    :cond_15
    const-string v29, "HDManualCtrlActivityTAG"

    const-string v30, "openrts===="

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    goto/16 :goto_0

    .line 2652
    .end local v5    # "closeRTS":Z
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 2656
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "status"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 2657
    .local v23, "state":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 2658
    const-string v29, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 2659
    .local v12, "isRecord":Z
    if-eqz v12, :cond_16

    .line 2660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 2666
    :goto_5
    const-string v30, "HDManualCtrlActivityTAG"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "state="

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ", dir="

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v32, "path"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2663
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    goto :goto_5

    .line 2670
    .end local v12    # "isRecord":Z
    .end local v23    # "state":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 2673
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "status"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 2674
    .local v27, "videoState":Ljava/lang/String;
    const-string v29, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 2675
    .local v13, "isRecording_":Z
    if-eqz v13, :cond_17

    .line 2676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 2680
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "desc"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2681
    .local v6, "desc":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 2682
    const-string v29, "\\\\"

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2683
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "-VIDEO_FINISH- desc = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2678
    .end local v6    # "desc":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    goto :goto_6

    .line 2688
    .end local v13    # "isRecording_":Z
    .end local v27    # "videoState":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 2691
    const/16 v29, 0x1

    sput-boolean v29, Lcom/task/VideoCapture;->downloadSuccess:Z

    .line 2694
    const-string v29, "123456"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "-PHOTO_CTRL- photoDesc = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "desc"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2697
    .local v16, "photoDesc":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePho:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 2698
    const-string v29, "\\\\"

    const-string v30, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2699
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "-PHOTO_CTRL- photoDesc = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    invoke-static/range {v16 .. v16}, Lcom/Util/json/JSonManager;->parseFileInfo(Ljava/lang/String;)Lcom/hfufo/bean/FileInfo;

    move-result-object v7

    .line 2703
    .local v7, "fileInfo":Lcom/hfufo/bean/FileInfo;
    const v29, 0x7f0800ce

    invoke-static/range {v29 .. v29}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/hfufo/bean/FileInfo;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    const/16 v30, 0xa

    invoke-static/range {v29 .. v30}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    .line 2707
    const-string v29, "123456"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "PHOTO_CTRL: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v7}, Lcom/hfufo/bean/FileInfo;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2712
    .end local v7    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v16    # "photoDesc":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    if-nez v29, :cond_18

    .line 2713
    const-string v29, "HDManualCtrlActivityTAG"

    const-string v30, "Param is null"

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2717
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "type"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2718
    .local v25, "type":Ljava/lang/String;
    const-string v29, "0"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 2723
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    const-string v30, "path"

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2724
    .local v15, "path":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 2725
    invoke-static {v15}, Lcom/fh/hdutil/AppUtils;->getCameraType(Ljava/lang/String;)I

    move-result v4

    .line 2726
    .local v4, "cameraType":I
    sget-object v29, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual/range {v29 .. v29}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v29

    move/from16 v0, v29

    if-ne v4, v0, :cond_0

    .line 2727
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 2728
    .local v10, "ip":Ljava/lang/String;
    const/16 v29, 0x1f90

    move/from16 v0, v29

    invoke-static {v10, v0, v15}, Lcom/fh/hdutil/AppUtils;->formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2729
    .local v26, "url":Ljava/lang/String;
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "url="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2735
    .end local v4    # "cameraType":I
    .end local v10    # "ip":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    .end local v25    # "type":Ljava/lang/String;
    .end local v26    # "url":Ljava/lang/String;
    :pswitch_c
    const-string v29, "HDManualCtrlActivityTAG"

    const-string v30, "topic->VIDEO_CONTENT_THUMBNAILS->create"

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2739
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 2740
    const-string v29, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v30

    const-string v31, "status"

    invoke-virtual/range {v30 .. v31}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 2741
    .local v18, "result":Z
    const-string v29, "HDManualCtrlActivityTAG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "cyc save video : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    if-nez v18, :cond_0

    goto/16 :goto_0

    .line 2748
    .end local v18    # "result":Z
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 2749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 2750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v29

    new-instance v30, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;)V

    const-wide/16 v32, 0x64

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2489
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xf -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_3
    .end sparse-switch

    .line 2537
    :sswitch_data_1
    .sparse-switch
        -0x489a46f9 -> :sswitch_11
        -0x41c92831 -> :sswitch_c
        -0x2ed7acb1 -> :sswitch_12
        -0x2d892eba -> :sswitch_10
        -0x1c6bf4e2 -> :sswitch_7
        0x642878 -> :sswitch_e
        0xac45b3b -> :sswitch_f
        0x1061d4f7 -> :sswitch_d
        0x1bdacc68 -> :sswitch_8
        0x3509b0da -> :sswitch_4
        0x355e8723 -> :sswitch_5
        0x3bd7fa76 -> :sswitch_b
        0x460f822c -> :sswitch_9
        0x551ef3ea -> :sswitch_a
        0x682b8938 -> :sswitch_6
        0x7f44f410 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2450
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
