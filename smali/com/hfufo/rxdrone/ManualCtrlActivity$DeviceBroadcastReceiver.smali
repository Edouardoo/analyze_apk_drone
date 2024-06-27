.class Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ManualCtrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method private constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/hfufo/rxdrone/ManualCtrlActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p2, "x1"    # Lcom/hfufo/rxdrone/ManualCtrlActivity$1;

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 44
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 916
    .local v15, "action":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 1634
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 916
    :sswitch_0
    const-string v7, "gesture_takevideo"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_1
    const-string v7, "time_finish_video"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string v7, "time_finish"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v7, "gesture_take"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v7, "com.jieli.dvflying_generic_data"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v7, "com.jieli.dvflying_special_data"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "com.jieli.dvflying_device_language_changed"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v7, "com.jieli.dvflying_init_ctp_socket_success"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string v7, "com.jieli.dvflying_sdcard_state"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v7, "com.jieli.dvflying_sdcard_online"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v7, "com.jieli.dvflying_modify_flash_setting"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v7, "com.jieli.dvflying_device_connection_error"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :sswitch_c
    const-string v7, "com.jieli.dvflying_flying_data"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    .line 919
    :pswitch_1
    new-instance v4, Lcom/hfufo/widget/MyCountTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const-wide/16 v6, 0xbea

    const-wide/16 v8, 0x3e8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v10}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v10

    const-string v11, ""

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/hfufo/widget/MyCountTimer;-><init>(Landroid/content/Context;JJLandroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 920
    .local v4, "videoCountTimer":Lcom/hfufo/widget/MyCountTimer;
    invoke-virtual {v4}, Lcom/hfufo/widget/MyCountTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1

    .line 925
    .end local v4    # "videoCountTimer":Lcom/hfufo/widget/MyCountTimer;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 926
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3400(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/hfufo/widget/MjpegView;->setIsGesture(Z)V

    goto/16 :goto_1

    .line 931
    :pswitch_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\u8ba1\u65f6\u7ed3\u675f"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 933
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3600(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/hfufo/widget/MjpegView;->setIsGesture(Z)V

    goto/16 :goto_1

    .line 946
    :pswitch_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\u8bc6\u522b\u5230\u624b\u52bf"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 948
    new-instance v6, Lcom/hfufo/widget/MyCountTimer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const-wide/16 v8, 0xbea

    const-wide/16 v10, 0x3e8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v12

    const-string v13, ""

    const/4 v14, 0x1

    invoke-direct/range {v6 .. v14}, Lcom/hfufo/widget/MyCountTimer;-><init>(Landroid/content/Context;JJLandroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 949
    .local v6, "myCountTimer":Lcom/hfufo/widget/MyCountTimer;
    invoke-virtual {v6}, Lcom/hfufo/widget/MyCountTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1

    .line 954
    .end local v6    # "myCountTimer":Lcom/hfufo/widget/MyCountTimer;
    :pswitch_5
    const-string v5, "generic_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v38

    check-cast v38, Lcom/jieli/lib/stream/beans/StateInfo;

    .line 956
    .local v38, "stateInfo":Lcom/jieli/lib/stream/beans/StateInfo;
    if-nez v38, :cond_2

    .line 957
    const-string v5, "PreviewActivityTAG"

    const-string v7, "error:stateInfo is null"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 960
    :cond_2
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v31, v5, v7

    .line 961
    .local v31, "param1":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v18

    .line 962
    .local v18, "cmdResult":Ljava/lang/String;
    const-string v5, "3100"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 963
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 966
    :cond_3
    const-string v5, "PreviewActivityTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_GENERIC_DATA:stateInfo cmdResult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", param1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v18, "-403"

    .end local v18    # "cmdResult":Ljava/lang/String;
    :cond_4
    const/4 v5, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_5
    :goto_2
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1

    :sswitch_d
    const-string v7, "1000"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_e
    const-string v7, "1003"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_f
    const-string v7, "1004"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_10
    const-string v7, "2000"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_11
    const-string v7, "1005"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x4

    goto :goto_2

    .line 983
    .end local v31    # "param1":Ljava/lang/String;
    .end local v38    # "stateInfo":Lcom/jieli/lib/stream/beans/StateInfo;
    :pswitch_6
    const-string v5, "special_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v38

    check-cast v38, Lcom/jieli/lib/stream/beans/StateInfo;

    .line 985
    .restart local v38    # "stateInfo":Lcom/jieli/lib/stream/beans/StateInfo;
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v34

    .line 986
    .local v34, "params":[Ljava/lang/String;
    if-eqz v34, :cond_1

    move-object/from16 v0, v34

    array-length v5, v0

    if-lez v5, :cond_1

    .line 988
    const/4 v5, 0x0

    aget-object v31, v34, v5

    .line 990
    .restart local v31    # "param1":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v18

    .line 991
    .restart local v18    # "cmdResult":Ljava/lang/String;
    const-string v5, "52123"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_GENERIC_DATA11:stateInfo cmdResult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getCmdNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",stateInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",cmdResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "-403"

    :goto_3
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2

    :cond_6
    move v5, v7

    :goto_4
    packed-switch v5, :pswitch_data_2

    goto/16 :goto_1

    .line 994
    :pswitch_7
    const-string v5, "-1"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 995
    const/4 v5, -0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_3

    :cond_7
    :goto_5
    packed-switch v5, :pswitch_data_3

    .line 1017
    :cond_8
    :goto_6
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1018
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1021
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1022
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v5, v18

    .line 992
    goto :goto_3

    :sswitch_12
    const-string v8, "0001"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    :sswitch_13
    const-string v8, "0007"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :sswitch_14
    const-string v8, "0008"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    goto :goto_4

    :sswitch_15
    const-string v8, "0011"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    goto :goto_4

    :sswitch_16
    const-string v8, "0012"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x4

    goto :goto_4

    :sswitch_17
    const-string v8, "0013"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x5

    goto :goto_4

    :sswitch_18
    const-string v8, "0014"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x6

    goto/16 :goto_4

    :sswitch_19
    const-string v8, "0015"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x7

    goto/16 :goto_4

    :sswitch_1a
    const-string v8, "0018"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x8

    goto/16 :goto_4

    :sswitch_1b
    const-string v8, "0019"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x9

    goto/16 :goto_4

    :sswitch_1c
    const-string v8, "0024"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xa

    goto/16 :goto_4

    :sswitch_1d
    const-string v8, "0025"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xb

    goto/16 :goto_4

    :sswitch_1e
    const-string v8, "0027"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xc

    goto/16 :goto_4

    :sswitch_1f
    const-string v8, "0028"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xd

    goto/16 :goto_4

    :sswitch_20
    const-string v8, "0031"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xe

    goto/16 :goto_4

    :sswitch_21
    const-string v8, "0032"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xf

    goto/16 :goto_4

    :sswitch_22
    const-string v8, "0061"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x10

    goto/16 :goto_4

    :sswitch_23
    const-string v8, "0050"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x11

    goto/16 :goto_4

    :sswitch_24
    const-string v8, "0062"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x12

    goto/16 :goto_4

    :sswitch_25
    const-string v8, "0051"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x13

    goto/16 :goto_4

    :sswitch_26
    const-string v8, "0054"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x14

    goto/16 :goto_4

    :sswitch_27
    const-string v8, "0057"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x15

    goto/16 :goto_4

    :sswitch_28
    const-string v8, "0056"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x16

    goto/16 :goto_4

    :sswitch_29
    const-string v8, "-403"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x17

    goto/16 :goto_4

    .line 995
    :sswitch_2a
    const-string v7, "0"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v5, 0x0

    goto/16 :goto_5

    :sswitch_2b
    const-string v7, "1"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v5, 0x1

    goto/16 :goto_5

    :sswitch_2c
    const-string v7, "2"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v5, 0x2

    goto/16 :goto_5

    :sswitch_2d
    const-string v7, "10"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v5, 0x3

    goto/16 :goto_5

    .line 997
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 998
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 999
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1000
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v5

    const v7, 0xabc0

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 1005
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1006
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1007
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1008
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v5

    const v7, 0xabc1

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 1031
    :pswitch_b
    const/4 v5, -0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_4

    :cond_b
    :goto_7
    packed-switch v5, :pswitch_data_5

    goto/16 :goto_1

    :pswitch_c
    const-string v7, "0"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v5, 0x0

    goto :goto_7

    :pswitch_d
    const-string v7, "1"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v5, 0x1

    goto :goto_7

    :pswitch_e
    const-string v7, "2"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v5, 0x2

    goto :goto_7

    :pswitch_f
    const-string v7, "3"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v5, 0x3

    goto :goto_7

    :pswitch_10
    const-string v7, "4"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v5, 0x4

    goto :goto_7

    .line 1045
    :pswitch_11
    const-string v5, "0"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1047
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1050
    :cond_c
    move-object/from16 v0, v34

    array-length v5, v0

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 1051
    const/4 v5, 0x1

    aget-object v23, v34, v5

    .line 1052
    .local v23, "filename":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1054
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v23

    invoke-static {v5, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1059
    .end local v23    # "filename":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v34

    array-length v5, v0

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 1060
    const-string v21, ""

    .line 1061
    .local v21, "errReason":Ljava/lang/String;
    const/16 v26, 0x1

    .local v26, "i":I
    :goto_8
    move-object/from16 v0, v34

    array-length v5, v0

    move/from16 v0, v26

    if-ge v0, v5, :cond_e

    .line 1062
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v34, v26

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1061
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 1064
    :cond_e
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1065
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const v7, 0x7f0800b6

    invoke-virtual {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    .line 1066
    .local v40, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v40

    invoke-static {v5, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1072
    .end local v21    # "errReason":Ljava/lang/String;
    .end local v26    # "i":I
    .end local v40    # "text":Ljava/lang/String;
    :pswitch_12
    const-string v5, "1"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1073
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1078
    :cond_f
    move-object/from16 v0, v34

    array-length v5, v0

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 1079
    const/4 v5, 0x1

    aget-object v23, v34, v5

    .line 1080
    .restart local v23    # "filename":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1081
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v23

    invoke-static {v5, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1086
    .end local v23    # "filename":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v34

    array-length v5, v0

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 1087
    const-string v21, ""

    .line 1088
    .restart local v21    # "errReason":Ljava/lang/String;
    const/16 v26, 0x1

    .restart local v26    # "i":I
    :goto_9
    move-object/from16 v0, v34

    array-length v5, v0

    move/from16 v0, v26

    if-ge v0, v5, :cond_11

    .line 1089
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v34, v26

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1088
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 1091
    :cond_11
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1092
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const v7, 0x7f0800b9

    invoke-virtual {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    .line 1093
    .restart local v40    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v40

    invoke-static {v5, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1099
    .end local v21    # "errReason":Ljava/lang/String;
    .end local v26    # "i":I
    .end local v40    # "text":Ljava/lang/String;
    :pswitch_13
    const-string v5, "0"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1100
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/stream/tools/AVPlayer;->isFrontStreamPlaying()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1101
    const-string v5, "52123"

    const-string v7, "CMD_RT_STREAM_OPEN: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0050"

    invoke-virtual {v5, v7, v8}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/stream/tools/AVPlayer;->isRearStreamPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1105
    const-string v5, "52123"

    const-string v7, "CMD_REAR_RTS_OPEN: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0061"

    invoke-virtual {v5, v7, v8}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1111
    :cond_13
    move-object/from16 v0, v34

    array-length v5, v0

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 1112
    const-string v21, ""

    .line 1113
    .restart local v21    # "errReason":Ljava/lang/String;
    const/16 v26, 0x1

    .restart local v26    # "i":I
    :goto_a
    move-object/from16 v0, v34

    array-length v5, v0

    move/from16 v0, v26

    if-ge v0, v5, :cond_14

    .line 1114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v34, v26

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1113
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 1116
    :cond_14
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1117
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const v7, 0x7f0800b8

    invoke-virtual {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    .line 1118
    .restart local v40    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v40

    invoke-static {v5, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1127
    .end local v21    # "errReason":Ljava/lang/String;
    .end local v26    # "i":I
    .end local v40    # "text":Ljava/lang/String;
    :pswitch_14
    const/4 v5, -0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_6

    :cond_15
    :goto_b
    packed-switch v5, :pswitch_data_7

    goto/16 :goto_1

    :pswitch_15
    const-string v7, "0"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v5, 0x0

    goto :goto_b

    :pswitch_16
    const-string v7, "1"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v5, 0x1

    goto :goto_b

    :pswitch_17
    const-string v7, "2"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v5, 0x2

    goto :goto_b

    .line 1139
    :pswitch_18
    const/4 v5, -0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_8

    :cond_16
    :goto_c
    packed-switch v5, :pswitch_data_9

    goto/16 :goto_1

    :pswitch_19
    const-string v7, "0"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v5, 0x0

    goto :goto_c

    :pswitch_1a
    const-string v7, "1"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v5, 0x1

    goto :goto_c

    .line 1152
    :pswitch_1b
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1153
    const/16 v19, -0x1

    .line 1155
    .local v19, "count":I
    :try_start_0
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 1159
    :goto_d
    if-gtz v19, :cond_17

    .line 1160
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/hfufo/rxdrone/MainApplication;->setAllowEnterBrowseMode(Z)V

    goto/16 :goto_1

    .line 1156
    :catch_0
    move-exception v20

    .line 1157
    .local v20, "e":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 1163
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/rxdrone/MainApplication;->setAllowEnterBrowseMode(Z)V

    goto/16 :goto_1

    .line 1174
    .end local v19    # "count":I
    :pswitch_1c
    const-string v5, "PreviewActivityTAG"

    const-string v7, "CMD_EXIT_BROWSING_MODE------------------:"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v5}, Lcom/hfufo/rxdrone/MainApplication;->isAllowEnterBrowseMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1181
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/hfufo/rxdrone/MainApplication;->setAllowEnterBrowseMode(Z)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    goto/16 :goto_1

    .line 1187
    :pswitch_1d
    const-string v5, "52123"

    const-string v7, "\u6253\u5f00\u6d41CMD_REAR_RTS_OPEN: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "0"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 1194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1196
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1202
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/stream/tools/AVPlayer;->isRearStreamPlaying()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1203
    const-string v5, "52123"

    const-string v7, "mAVPlayer.isRearStreamPlaying: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 1206
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/stream/tools/AVPlayer;->clearCache()V
    :try_end_1
    .catch Lcom/jieli/lib/stream/tools/AVPlayerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1211
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/jieli/lib/stream/tools/AVPlayer;->setOnRTStreamListener(Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;)V

    .line 1212
    const-string v5, "52123"

    const-string v7, "setOnRTStreamListener00: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_18
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 1215
    .local v43, "videoWidth":I
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 1216
    .local v42, "videoHeight":I
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1218
    .local v27, "light":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/widget/MjpegView;->getContrastCompressWidth()I

    move-result v17

    .line 1219
    .local v17, "cWidth":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/widget/MjpegView;->getContrastCompressHeight()I

    move-result v16

    .line 1221
    .local v16, "cHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    move/from16 v0, v43

    move/from16 v1, v42

    move/from16 v2, v27

    invoke-virtual {v5, v0, v1, v2}, Lcom/hfufo/widget/MjpegView;->setJpegWidthAndHeightAndLevel(III)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/widget/MjpegView;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_1b

    .line 1223
    const-string v5, "PreviewActivityTAG"

    const-string v7, " rear view visible"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1232
    :cond_19
    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    .line 1258
    .end local v16    # "cHeight":I
    .end local v17    # "cWidth":I
    .end local v27    # "light":I
    .end local v42    # "videoHeight":I
    .end local v43    # "videoWidth":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1199
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    goto/16 :goto_e

    .line 1226
    .restart local v16    # "cHeight":I
    .restart local v17    # "cWidth":I
    .restart local v27    # "light":I
    .restart local v42    # "videoHeight":I
    .restart local v43    # "videoWidth":I
    :cond_1b
    move/from16 v0, v17

    move/from16 v1, v43

    if-ne v0, v1, :cond_1c

    move/from16 v0, v16

    move/from16 v1, v42

    if-eq v0, v1, :cond_19

    .line 1227
    :cond_1c
    const-string v5, "PreviewActivityTAG"

    const-string v7, " ====update rear view=========="

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    move/from16 v0, v43

    move/from16 v1, v42

    move/from16 v2, v27

    invoke-virtual {v5, v0, v1, v2}, Lcom/hfufo/widget/MjpegView;->setJpegWidthAndHeightAndLevel(III)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    goto :goto_10

    .line 1235
    .end local v16    # "cHeight":I
    .end local v17    # "cWidth":I
    .end local v27    # "light":I
    .end local v42    # "videoHeight":I
    .end local v43    # "videoWidth":I
    :cond_1d
    const-string v5, "52123"

    const-string v7, "mAVPlayer.isRearStreamPlaying-not: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/stream/tools/AVPlayer;->isFrontStreamPlaying()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1237
    const-string v5, "PreviewActivityTAG"

    const-string v7, "Front view is playing."

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1240
    :cond_1e
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 1242
    .local v36, "resolution":I
    const-string v5, "PreviewActivityTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolution = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v41, "0"

    .line 1244
    .local v41, "value":Ljava/lang/String;
    sparse-switch v36, :sswitch_data_4

    .line 1255
    :goto_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0061"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v41, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1246
    :sswitch_2e
    const-string v41, "0"

    .line 1247
    goto :goto_12

    .line 1249
    :sswitch_2f
    const-string v41, "0"

    .line 1250
    goto :goto_12

    .line 1252
    :sswitch_30
    const-string v41, "1"

    goto :goto_12

    .line 1262
    .end local v36    # "resolution":I
    .end local v41    # "value":Ljava/lang/String;
    :pswitch_1e
    const-string v5, "52123"

    const-string v7, "\u6253\u5f00\u6d41CMD_RT_STREAM_OPEN: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/stream/tools/AVPlayer;->isRearStreamPlaying()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1264
    const-string v5, "PreviewActivityTAG"

    const-string v7, "Rear view is playing."

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1269
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1271
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1277
    :goto_13
    const-string v5, "0"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1278
    const-string v5, "52123"

    const-string v7, "\u6253\u5f00\u6d41ARGS_RT_STREAM_OPEN_SUCCESS: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x1

    if-gt v5, v7, :cond_21

    .line 1280
    const-string v5, "PreviewActivityTAG"

    const-string v7, "param2 not exit"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1274
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    goto :goto_13

    .line 1283
    :cond_21
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v32, v5, v7

    .line 1284
    .local v32, "param2":Ljava/lang/String;
    const-string v5, "PreviewActivityTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMD_RT_STREAM_OPEN success...................param2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1286
    const-string v5, "PreviewActivityTAG"

    const-string v7, "param2 not exit"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1289
    :cond_22
    const-string v5, "CMD_NOT_REALIZE"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "-1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 1292
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 1294
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/stream/tools/AVPlayer;->clearCache()V
    :try_end_2
    .catch Lcom/jieli/lib/stream/tools/AVPlayerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1299
    :goto_14
    const-string v5, "52123"

    const-string v7, "setOnRTStreamListener: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/jieli/lib/stream/tools/AVPlayer;->setOnRTStreamListener(Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;)V

    .line 1302
    :cond_24
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x2

    if-gt v5, v7, :cond_25

    .line 1303
    const-string v5, "PreviewActivityTAG"

    const-string v7, "param3 not exit"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1306
    :cond_25
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aget-object v33, v5, v7

    .line 1307
    .local v33, "param3":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1308
    const-string v5, "PreviewActivityTAG"

    const-string v7, "param3 is empty!"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1311
    :cond_26
    const/4 v5, -0x1

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_a

    :cond_27
    :goto_15
    packed-switch v5, :pswitch_data_b

    .line 1321
    :goto_16
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x6

    if-lt v5, v7, :cond_29

    .line 1322
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5002(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1323
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1324
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1325
    const-string v5, "PreviewActivityTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isRTSOpening = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jieli/lib/stream/tools/AVPlayer;->isFrontStreamPlaying()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", l="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/stream/tools/AVPlayer;->isFrontStreamPlaying()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/widget/MjpegView;->getContrastCompressWidth()I

    move-result v17

    .line 1330
    .restart local v17    # "cWidth":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/widget/MjpegView;->getContrastCompressHeight()I

    move-result v16

    .line 1331
    .restart local v16    # "cHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/hfufo/widget/MjpegView;->setJpegWidthAndHeightAndLevel(III)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/hfufo/widget/MjpegView;->setJpegWidthAndHeightAndLevel(III)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hfufo/widget/MjpegView;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_2b

    .line 1335
    const-string v5, "PreviewActivityTAG"

    const-string v7, " mSurfaceView visible"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1347
    .end local v16    # "cHeight":I
    .end local v17    # "cWidth":I
    :cond_28
    :goto_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    const/16 v7, 0x500

    if-ne v5, v7, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    const/16 v7, 0x2d0

    if-ne v5, v7, :cond_2e

    .line 1348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const-string v7, "1"

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5302(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2d

    .line 1351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x780

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5502(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x438

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5602(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x780

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1354
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x438

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5802(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1355
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1399
    :goto_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    sget v7, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1400
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    sget v7, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5802(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1401
    const-string v5, "52gggg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive:w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",rate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x7

    if-lt v5, v7, :cond_29

    .line 1403
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x6

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 1404
    .local v35, "perFrame":I
    const v5, 0x1046a

    move/from16 v0, v35

    if-eq v0, v5, :cond_33

    .line 1405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const v7, 0xf4240

    div-int v7, v7, v35

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1419
    .end local v35    # "perFrame":I
    :cond_29
    :goto_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jieli/lib/stream/tools/AVPlayer;->isFrontStreamPlaying()Z

    move-result v5

    if-nez v5, :cond_34

    .line 1420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 1421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1422
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0050"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v11}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1425
    const-string v5, "PreviewActivityTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceDefinition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",deviceRTSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    .end local v32    # "param2":Ljava/lang/String;
    .end local v33    # "param3":Ljava/lang/String;
    :cond_2a
    :goto_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1311
    .restart local v32    # "param2":Ljava/lang/String;
    .restart local v33    # "param3":Ljava/lang/String;
    :pswitch_1f
    const-string v7, "0"

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v5, 0x0

    goto/16 :goto_15

    :pswitch_20
    const-string v7, "1"

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v5, 0x1

    goto/16 :goto_15

    .line 1313
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_16

    .line 1316
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1317
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1318
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0054"

    invoke-virtual {v5, v7, v8}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1338
    .restart local v16    # "cHeight":I
    .restart local v17    # "cWidth":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    move/from16 v0, v17

    if-ne v0, v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    move/from16 v0, v16

    if-eq v0, v5, :cond_28

    .line 1339
    :cond_2c
    const-string v5, "PreviewActivityTAG"

    const-string v7, " ====mSurfaceView=========="

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/hfufo/widget/MjpegView;->setJpegWidthAndHeightAndLevel(III)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v9}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/hfufo/widget/MjpegView;->setJpegWidthAndHeightAndLevel(III)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    goto/16 :goto_17

    .line 1358
    .end local v16    # "cHeight":I
    .end local v17    # "cWidth":I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_18

    .line 1362
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    const/16 v7, 0x280

    if-ne v5, v7, :cond_31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    const/16 v7, 0x1e0

    if-ne v5, v7, :cond_31

    .line 1363
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 1364
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const-string v7, "0"

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1366
    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1367
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_30

    .line 1368
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x500

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5502(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x2d0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5602(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x500

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x2d0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5802(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    goto/16 :goto_18

    .line 1374
    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x500

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5502(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1375
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x2d0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5602(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x500

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x2d0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5802(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    goto/16 :goto_18

    .line 1383
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const-string v7, "1"

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_32

    .line 1385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x780

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5502(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1386
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x438

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5602(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x780

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x438

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5802(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1389
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_18

    .line 1392
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x500

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5502(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x2d0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5602(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1394
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x500

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1395
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/16 v7, 0x2d0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5802(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_18

    .line 1410
    .restart local v35    # "perFrame":I
    :cond_33
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 1411
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const v7, 0xf4240

    div-int v7, v7, v35

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    goto/16 :goto_19

    .line 1429
    .end local v35    # "perFrame":I
    :cond_34
    const-string v5, "PreviewActivityTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceDefinition:-- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",deviceRTSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    goto/16 :goto_1a

    .line 1434
    .end local v32    # "param2":Ljava/lang/String;
    .end local v33    # "param3":Ljava/lang/String;
    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_1a

    .line 1442
    :pswitch_23
    const-string v5, "52123"

    const-string v7, "\u5173\u95ed\u6d41CMD_RT_STREAM_OPEN: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const-string v5, "0"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1445
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1456
    const-string v5, "52123"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5207\u6362:isCmdSend = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",currentSizePosition = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1458
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1459
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0050"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "5"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v12}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1486
    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1487
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/jieli/lib/stream/tools/AVPlayer;->setOnRTStreamListener(Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;)V

    goto/16 :goto_1

    .line 1494
    :cond_37
    const-string v5, "PreviewActivityTAG"

    const-string v7, "CMD_RT_STREAM_CLOSE fail"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1498
    :pswitch_24
    const-string v5, "0"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1499
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x1

    if-gt v5, v7, :cond_38

    .line 1500
    const-string v5, "PreviewActivityTAG"

    const-string v7, "param2 not exit"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1503
    :cond_38
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v32, v5, v7

    .line 1504
    .restart local v32    # "param2":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_c

    :cond_39
    :goto_1b
    packed-switch v5, :pswitch_data_d

    goto/16 :goto_1

    :pswitch_25
    const-string v7, "0"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    const/4 v5, 0x0

    goto :goto_1b

    :pswitch_26
    const-string v7, "1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    const/4 v5, 0x1

    goto :goto_1b

    .line 1512
    .end local v32    # "param2":Ljava/lang/String;
    :cond_3a
    const-string v5, "PreviewActivityTAG"

    const-string v7, "CMD_CONTROL_RTS_VOICE failed!"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1516
    :pswitch_27
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x1

    if-lt v5, v7, :cond_1

    .line 1517
    invoke-virtual/range {v38 .. v38}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 1519
    .local v28, "ll":I
    if-ltz v28, :cond_3b

    const/16 v5, 0x10

    move/from16 v0, v28

    if-gt v0, v5, :cond_3b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v5

    move/from16 v0, v28

    if-eq v5, v0, :cond_3b

    .line 1520
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    move/from16 v0, v28

    invoke-static {v5, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 1522
    :cond_3b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/hfufo/widget/MjpegView;->updateLightLevel(I)V

    goto/16 :goto_1

    .line 1545
    .end local v28    # "ll":I
    :pswitch_28
    const-string v5, "PreviewActivityTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error:cmdResult= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1550
    .end local v18    # "cmdResult":Ljava/lang/String;
    .end local v31    # "param1":Ljava/lang/String;
    .end local v34    # "params":[Ljava/lang/String;
    .end local v38    # "stateInfo":Lcom/jieli/lib/stream/beans/StateInfo;
    :pswitch_29
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0001"

    invoke-virtual {v5, v7, v8}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1553
    :pswitch_2a
    const-string v5, "PreviewActivityTAG"

    const-string v7, "ACTION_INIT_CTP_SOCKET_SUCCESS:"

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const-string v5, "52123"

    const-string v7, "ACTION_INIT_CTP_SOCKET_SUCCESS: "

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1558
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1559
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1561
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0056"

    invoke-virtual {v5, v7, v8}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0057"

    invoke-virtual {v5, v7, v8}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0052"

    invoke-virtual {v5, v7, v8}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0027"

    invoke-virtual {v5, v7, v8}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v5

    const-string v7, "1"

    const-string v8, "0009"

    invoke-virtual {v5, v7, v8}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    goto/16 :goto_1

    .line 1573
    :pswitch_2b
    const-string v5, "sdcard_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v39

    check-cast v39, Lcom/jieli/lib/stream/beans/StateInfo;

    .line 1574
    .local v39, "stateInfo1":Lcom/jieli/lib/stream/beans/StateInfo;
    const-string v5, "52123"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_SDCARD_STATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v39 .. v39}, Lcom/jieli/lib/stream/beans/StateInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string v29, "-403"

    .line 1576
    .local v29, "mountState":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1577
    .local v30, "msg":Ljava/lang/String;
    if-eqz v39, :cond_3c

    .line 1578
    invoke-virtual/range {v39 .. v39}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x2

    if-lt v5, v7, :cond_3f

    .line 1579
    invoke-virtual/range {v39 .. v39}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v29, v5, v7

    .line 1580
    invoke-virtual/range {v39 .. v39}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v30, v5, v7

    .line 1588
    :cond_3c
    :goto_1c
    if-eqz v30, :cond_3d

    const-string v5, "PHOTO_SD_found_wrong"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1589
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\u62cd\u7167"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3600(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V

    .line 1592
    :cond_3d
    if-eqz v30, :cond_3e

    const-string v5, "VIDEO_SD_found_wrong"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1593
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\u5f55\u50cf"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3400(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V

    .line 1597
    :cond_3e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onMountState(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1583
    :cond_3f
    invoke-virtual/range {v39 .. v39}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3c

    .line 1584
    invoke-virtual/range {v39 .. v39}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v29, v5, v7

    goto :goto_1c

    .line 1603
    .end local v29    # "mountState":Ljava/lang/String;
    .end local v30    # "msg":Ljava/lang/String;
    .end local v39    # "stateInfo1":Lcom/jieli/lib/stream/beans/StateInfo;
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1604
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1607
    :cond_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1608
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_1

    .line 1612
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-static {v5}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 1613
    .local v37, "sharedPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const-string v7, "take_photo_flash_setting"

    const/4 v8, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v5, v7}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_1

    .line 1616
    .end local v37    # "sharedPreferences":Landroid/content/SharedPreferences;
    :pswitch_2e
    const-string v5, "device_connection_error"

    const/4 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1624
    .local v22, "errorType":I
    goto/16 :goto_1

    .line 1626
    .end local v22    # "errorType":I
    :pswitch_2f
    const-string v5, "special_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    check-cast v24, Lcom/jieli/lib/stream/beans/StateInfo;

    .line 1627
    .local v24, "flyingInfo":Lcom/jieli/lib/stream/beans/StateInfo;
    invoke-virtual/range {v24 .. v24}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v25

    .line 1628
    .local v25, "flyingParams":[Ljava/lang/String;
    if-eqz v25, :cond_1

    move-object/from16 v0, v25

    array-length v5, v0

    if-lez v5, :cond_1

    .line 1631
    const-string v5, "PreviewActivityTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6536\u5230\u822a\u62cd\u547d\u4ee4\u6570\u636e\uff1a\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Lcom/jieli/lib/stream/beans/StateInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1295
    .end local v24    # "flyingInfo":Lcom/jieli/lib/stream/beans/StateInfo;
    .end local v25    # "flyingParams":[Ljava/lang/String;
    .restart local v18    # "cmdResult":Ljava/lang/String;
    .restart local v31    # "param1":Ljava/lang/String;
    .restart local v32    # "param2":Ljava/lang/String;
    .restart local v34    # "params":[Ljava/lang/String;
    .restart local v38    # "stateInfo":Lcom/jieli/lib/stream/beans/StateInfo;
    :catch_1
    move-exception v5

    goto/16 :goto_14

    .line 1207
    .end local v32    # "param2":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_f

    .line 916
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d0403ac -> :sswitch_c
        -0x51f629ff -> :sswitch_1
        -0x4a1d524a -> :sswitch_5
        -0x40782d20 -> :sswitch_7
        -0x25621207 -> :sswitch_8
        -0x213831d6 -> :sswitch_b
        -0xe6618a8 -> :sswitch_4
        0x1c33e645 -> :sswitch_2
        0x4101fd90 -> :sswitch_6
        0x5806acde -> :sswitch_0
        0x6ec04682 -> :sswitch_a
        0x71fcb9eb -> :sswitch_9
        0x7cee75bd -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch

    .line 968
    :sswitch_data_1
    .sparse-switch
        0x17005f -> :sswitch_d
        0x170062 -> :sswitch_e
        0x170063 -> :sswitch_f
        0x170064 -> :sswitch_11
        0x1774be -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 992
    :sswitch_data_2
    .sparse-switch
        0x153dea -> :sswitch_29
        0x168c01 -> :sswitch_12
        0x168c07 -> :sswitch_13
        0x168c08 -> :sswitch_14
        0x168c20 -> :sswitch_15
        0x168c21 -> :sswitch_16
        0x168c22 -> :sswitch_17
        0x168c23 -> :sswitch_18
        0x168c24 -> :sswitch_19
        0x168c27 -> :sswitch_1a
        0x168c28 -> :sswitch_1b
        0x168c42 -> :sswitch_1c
        0x168c43 -> :sswitch_1d
        0x168c45 -> :sswitch_1e
        0x168c46 -> :sswitch_1f
        0x168c5e -> :sswitch_20
        0x168c5f -> :sswitch_21
        0x168c9b -> :sswitch_23
        0x168c9c -> :sswitch_25
        0x168c9f -> :sswitch_26
        0x168ca1 -> :sswitch_28
        0x168ca2 -> :sswitch_27
        0x168cbb -> :sswitch_22
        0x168cbc -> :sswitch_24
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_23
        :pswitch_23
        :pswitch_24
        :pswitch_27
        :pswitch_0
        :pswitch_28
    .end packed-switch

    .line 995
    :sswitch_data_3
    .sparse-switch
        0x30 -> :sswitch_2a
        0x31 -> :sswitch_2b
        0x32 -> :sswitch_2c
        0x61f -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_8
    .end packed-switch

    .line 1031
    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1127
    :pswitch_data_6
    .packed-switch 0x30
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1139
    :pswitch_data_8
    .packed-switch 0x30
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1244
    :sswitch_data_4
    .sparse-switch
        0x1e0 -> :sswitch_2e
        0x280 -> :sswitch_2f
        0x2d0 -> :sswitch_30
    .end sparse-switch

    .line 1311
    :pswitch_data_a
    .packed-switch 0x30
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_21
        :pswitch_22
    .end packed-switch

    .line 1504
    :pswitch_data_c
    .packed-switch 0x30
        :pswitch_25
        :pswitch_26
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
