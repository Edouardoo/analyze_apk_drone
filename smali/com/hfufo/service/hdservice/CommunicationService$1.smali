.class Lcom/hfufo/service/hdservice/CommunicationService$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/service/hdservice/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/service/hdservice/CommunicationService;


# direct methods
.method constructor <init>(Lcom/hfufo/service/hdservice/CommunicationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 63
    .param p1, "data"    # Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 802
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 251
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v50

    .line 252
    .local v50, "topic":Ljava/lang/String;
    const-string v59, "CTP_KEEP_ALIVE"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_2

    .line 253
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Device Notify="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_2
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    .line 256
    const-string v59, "Topic-Test"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Topic "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v59

    if-eqz v59, :cond_8

    .line 259
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Topic "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", error msg: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v61

    invoke-static/range {v61 .. v61}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v59, "APP_ACCESS"

    move-object/from16 v0, v59

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_4

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    const v60, 0x7f080042

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v20, Landroid/content/Intent;

    const-string v59, "com.jieli.dv.running2_dev_access"

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v20, "intent":Landroid/content/Intent;
    const-string v59, "allow_access"

    const/16 v60, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v59

    const/16 v60, 0x11

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 265
    :cond_4
    const-string v59, "APP_SET_PROJECTION"

    move-object/from16 v0, v59

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_5

    const-string v59, "DEV_REQ_PROJECTION"

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6

    .line 267
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setOpenProjection(Z)V

    .line 268
    new-instance v20, Landroid/content/Intent;

    const-string v59, "com.jieli.dv.running2_projection_status"

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .restart local v20    # "intent":Landroid/content/Intent;
    const-string v59, "projection_status"

    const/16 v60, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 272
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v59, "CLOSE_PULL_RT_STREAM"

    move-object/from16 v0, v59

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setExistRearView(Z)V

    .line 274
    const/16 v59, 0xf

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v60

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_3

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    goto/16 :goto_1

    .line 277
    :cond_7
    const-string v59, "OPEN_FIX_RT_STREAM"

    move-object/from16 v0, v50

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_3

    .line 279
    const-string v59, "CAMERA_TYPE"

    move-object/from16 v0, v50

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    const/16 v59, 0x0

    sput-boolean v59, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    const/16 v59, 0x0

    sput-boolean v59, Lcom/hfufo/rxdrone/MainApplication;->isGuangJiao:Z

    goto/16 :goto_1

    .line 293
    :cond_8
    const/16 v59, -0x1

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->hashCode()I

    move-result v60

    sparse-switch v60, :sswitch_data_0

    :cond_9
    :goto_2
    packed-switch v59, :pswitch_data_0

    goto/16 :goto_0

    .line 295
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    if-eqz v59, :cond_0

    .line 296
    const-string v59, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v60

    const-string v61, "status"

    invoke-virtual/range {v60 .. v61}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 297
    .local v23, "is5G":Z
    const-string v60, "123456"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "WIFI_RUN_MODE: "

    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v61, " ,status : "

    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v62, "status"

    move-object/from16 v0, v59

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    move-object/from16 v0, v61

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$300(Lcom/hfufo/service/hdservice/CommunicationService;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v59

    const-string v60, "wifi"

    invoke-virtual/range {v59 .. v60}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/net/wifi/WifiManager;

    .line 300
    .local v58, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v59

    if-eqz v59, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$400(Lcom/hfufo/service/hdservice/CommunicationService;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 302
    new-instance v20, Landroid/content/Intent;

    const-string v59, "com.jieli.dv.running2_5g_state"

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v20    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    invoke-static/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->access$402(Lcom/hfufo/service/hdservice/CommunicationService;Z)Z

    goto/16 :goto_0

    .line 293
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v23    # "is5G":Z
    .end local v58    # "wifiManager":Landroid/net/wifi/WifiManager;
    :sswitch_0
    const-string v60, "WIFI_RUN_MODE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v60, "WIFI_MODE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v60, "CAMERA_TYPE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v60, "KEEP_ALIVE_INTERVAL"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string v60, "SD_STATUS"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string v60, "APP_ACCESS"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x5

    goto/16 :goto_2

    :sswitch_6
    const-string v60, "UUID"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x6

    goto/16 :goto_2

    :sswitch_7
    const-string v60, "CTP_KEEP_ALIVE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v60, "VIDEO_CTRL"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x8

    goto/16 :goto_2

    :sswitch_9
    const-string v60, "VIDEO_FINISH"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string v60, "FORWARD_MEDIA_FILES_LIST"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string v60, "BEHIND_MEDIA_FILES_LIST"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string v60, "THUMBNAILS"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string v60, "VIDEO_CYC_SAVEFILE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string v60, "TF_CAP"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string v60, "FORMAT"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string v60, "VIDEO_MIC"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x10

    goto/16 :goto_2

    :sswitch_11
    const-string v60, "PHOTO_QUALITY"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string v60, "LANGUAGE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x12

    goto/16 :goto_2

    :sswitch_13
    const-string v60, "GRA_SEN"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x13

    goto/16 :goto_2

    :sswitch_14
    const-string v60, "VIDEO_PAR_CAR"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x14

    goto/16 :goto_2

    :sswitch_15
    const-string v60, "VIDEO_DATE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x15

    goto/16 :goto_2

    :sswitch_16
    const-string v60, "KEY_VOICE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x16

    goto/16 :goto_2

    :sswitch_17
    const-string v60, "BAT_STATUS"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x17

    goto/16 :goto_2

    :sswitch_18
    const-string v60, "LIGHT_FRE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x18

    goto/16 :goto_2

    :sswitch_19
    const-string v60, "AUTO_SHUTDOWN"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x19

    goto/16 :goto_2

    :sswitch_1a
    const-string v60, "SCREEN_PRO"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x1a

    goto/16 :goto_2

    :sswitch_1b
    const-string v60, "TV_MODE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x1b

    goto/16 :goto_2

    :sswitch_1c
    const-string v60, "DOUBLE_VIDEO"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x1c

    goto/16 :goto_2

    :sswitch_1d
    const-string v60, "VIDEO_LOOP"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x1d

    goto/16 :goto_2

    :sswitch_1e
    const-string v60, "VIDEO_WDR"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x1e

    goto/16 :goto_2

    :sswitch_1f
    const-string v60, "VIDEO_EXP"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x1f

    goto/16 :goto_2

    :sswitch_20
    const-string v60, "MOVE_CHECK"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x20

    goto/16 :goto_2

    :sswitch_21
    const-string v60, "VIDEO_INV"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x21

    goto/16 :goto_2

    :sswitch_22
    const-string v60, "PHOTO_RESO"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x22

    goto/16 :goto_2

    :sswitch_23
    const-string v60, "SELF_TIMER"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x23

    goto/16 :goto_2

    :sswitch_24
    const-string v60, "BURST_SHOT"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x24

    goto/16 :goto_2

    :sswitch_25
    const-string v60, "PHOTO_SHARPNESS"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x25

    goto/16 :goto_2

    :sswitch_26
    const-string v60, "PHOTO_ISO"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x26

    goto/16 :goto_2

    :sswitch_27
    const-string v60, "PHOTO_EXP"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x27

    goto/16 :goto_2

    :sswitch_28
    const-string v60, "ANTI_TREMOR"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x28

    goto/16 :goto_2

    :sswitch_29
    const-string v60, "PHOTO_DATE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x29

    goto/16 :goto_2

    :sswitch_2a
    const-string v60, "BOARD_VOICE"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x2a

    goto/16 :goto_2

    :sswitch_2b
    const-string v60, "RT_TALK_CTL"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x2b

    goto/16 :goto_2

    :sswitch_2c
    const-string v60, "OPEN_RT_STREAM"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x2c

    goto/16 :goto_2

    :sswitch_2d
    const-string v60, "OPEN_PULL_RT_STREAM"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x2d

    goto/16 :goto_2

    :sswitch_2e
    const-string v60, "PULL_VIDEO_STATUS"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x2e

    goto/16 :goto_2

    :sswitch_2f
    const-string v60, "VIDEO_PARAM"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x2f

    goto/16 :goto_2

    :sswitch_30
    const-string v60, "PULL_VIDEO_PARAM"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_9

    const/16 v59, 0x30

    goto/16 :goto_2

    .line 310
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    if-eqz v59, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "status"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-static/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->access$302(Lcom/hfufo/service/hdservice/CommunicationService;Z)Z

    .line 312
    const-string v60, "123456"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "WIFI_MODE : "

    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/hfufo/service/hdservice/CommunicationService;->access$300(Lcom/hfufo/service/hdservice/CommunicationService;)Z

    move-result v61

    move-object/from16 v0, v59

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v61, " ,status : "

    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v62, "status"

    move-object/from16 v0, v59

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    move-object/from16 v0, v61

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$300(Lcom/hfufo/service/hdservice/CommunicationService;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 314
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->getInstance()Lcom/fh/hdutil/DeviceClientCmd;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/fh/hdutil/DeviceClientCmd;->requestWifiHz()V

    goto/16 :goto_0

    .line 318
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "type"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    if-eqz v59, :cond_c

    .line 319
    const-string v59, "123456"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "CAMERA_TYPE: "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "type"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    const-string v60, "imx179"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_a

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "type"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    const-string v60, "f37"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_a

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "type"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    const-string v60, "F37"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_a

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "type"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    const-string v60, "1080p"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_a

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "type"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    const-string v60, "1080P"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_a

    .line 325
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "type"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    const-string v60, "2363"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_b

    .line 326
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    const/16 v59, 0x1

    sput-boolean v59, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    const/16 v59, 0x1

    sput-boolean v59, Lcom/hfufo/rxdrone/MainApplication;->isGuangJiao:Z

    goto/16 :goto_0

    .line 330
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    const/16 v59, 0x0

    sput-boolean v59, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    const/16 v59, 0x0

    sput-boolean v59, Lcom/hfufo/rxdrone/MainApplication;->isGuangJiao:Z

    goto/16 :goto_0

    .line 335
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    const/16 v59, 0x0

    sput-boolean v59, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    const/16 v59, 0x0

    sput-boolean v59, Lcom/hfufo/rxdrone/MainApplication;->isGuangJiao:Z

    goto/16 :goto_0

    .line 341
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "timeout"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 343
    .local v21, "interval":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$500(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/HeartbeatTask;

    move-result-object v59

    if-nez v59, :cond_d

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    new-instance v60, Lcom/task/HeartbeatTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/hfufo/service/hdservice/CommunicationService;->access$600(Lcom/hfufo/service/hdservice/CommunicationService;)Landroid/os/Handler;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Lcom/task/HeartbeatTask;-><init>(Landroid/os/Handler;)V

    invoke-static/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->access$502(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/task/HeartbeatTask;)Lcom/task/HeartbeatTask;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$500(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/HeartbeatTask;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/task/HeartbeatTask;->start()V

    .line 347
    :cond_d
    const-string v59, "123456"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Timeout interval:"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$500(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/HeartbeatTask;

    move-result-object v59

    div-int/lit8 v60, v21, 0x8

    move/from16 v0, v60

    int-to-long v0, v0

    move-wide/from16 v60, v0

    const/16 v62, 0x8

    invoke-virtual/range {v59 .. v62}, Lcom/task/HeartbeatTask;->setPeriodAndTimeout(JI)V

    goto/16 :goto_0

    .line 353
    .end local v21    # "interval":I
    :pswitch_5
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v60

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "TF Card state:"

    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v62, "online"

    move-object/from16 v0, v59

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    move-object/from16 v0, v61

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v20, Landroid/content/Intent;

    const-string v59, "com.jieli.dv.running2_sdcard_state"

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v20    # "intent":Landroid/content/Intent;
    const-string v59, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v60

    const-string v61, "online"

    invoke-virtual/range {v60 .. v61}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_e

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    const v60, 0x7f0800aa

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 358
    .local v47, "s":Ljava/lang/String;
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/rxdrone/MainApplication;->setSdcardExist(Z)V

    .line 359
    const-string v59, "TF_state"

    const/16 v60, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 361
    .end local v47    # "s":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    const v60, 0x7f0800a9

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 362
    .restart local v47    # "s":Ljava/lang/String;
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/rxdrone/MainApplication;->setSdcardExist(Z)V

    .line 363
    const-string v59, "TF_state"

    const/16 v60, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 372
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v47    # "s":Ljava/lang/String;
    :pswitch_6
    const-string v59, "1234567"

    const-string v60, "APP_ACCESS"

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, "date":Ljava/lang/String;
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v59

    new-instance v60, Lcom/hfufo/service/hdservice/CommunicationService$1$1;

    move-object/from16 v0, v60

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService$1$1;-><init>(Lcom/hfufo/service/hdservice/CommunicationService$1;)V

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    invoke-virtual {v0, v8, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSyncDevDate(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 382
    new-instance v20, Landroid/content/Intent;

    const-string v59, "com.jieli.dv.running2_dev_access"

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .restart local v20    # "intent":Landroid/content/Intent;
    const-string v59, "allow_access"

    const/16 v60, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$700(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/ClearThumbTask;

    move-result-object v59

    if-nez v59, :cond_f

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    new-instance v60, Lcom/task/ClearThumbTask;

    invoke-direct/range {v60 .. v60}, Lcom/task/ClearThumbTask;-><init>()V

    invoke-static/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->access$702(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/task/ClearThumbTask;)Lcom/task/ClearThumbTask;

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$700(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/ClearThumbTask;

    move-result-object v59

    new-instance v60, Lcom/hfufo/service/hdservice/CommunicationService$1$2;

    move-object/from16 v0, v60

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService$1$2;-><init>(Lcom/hfufo/service/hdservice/CommunicationService$1;)V

    invoke-virtual/range {v59 .. v60}, Lcom/task/ClearThumbTask;->setOnClearThumbTaskListener(Lcom/task/ClearThumbTask$OnClearThumbTaskListener;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$700(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/ClearThumbTask;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/task/ClearThumbTask;->start()V

    .line 395
    :cond_f
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->isUpgrading()Z

    move-result v59

    if-nez v59, :cond_11

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$800(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    move-result-object v59

    if-eqz v59, :cond_10

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$800(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->interrupt()V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    const/16 v60, 0x0

    invoke-static/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->access$802(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    .line 400
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$800(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    move-result-object v59

    if-nez v59, :cond_11

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    new-instance v60, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v61, v0

    invoke-direct/range {v60 .. v61}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;-><init>(Lcom/hfufo/service/hdservice/CommunicationService;)V

    invoke-static/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->access$802(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;)Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$800(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService$LoadDeviceDesTxt;->start()V

    .line 405
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$900(Lcom/hfufo/service/hdservice/CommunicationService;)V

    goto/16 :goto_0

    .line 409
    .end local v8    # "date":Ljava/lang/String;
    .end local v20    # "intent":Landroid/content/Intent;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "uuid"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 410
    .local v10, "devUUID":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    .line 411
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "device uuid :"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v10}, Lcom/hfufo/rxdrone/MainApplication;->setUUID(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    .end local v10    # "devUUID":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$500(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/HeartbeatTask;

    move-result-object v59

    if-eqz v59, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$500(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/HeartbeatTask;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/task/HeartbeatTask;->resetTimeoutCount()V

    goto/16 :goto_0

    .line 422
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "status"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    .line 423
    .local v48, "state":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    .line 424
    const-string v59, "1"

    move-object/from16 v0, v59

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 425
    .local v25, "isRecord":Z
    if-eqz v25, :cond_12

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setRecordState(I)V

    goto/16 :goto_0

    .line 428
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x2

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setRecordState(I)V

    goto/16 :goto_0

    .line 433
    .end local v25    # "isRecord":Z
    .end local v48    # "state":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "status"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    .line 434
    .local v49, "state1":Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_13

    .line 435
    const-string v59, "1"

    move-object/from16 v0, v59

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 436
    .restart local v25    # "isRecord":Z
    if-eqz v25, :cond_16

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setRecordState(I)V

    .line 442
    .end local v25    # "isRecord":Z
    :cond_13
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "desc"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 443
    .local v9, "desc":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_17

    .line 444
    const-string v59, "\\\\"

    const-string v60, ""

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 445
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "-VIDEO_FINISH- desc = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {v9}, Lcom/Util/json/JSonManager;->parseFileInfo(Ljava/lang/String;)Lcom/hfufo/bean/FileInfo;

    move-result-object v13

    .line 447
    .local v13, "fileInfo":Lcom/hfufo/bean/FileInfo;
    if-eqz v13, :cond_0

    .line 448
    invoke-static {}, Lcom/Util/json/JSonManager;->getInstance()Lcom/Util/json/JSonManager;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/Util/json/JSonManager;->getInfoList()Ljava/util/List;

    move-result-object v52

    .line 449
    .local v52, "totalList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    if-nez v52, :cond_14

    .line 450
    new-instance v52, Ljava/util/ArrayList;

    .end local v52    # "totalList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .restart local v52    # "totalList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    :cond_14
    const/4 v6, 0x1

    .line 453
    .local v6, "cameraType":I
    const-string v59, "1"

    invoke-virtual {v13}, Lcom/hfufo/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    .line 454
    const/4 v6, 0x2

    .line 456
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v59

    move/from16 v0, v59

    if-ne v6, v0, :cond_0

    .line 457
    const/16 v59, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v59

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 458
    invoke-static/range {v52 .. v52}, Lcom/Util/json/JSonManager;->convertJson(Ljava/util/List;)Ljava/lang/String;

    goto/16 :goto_0

    .line 439
    .end local v6    # "cameraType":I
    .end local v9    # "desc":Ljava/lang/String;
    .end local v13    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v52    # "totalList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    .restart local v25    # "isRecord":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x2

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setRecordState(I)V

    goto/16 :goto_4

    .line 461
    .end local v25    # "isRecord":Z
    .restart local v9    # "desc":Ljava/lang/String;
    :cond_17
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    const-string v60, "CMD:VIDEO_FINISH:desc is null"

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 468
    .end local v9    # "desc":Ljava/lang/String;
    .end local v49    # "state1":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    if-nez v59, :cond_18

    .line 469
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    const-string v60, "Param is null"

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "type"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    .line 474
    .local v55, "type":Ljava/lang/String;
    const-string v59, "0"

    move-object/from16 v0, v59

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_0

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "path"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 480
    .local v34, "path":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    .line 481
    invoke-static/range {v34 .. v34}, Lcom/fh/hdutil/AppUtils;->getCameraType(Ljava/lang/String;)I

    move-result v6

    .line 482
    .restart local v6    # "cameraType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v59

    move/from16 v0, v59

    if-ne v6, v0, :cond_0

    .line 483
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v22

    .line 484
    .local v22, "ip":Ljava/lang/String;
    const/16 v59, 0x1f90

    move-object/from16 v0, v22

    move/from16 v1, v59

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/fh/hdutil/AppUtils;->formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 485
    .local v56, "url":Ljava/lang/String;
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "url="

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    .end local v6    # "cameraType":I
    .end local v22    # "ip":Ljava/lang/String;
    .end local v34    # "path":Ljava/lang/String;
    .end local v55    # "type":Ljava/lang/String;
    .end local v56    # "url":Ljava/lang/String;
    :pswitch_c
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    const-string v60, "topic->VIDEO_CONTENT_THUMBNAILS->create"

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    if-eqz v59, :cond_0

    .line 495
    const-string v59, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v60

    const-string v61, "status"

    invoke-virtual/range {v60 .. v61}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    .line 496
    .local v46, "result":Z
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "cyc save video : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    if-nez v46, :cond_0

    goto/16 :goto_0

    .line 504
    .end local v46    # "result":Z
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    if-eqz v59, :cond_0

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "left"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 506
    .local v29, "left":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "total"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 507
    .local v51, "total":Ljava/lang/String;
    const/16 v30, 0x0

    .line 508
    .local v30, "leftValue":I
    const/16 v53, 0x0

    .line 510
    .local v53, "totalValue":I
    :try_start_0
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 511
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v53

    .line 515
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/DeviceSettingInfo;->setLeftStorage(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/DeviceSettingInfo;->setTotalStorage(I)V

    goto/16 :goto_0

    .line 512
    :catch_0
    move-exception v11

    .line 513
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 527
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v29    # "left":Ljava/lang/String;
    .end local v30    # "leftValue":I
    .end local v51    # "total":Ljava/lang/String;
    .end local v53    # "totalValue":I
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    new-instance v60, Landroid/content/Intent;

    const-string v61, "com.jieli.dv.running2_format_sdcard"

    invoke-direct/range {v60 .. v61}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 530
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "mic"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setVideoMic(Z)V

    goto/16 :goto_0

    .line 533
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "qua"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 534
    .local v39, "qua":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setPhotoQualityIndex(I)V

    goto/16 :goto_0

    .line 539
    .end local v39    # "qua":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "lag"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 540
    .local v28, "lan":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 541
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v59

    add-int/lit8 v19, v59, -0x1

    .line 542
    .local v19, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Lcom/micro/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v59

    const-string v60, "language_code"

    const/16 v61, -0x1

    invoke-interface/range {v59 .. v61}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 543
    .local v37, "preIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/DeviceSettingInfo;->setLanIndex(I)V

    .line 544
    const/16 v59, -0x1

    move/from16 v0, v19

    move/from16 v1, v59

    if-eq v0, v1, :cond_19

    const/16 v59, -0x1

    move/from16 v0, v37

    move/from16 v1, v59

    if-eq v0, v1, :cond_19

    move/from16 v0, v37

    move/from16 v1, v19

    if-eq v0, v1, :cond_19

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v59

    sget-object v60, Lcom/fh/hdutil/IConstant;->LOCALES:[Ljava/util/Locale;

    aget-object v60, v60, v19

    invoke-static/range {v59 .. v60}, Lcom/fh/hdutil/AppUtils;->changeAppLanguage(Landroid/content/Context;Ljava/util/Locale;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    new-instance v60, Landroid/content/Intent;

    const-string v61, "com.jieli.dv.running2_language_change"

    invoke-direct/range {v60 .. v61}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 548
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v59

    const-string v60, "language_code"

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/micro/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 552
    .end local v19    # "index":I
    .end local v28    # "lan":Ljava/lang/String;
    .end local v37    # "preIndex":I
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "gra"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 553
    .local v17, "gra":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setGravitySensor(I)V

    goto/16 :goto_0

    .line 557
    .end local v17    # "gra":Ljava/lang/String;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "par"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setVideoParCar(Z)V

    goto/16 :goto_0

    .line 560
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "dat"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setVideoDate(Z)V

    goto/16 :goto_0

    .line 563
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "kvo"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setKeyVoice(Z)V

    goto/16 :goto_0

    .line 566
    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "level"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 567
    .local v31, "level":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setBatStatus(I)V

    goto/16 :goto_0

    .line 571
    .end local v31    # "level":Ljava/lang/String;
    :pswitch_18
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "fre"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 572
    .local v15, "frequency":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static {v15}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setLightFrequece(I)V

    goto/16 :goto_0

    .line 576
    .end local v15    # "frequency":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "aff"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 577
    .local v5, "aff":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setAutoShutdown(I)V

    goto/16 :goto_0

    .line 581
    .end local v5    # "aff":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "pro"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 582
    .local v38, "pro":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setScreenOn(I)V

    goto/16 :goto_0

    .line 586
    .end local v38    # "pro":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "tvm"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/String;

    .line 587
    .local v54, "tvm":Ljava/lang/String;
    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setTvMode(I)V

    goto/16 :goto_0

    .line 591
    .end local v54    # "tvm":Ljava/lang/String;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "two"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setDoubleVideo(Z)V

    goto/16 :goto_0

    .line 594
    :pswitch_1d
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "cyc"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 595
    .local v7, "cyc":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setVideoLoop(I)V

    goto/16 :goto_0

    .line 599
    .end local v7    # "cyc":Ljava/lang/String;
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "wdr"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setVideoWdr(Z)V

    goto/16 :goto_0

    .line 602
    :pswitch_1f
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "exp"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 603
    .local v12, "exp":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setVideoExp(I)V

    goto/16 :goto_0

    .line 607
    .end local v12    # "exp":Ljava/lang/String;
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "mot"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setMoveCheck(Z)V

    goto/16 :goto_0

    .line 610
    :pswitch_21
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "gap"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 611
    .local v16, "gap":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setVideoInv(I)V

    goto/16 :goto_0

    .line 615
    .end local v16    # "gap":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "res"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/String;

    .line 616
    .local v45, "resolution":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setPhotoReso(I)V

    goto/16 :goto_0

    .line 620
    .end local v45    # "resolution":Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "phm"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 621
    .local v35, "phm":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setSelfTime(I)V

    goto/16 :goto_0

    .line 625
    .end local v35    # "phm":Ljava/lang/String;
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "cyt"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setBurstShot(Z)V

    goto/16 :goto_0

    .line 628
    :pswitch_25
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "acu"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 629
    .local v4, "acu":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setPhotoSharpness(I)V

    goto/16 :goto_0

    .line 633
    .end local v4    # "acu":Ljava/lang/String;
    :pswitch_26
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "iso"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 634
    .local v27, "iso":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setPhotoIso(I)V

    goto/16 :goto_0

    .line 638
    .end local v27    # "iso":Ljava/lang/String;
    :pswitch_27
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "exp"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 639
    .local v36, "photoExp":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setPhotoExp(I)V

    goto/16 :goto_0

    .line 643
    .end local v36    # "photoExp":Ljava/lang/String;
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "sok"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setAntiTremor(Z)V

    goto/16 :goto_0

    .line 646
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "dat"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setPhotoDate(Z)V

    goto/16 :goto_0

    .line 649
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const-string v60, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v61

    const-string v62, "bvo"

    invoke-virtual/range {v61 .. v62}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setOpenBootSound(Z)V

    goto/16 :goto_0

    .line 652
    :pswitch_2b
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    if-eqz v59, :cond_0

    .line 653
    const-string v59, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v60

    const-string v61, "status"

    invoke-virtual/range {v60 .. v61}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 654
    .local v26, "isRtVoiceOpen":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/DeviceSettingInfo;->setRTVoice(Z)V

    goto/16 :goto_0

    .line 658
    .end local v26    # "isRtVoiceOpen":Z
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 659
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "Open result:"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v59

    const-string v60, "192.168.80.1"

    const/16 v61, 0x8b4

    invoke-virtual/range {v59 .. v61}, Lcom/jieli/lib/dv/control/DeviceClient;->create(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 672
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x2

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    goto/16 :goto_0

    .line 679
    :pswitch_2e
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    if-eqz v59, :cond_0

    .line 680
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, " >>>> data : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v59, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v60

    const-string v61, "status"

    invoke-virtual/range {v60 .. v61}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 682
    .local v24, "isExistRearCamera":Z
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v59

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "isExistRearCamera : "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/DeviceSettingInfo;->setExistRearView(Z)V

    .line 684
    if-eqz v24, :cond_1d

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "w"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 686
    .local v44, "rearWidth":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "h"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 687
    .local v41, "rearHeight":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "format"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 688
    .local v40, "rearFormat":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v59

    const-string v60, "fps"

    invoke-virtual/range {v59 .. v60}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 689
    .local v43, "rearRate":Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_1a

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_1a

    .line 690
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_1a

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_1a

    .line 691
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v57

    .line 692
    .local v57, "width":I
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 693
    .local v18, "height":I
    move/from16 v0, v57

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/fh/hdutil/AppUtils;->adjustRtsResolution(II)I

    move-result v42

    .line 694
    .local v42, "rearLevel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/DeviceSettingInfo;->setRearLevel(I)V

    .line 696
    .end local v18    # "height":I
    .end local v42    # "rearLevel":I
    .end local v57    # "width":I
    :cond_1a
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_1b

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_1b

    .line 697
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 698
    .local v14, "format":I
    if-nez v14, :cond_1c

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setRearFormat(I)V

    .line 704
    .end local v14    # "format":I
    :cond_1b
    :goto_6
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_0

    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setRearRate(I)V

    goto/16 :goto_0

    .line 701
    .restart local v14    # "format":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/bean/DeviceSettingInfo;->setRearFormat(I)V

    goto :goto_6

    .line 707
    .end local v14    # "format":I
    .end local v40    # "rearFormat":Ljava/lang/String;
    .end local v41    # "rearHeight":Ljava/lang/String;
    .end local v43    # "rearRate":Ljava/lang/String;
    .end local v44    # "rearWidth":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1000(Lcom/hfufo/service/hdservice/CommunicationService;)Z

    move-result v59

    if-eqz v59, :cond_0

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$200(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v59

    const/16 v60, 0x1

    invoke-virtual/range {v59 .. v60}, Lcom/hfufo/rxdrone/MainApplication;->setAbnormalExitThread(Z)V

    goto/16 :goto_0

    .line 713
    .end local v24    # "isExistRearCamera":Z
    :pswitch_2f
    const-string v59, "123456"

    const-string v60, "VIDEO_PARAM: "

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    const-string v60, "front_view_info"

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1100(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$600(Lcom/hfufo/service/hdservice/CommunicationService;)Landroid/os/Handler;

    move-result-object v59

    const/16 v60, 0x13

    invoke-virtual/range {v59 .. v60}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1200(Lcom/hfufo/service/hdservice/CommunicationService;)I

    move-result v32

    .line 753
    .local v32, "mRTSType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1300(Lcom/hfufo/service/hdservice/CommunicationService;)I

    move-result v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1400(Lcom/hfufo/service/hdservice/CommunicationService;)I

    move-result v61

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v61

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1500(Lcom/hfufo/service/hdservice/CommunicationService;III)V

    .line 754
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v59

    const-string v60, "192.168.80.1"

    const/16 v61, 0x8b4

    invoke-virtual/range {v59 .. v61}, Lcom/jieli/lib/dv/control/DeviceClient;->create(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 758
    .end local v32    # "mRTSType":I
    :pswitch_30
    const-string v59, "123456"

    const-string v60, "PULL_VIDEO_PARAM: "

    invoke-static/range {v59 .. v60}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    const-string v60, "rear_view_info"

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1100(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$600(Lcom/hfufo/service/hdservice/CommunicationService;)Landroid/os/Handler;

    move-result-object v59

    const/16 v60, 0x13

    invoke-virtual/range {v59 .. v60}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1200(Lcom/hfufo/service/hdservice/CommunicationService;)I

    move-result v33

    .line 795
    .local v33, "mRTSType_":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1300(Lcom/hfufo/service/hdservice/CommunicationService;)I

    move-result v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1400(Lcom/hfufo/service/hdservice/CommunicationService;)I

    move-result v61

    move-object/from16 v0, v59

    move/from16 v1, v60

    move/from16 v2, v61

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1500(Lcom/hfufo/service/hdservice/CommunicationService;III)V

    .line 796
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v59

    const-string v60, "192.168.80.1"

    const/16 v61, 0x8b4

    invoke-virtual/range {v59 .. v61}, Lcom/jieli/lib/dv/control/DeviceClient;->create(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 293
    :sswitch_data_0
    .sparse-switch
        -0x7b17b91a -> :sswitch_19
        -0x6ca24b9b -> :sswitch_e
        -0x620dc8cc -> :sswitch_25
        -0x489a46f9 -> :sswitch_c
        -0x4878cc7a -> :sswitch_28
        -0x4226664d -> :sswitch_7
        -0x41c92831 -> :sswitch_8
        -0x41c8faee -> :sswitch_15
        -0x41c523f8 -> :sswitch_1d
        -0x31877ca8 -> :sswitch_12
        -0x30f5edd0 -> :sswitch_18
        -0x2ed7acb1 -> :sswitch_d
        -0x2d892eba -> :sswitch_b
        -0x222f5660 -> :sswitch_4
        -0x196eea9e -> :sswitch_5
        -0x16eb42bb -> :sswitch_2b
        -0x15fd2c84 -> :sswitch_17
        -0xc54dec0 -> :sswitch_1b
        -0xa614be7 -> :sswitch_1f
        -0xa613e13 -> :sswitch_21
        -0xa612fbd -> :sswitch_10
        -0xa610abf -> :sswitch_1e
        -0x4a39773 -> :sswitch_1
        -0x32cc7ec -> :sswitch_2
        -0x8d88ee -> :sswitch_14
        0x27ebbb -> :sswitch_6
        0x6455bb -> :sswitch_29
        0x6ac1dc -> :sswitch_22
        0x41d043a -> :sswitch_1a
        0x619a8e1 -> :sswitch_0
        0x8d6a2fa -> :sswitch_20
        0x952af89 -> :sswitch_2f
        0xac45b3b -> :sswitch_a
        0x1061d4f7 -> :sswitch_9
        0x13ac0e6d -> :sswitch_1c
        0x146c748f -> :sswitch_30
        0x1bdacc68 -> :sswitch_2c
        0x1eed9072 -> :sswitch_23
        0x37263ad9 -> :sswitch_24
        0x3b883933 -> :sswitch_13
        0x5c900811 -> :sswitch_3
        0x65459659 -> :sswitch_2a
        0x682b8938 -> :sswitch_2d
        0x6cdf07b2 -> :sswitch_11
        0x73a02a50 -> :sswitch_27
        0x73a038b8 -> :sswitch_26
        0x7ac58312 -> :sswitch_16
        0x7bf2ebf7 -> :sswitch_f
        0x7f44f410 -> :sswitch_2e
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
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
    .end packed-switch
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/hfufo/service/hdservice/CommunicationService$1;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
