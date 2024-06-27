.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "HDManualCtrlActivity.java"


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
    .line 2945
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2949
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 2952
    .local v13, "action":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2953
    const/4 v3, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 3107
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 2953
    :sswitch_0
    const-string v5, "com.jieli.dv.running2_projection_status"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "com.jieli.dv.running2_format_sdcard"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "com.jieli.dv.running2_emergency_video_state"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "time_finish"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v5, "gesture_take"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "gesture_takevideo"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "time_finish_video"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v5, "net_lost"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v5, "net_connect"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string v5, "openrts"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    .line 2955
    :pswitch_1
    const-string v3, "projection_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 2956
    .local v15, "isOpen":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-eq v15, v3, :cond_1

    .line 2957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3, v15}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto/16 :goto_1

    .line 2971
    .end local v15    # "isOpen":Z
    :pswitch_2
    const-string v3, "video_state"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2972
    .local v19, "videoState":I
    const-string v3, "error_code"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 2973
    .local v14, "errorCode":I
    const/4 v3, -0x1

    if-ne v14, v3, :cond_2

    .line 2974
    packed-switch v19, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_1

    .line 2976
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2977
    const-string v3, "HDManualCtrlActivityTAG"

    const-string v5, "close..."

    invoke-static {v3, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/16 v5, 0xc

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    goto/16 :goto_1

    .line 2982
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x1a

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2989
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x1a

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2998
    .end local v14    # "errorCode":I
    .end local v19    # "videoState":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v5, v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takephoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePhoto(Landroid/view/View;)V

    .line 2999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tv_time:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3000
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto/16 :goto_1

    .line 3006
    :pswitch_7
    const/16 v3, 0x320

    invoke-static {v3}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3007
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/RectView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/widget/RectView;->clean()V

    .line 3008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3015
    new-instance v2, Lcom/hfufo/widget/MyCountTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0xbea

    const-wide/16 v6, 0x3e8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v8, v8, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tv_time:Landroid/widget/ImageView;

    const-string v9, ""

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/hfufo/widget/MyCountTimer;-><init>(Landroid/content/Context;JJLandroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 3016
    .local v2, "myCountTimer":Lcom/hfufo/widget/MyCountTimer;
    invoke-virtual {v2}, Lcom/hfufo/widget/MyCountTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1

    .line 3023
    .end local v2    # "myCountTimer":Lcom/hfufo/widget/MyCountTimer;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3026
    const/16 v3, 0x320

    invoke-static {v3}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/RectView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/widget/RectView;->clean()V

    .line 3028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3030
    new-instance v4, Lcom/hfufo/widget/MyCountTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-wide/16 v6, 0xbea

    const-wide/16 v8, 0x3e8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v10, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tv_time:Landroid/widget/ImageView;

    const-string v11, ""

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/hfufo/widget/MyCountTimer;-><init>(Landroid/content/Context;JJLandroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 3031
    .local v4, "videoCountTimer":Lcom/hfufo/widget/MyCountTimer;
    invoke-virtual {v4}, Lcom/hfufo/widget/MyCountTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1

    .line 3040
    .end local v4    # "videoCountTimer":Lcom/hfufo/widget/MyCountTimer;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    .line 3041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tv_time:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto/16 :goto_1

    .line 3048
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x5

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 3050
    const-string v3, "Heartbeat"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 3051
    .local v18, "startHeartBeat":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3052
    const-string v3, "123456"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net_lost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3054
    if-eqz v18, :cond_3

    .line 3055
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 3056
    .local v16, "messag":Landroid/os/Message;
    const/16 v3, 0xf1

    move-object/from16 v0, v16

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v6, 0x5dc

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3064
    .end local v16    # "messag":Landroid/os/Message;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->net_lost()V

    goto/16 :goto_1

    .line 3059
    :cond_3
    sget-object v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    if-eqz v3, :cond_4

    .line 3060
    sget-object v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->CloseSocket()V

    .line 3062
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xf1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 3066
    :cond_5
    const-string v3, "123456"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net_lost-isStarted:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto/16 :goto_1

    .line 3071
    .end local v18    # "startHeartBeat":Z
    :pswitch_b
    const-string v3, "123456"

    const-string v5, "net_connect: "

    invoke-static {v3, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 3073
    .local v17, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 3074
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 3082
    const/16 v3, 0xf1

    move-object/from16 v0, v17

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, -0x1

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    goto/16 :goto_1

    .line 3087
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    goto/16 :goto_1

    .line 3091
    .end local v17    # "message":Landroid/os/Message;
    :pswitch_c
    const-string v3, "123456"

    const-string v5, "openrts from service"

    invoke-static {v3, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I

    .line 3093
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    .line 3099
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x1a

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xe

    const-wide/16 v6, 0x190

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x1a

    const-wide/16 v6, 0x258

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 3096
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    goto :goto_3

    .line 2953
    :sswitch_data_0
    .sparse-switch
        -0x51f629ff -> :sswitch_6
        -0x4f1f57c6 -> :sswitch_0
        -0x4b4a8819 -> :sswitch_9
        0x1c33e645 -> :sswitch_3
        0x4cf65086 -> :sswitch_7
        0x4f84dc48 -> :sswitch_8
        0x5806acde -> :sswitch_5
        0x6d972677 -> :sswitch_2
        0x73616281 -> :sswitch_1
        0x7cee75bd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 2974
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
