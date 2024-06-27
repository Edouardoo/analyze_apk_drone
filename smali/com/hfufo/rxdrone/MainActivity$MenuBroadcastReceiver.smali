.class Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method private constructor <init>(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hfufo/rxdrone/MainActivity;Lcom/hfufo/rxdrone/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hfufo/rxdrone/MainActivity;
    .param p2, "x1"    # Lcom/hfufo/rxdrone/MainActivity$1;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;-><init>(Lcom/hfufo/rxdrone/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    if-eqz p2, :cond_1

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "action":Ljava/lang/String;
    const/4 v14, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v14, :pswitch_data_0

    .line 439
    .end local v2    # "action":Ljava/lang/String;
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 248
    .restart local v2    # "action":Ljava/lang/String;
    :sswitch_0
    const-string v15, "STOP_SEND_DATA"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :sswitch_1
    const-string v15, "com.jieli.dvflying_init_ctp_socket_success"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :sswitch_2
    const-string v15, "com.jieli.dvflying_device_connection_error"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x2

    goto :goto_0

    :sswitch_3
    const-string v15, "com.jieli.dvflying_device_wifi_disconnect"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x3

    goto :goto_0

    :sswitch_4
    const-string v15, "com.jieli.dvflying_sdcard_state"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x4

    goto :goto_0

    :sswitch_5
    const-string v15, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x5

    goto :goto_0

    :sswitch_6
    const-string v15, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x6

    goto :goto_0

    :sswitch_7
    const-string v15, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x7

    goto :goto_0

    :sswitch_8
    const-string v15, "com.jieli.dvflying_dev_access"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0x8

    goto :goto_0

    :sswitch_9
    const-string v15, "com.jieli.dv.running2_5g_state"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0x9

    goto :goto_0

    .line 251
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v15}, Lcom/hfufo/rxdrone/MainActivity;->access$000(Lcom/hfufo/rxdrone/MainActivity;)Ljava/lang/Runnable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v14}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f080038

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/MainActivity;->access$200(Lcom/hfufo/rxdrone/MainActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v14

    const-string v15, "1"

    const-string v16, "0001"

    invoke-virtual/range {v14 .. v16}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/MainActivity;->access$200(Lcom/hfufo/rxdrone/MainActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v14

    const-string v15, "1"

    const-string v16, "0027"

    invoke-virtual/range {v14 .. v16}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/MainActivity;->access$200(Lcom/hfufo/rxdrone/MainActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v14

    const-string v15, "1"

    const-string v16, "0009"

    invoke-virtual/range {v14 .. v16}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 261
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v14}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f080034

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 265
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v14}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f08004a

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 266
    const-string v14, "MainActivity"

    const-string v15, "onReceive: \u8fde\u63a5\u65ad\u5f00"

    invoke-static {v14, v15}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    :pswitch_5
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "sd\u5361\u7684\u72b6\u6001"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    const-string v14, "sdcard_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Lcom/jieli/lib/stream/beans/StateInfo;

    .line 273
    .local v12, "stateInfo1":Lcom/jieli/lib/stream/beans/StateInfo;
    const-string v7, "-403"

    .line 274
    .local v7, "mountState":Ljava/lang/String;
    const/4 v8, 0x0

    .line 275
    .local v8, "msg":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 276
    invoke-virtual {v12}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_3

    .line 277
    invoke-virtual {v12}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v7, v14, v15

    .line 278
    invoke-virtual {v12}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v8, v14, v15

    .line 285
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v14, v7, v8}, Lcom/hfufo/rxdrone/MainActivity;->onMountState(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    :cond_3
    invoke-virtual {v12}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 281
    invoke-virtual {v12}, Lcom/jieli/lib/stream/beans/StateInfo;->getParam()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v7, v14, v15

    goto :goto_2

    .line 288
    .end local v7    # "mountState":Ljava/lang/String;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v12    # "stateInfo1":Lcom/jieli/lib/stream/beans/StateInfo;
    :pswitch_6
    const-string v14, "wifi_state"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 289
    .local v13, "wifiState":I
    if-eqz v13, :cond_1

    .line 292
    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .line 294
    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v14, v14, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/hfufo/rxdrone/MainApplication;->connectedWifi:Z

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/hfufo/rxdrone/MainActivity;->access$302(Lcom/hfufo/rxdrone/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v14, v14, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v14}, Lcom/hfufo/rxdrone/MainApplication;->stopConnection()V

    .line 300
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v4, "intentNet":Landroid/content/Intent;
    const-string v14, "net_lost"

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v14, "Heartbeat"

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v14}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/MainActivity;->access$400(Lcom/hfufo/rxdrone/MainActivity;)Landroid/widget/TextView;

    move-result-object v14

    const-string v15, "WiFi disconnection"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/hfufo/rxdrone/MainApplication;->setConncetion(Z)V

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/hfufo/rxdrone/MainActivity;->open:Z

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/MainActivity;->access$500(Lcom/hfufo/rxdrone/MainActivity;)Landroid/widget/ImageView;

    move-result-object v14

    const v15, 0x7f02006d

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v14, v14, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v14, :cond_1

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v14, v14, Lcom/hfufo/rxdrone/MainActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_1

    .line 312
    .end local v4    # "intentNet":Landroid/content/Intent;
    :cond_4
    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/MainActivity;->access$500(Lcom/hfufo/rxdrone/MainActivity;)Landroid/widget/ImageView;

    move-result-object v14

    const v15, 0x7f0200a3

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    const-string v14, "MainActivity"

    const-string v15, "WIFI_STATE_ENABLED: "

    invoke-static {v14, v15}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/MainActivity;->access$300(Lcom/hfufo/rxdrone/MainActivity;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    goto/16 :goto_1

    .line 329
    .end local v13    # "wifiState":I
    :pswitch_7
    const-string v14, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .line 330
    .local v10, "parcelableExtra":Landroid/os/Parcelable;
    if-eqz v10, :cond_1

    move-object v9, v10

    .line 332
    check-cast v9, Landroid/net/NetworkInfo;

    .line 334
    .local v9, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    .line 336
    .local v11, "state":Landroid/net/NetworkInfo$State;
    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v11, v14, :cond_5

    const/4 v6, 0x1

    .line 337
    .local v6, "isConnected":Z
    :goto_3
    const-string v14, "TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isConnected:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v11, v14, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v14, v14, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/hfufo/rxdrone/MainApplication;->connectedWifi:Z

    .line 340
    const-string v14, "MainActivity"

    const-string v15, "NETWORK isConnected, \u5df2\u8fde\u63a5: "

    invoke-static {v14, v15}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-wide/16 v14, 0x64

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/hfufo/rxdrone/MainActivity;->access$600(Lcom/hfufo/rxdrone/MainActivity;Z)V

    .line 353
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 354
    .restart local v4    # "intentNet":Landroid/content/Intent;
    const-string v14, "net_connect"

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v14}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 336
    .end local v4    # "intentNet":Landroid/content/Intent;
    .end local v6    # "isConnected":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 356
    .restart local v6    # "isConnected":Z
    :cond_6
    sget-object v14, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v11, v14, :cond_8

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v14, v14, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/hfufo/rxdrone/MainApplication;->connectedWifi:Z

    .line 358
    const-string v14, "MainActivity"

    const-string v15, "NETWORK Disconnection-STATE_CHANGED: \u65ad\u5f00 "

    invoke-static {v14, v15}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const v14, 0x7f08004a

    invoke-static {v14}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/hfufo/rxdrone/MainActivity;->access$302(Lcom/hfufo/rxdrone/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v14, v14, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    if-eqz v14, :cond_7

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v14, v14, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v14}, Lcom/hfufo/rxdrone/MainApplication;->CloseSocket()V

    .line 365
    :cond_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 366
    .restart local v4    # "intentNet":Landroid/content/Intent;
    const-string v14, "net_lost"

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v14, "Heartbeat"

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v14}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const-string v15, "unknow"

    invoke-static {v14, v15}, Lcom/hfufo/rxdrone/MainActivity;->access$702(Lcom/hfufo/rxdrone/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/hfufo/rxdrone/MainActivity;->access$802(Lcom/hfufo/rxdrone/MainActivity;Z)Z

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v14}, Lcom/hfufo/rxdrone/MainActivity;->access$900(Lcom/hfufo/rxdrone/MainActivity;)Landroid/widget/TextView;

    move-result-object v14

    const-string v15, "Disconnection"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/hfufo/rxdrone/MainApplication;->setConncetion(Z)V

    goto/16 :goto_1

    .line 376
    .end local v4    # "intentNet":Landroid/content/Intent;
    :cond_8
    const-string v14, "MainActivity"

    const-string v15, "NETWORK Disconnection-STATE_CHANGED: \u5176\u4ed6 "

    invoke-static {v14, v15}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 382
    .end local v6    # "isConnected":Z
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v10    # "parcelableExtra":Landroid/os/Parcelable;
    .end local v11    # "state":Landroid/net/NetworkInfo$State;
    :pswitch_8
    const-string v14, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 383
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 385
    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15

    if-ne v14, v15, :cond_a

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 386
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    .line 387
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    if-nez v14, :cond_1

    .line 389
    :cond_9
    const-string v14, "MainActivity"

    const-string v15, "CONNECTIVITY_ACTION: \u8fde\u4e0a"

    invoke-static {v14, v15}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 414
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hfufo/rxdrone/MainActivity$MenuBroadcastReceiver;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v14, v14, Lcom/hfufo/rxdrone/MainActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/hfufo/rxdrone/MainApplication;->connectedWifi:Z

    .line 415
    const-string v14, "MainActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CONNECTIVITY="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\u65ad\u5f00"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 421
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :pswitch_9
    const-string v14, "allow_access"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 422
    .local v5, "isAllow":Z
    const-string v14, "MainActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isAllow : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    if-eqz v5, :cond_b

    .line 424
    const v14, 0x7f080038

    invoke-static {v14}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_1

    .line 427
    :cond_b
    const v14, 0x7f080042

    invoke-static {v14}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_1

    .line 248
    :sswitch_data_0
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_5
        -0x58c28674 -> :sswitch_9
        -0x4a2351fc -> :sswitch_0
        -0x45e5283a -> :sswitch_7
        -0x40782d20 -> :sswitch_1
        -0x3b69ad1d -> :sswitch_3
        -0x25621207 -> :sswitch_4
        -0x213831d6 -> :sswitch_2
        -0x147b62d9 -> :sswitch_6
        0x54f1f094 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method
