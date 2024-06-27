.class Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/bean/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseWifiBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/bean/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/hfufo/bean/BaseActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hfufo/bean/BaseActivity;Lcom/hfufo/bean/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hfufo/bean/BaseActivity;
    .param p2, "x1"    # Lcom/hfufo/bean/BaseActivity$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;-><init>(Lcom/hfufo/bean/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    if-nez p2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "action":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 59
    const/16 v20, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v20, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/hfufo/bean/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/Util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/Util/WifiHelper;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    .line 64
    :cond_3
    const-string v20, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkInfo;

    .line 65
    .local v12, "networkInfo":Landroid/net/NetworkInfo;
    const-string v20, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiInfo;

    .line 66
    .local v18, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v12, :cond_4

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->access$000(Lcom/hfufo/bean/BaseActivity;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "networkInfo is null"

    invoke-static/range {v20 .. v21}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    const v21, 0xeef0

    invoke-virtual/range {v20 .. v21}, Lcom/Util/WifiHelper;->notifyWifiError(I)V

    goto :goto_0

    .line 59
    .end local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v18    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :sswitch_0
    const-string v21, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v20, 0x0

    goto :goto_1

    :sswitch_1
    const-string v21, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v20, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v21, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v20, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v21, "com.jieli.dv.running2_emergency_video_state"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v20, 0x3

    goto/16 :goto_1

    .line 72
    .restart local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v18    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    .line 73
    .local v8, "isWifiConnected":Z
    :goto_2
    if-eqz v8, :cond_0

    .line 74
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->access$000(Lcom/hfufo/bean/BaseActivity;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "networkType is not TYPE_WIFI"

    invoke-static/range {v20 .. v21}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    const v21, 0xeef1

    invoke-virtual/range {v20 .. v21}, Lcom/Util/WifiHelper;->notifyWifiError(I)V

    goto/16 :goto_0

    .line 72
    .end local v8    # "isWifiConnected":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 79
    .restart local v8    # "isWifiConnected":Z
    :cond_6
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 80
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->access$000(Lcom/hfufo/bean/BaseActivity;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "wifiInfo is  empty or ssid is null"

    invoke-static/range {v20 .. v21}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    const v21, 0xeef2

    invoke-virtual/range {v20 .. v21}, Lcom/Util/WifiHelper;->notifyWifiError(I)V

    goto/16 :goto_0

    .line 85
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/Util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "current_wifi_ssid"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 87
    .local v13, "preSsid":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/Util/WifiHelper;->notifyWifiConnect(Landroid/net/wifi/WifiInfo;)V

    goto/16 :goto_0

    .line 88
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->access$000(Lcom/hfufo/bean/BaseActivity;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "It has been try to connect device"

    invoke-static/range {v20 .. v21}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    .end local v8    # "isWifiConnected":Z
    .end local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v13    # "preSsid":Ljava/lang/String;
    .end local v18    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/hfufo/bean/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/Util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/Util/WifiHelper;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    .line 95
    :cond_a
    const-string v20, "newState"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/SupplicantState;

    .line 96
    .local v15, "state":Landroid/net/wifi/SupplicantState;
    const-string v20, "supplicantError"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 97
    .local v16, "supplicantError":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->access$000(Lcom/hfufo/bean/BaseActivity;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "supplicantError="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v20, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    const v21, 0xeef3

    invoke-virtual/range {v20 .. v21}, Lcom/Util/WifiHelper;->notifyWifiError(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/Util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 101
    .local v14, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v20, "current_wifi_ssid"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "cSSID":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/Util/WifiHelper;->removeSavedNetWork(Ljava/lang/String;)Z

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/Util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "current_wifi_ssid"

    invoke-static/range {v20 .. v21}, Lcom/Util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    .end local v4    # "cSSID":Ljava/lang/String;
    .end local v14    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    .end local v16    # "supplicantError":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/hfufo/bean/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/Util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/Util/WifiHelper;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    .line 113
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/Util/WifiHelper;->isWifiOpen()Z

    move-result v20

    if-nez v20, :cond_d

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/Util/WifiHelper;->isNetWorkConnectedType(Landroid/content/Context;I)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 116
    const v19, 0xeef1

    .line 120
    .local v19, "wifiState":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/Util/WifiHelper;->notifyWifiError(I)V

    goto/16 :goto_0

    .line 118
    .end local v19    # "wifiState":I
    :cond_c
    const v19, 0xeef4

    .restart local v19    # "wifiState":I
    goto :goto_3

    .line 122
    .end local v19    # "wifiState":I
    :cond_d
    const-string v20, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 123
    .local v5, "conMan":Landroid/net/ConnectivityManager;
    const/4 v11, 0x0

    .line 124
    .local v11, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_e

    .line 125
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 127
    :cond_e
    if-eqz v11, :cond_10

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/Util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 129
    .local v7, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->access$000(Lcom/hfufo/bean/BaseActivity;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Have Wifi Connection:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/Util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "current_wifi_ssid"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 133
    .restart local v13    # "preSsid":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/Util/WifiHelper;->notifyWifiConnect(Landroid/net/wifi/WifiInfo;)V

    goto/16 :goto_0

    .line 134
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->access$000(Lcom/hfufo/bean/BaseActivity;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "It has been try to connect device"

    invoke-static/range {v20 .. v21}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .end local v7    # "info":Landroid/net/wifi/WifiInfo;
    .end local v13    # "preSsid":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->access$000(Lcom/hfufo/bean/BaseActivity;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "Don\'t have Wifi Connection"

    invoke-static/range {v20 .. v21}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "conMan":Landroid/net/ConnectivityManager;
    .end local v11    # "netInfo":Landroid/net/NetworkInfo;
    :pswitch_3
    const-string v20, "video_state"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 140
    .local v17, "videoState":I
    const-string v20, "error_code"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 141
    .local v6, "errorCode":I
    const-string v20, "emergency_msg"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/hfufo/rxdrone/MainApplication;->getTopActivity()Lcom/hfufo/bean/BaseActivity;

    move-result-object v9

    .line 143
    .local v9, "mActivity":Lcom/hfufo/bean/BaseActivity;
    if-nez v9, :cond_11

    .line 144
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    .line 146
    :cond_11
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_12

    .line 147
    packed-switch v17, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 149
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/hfufo/bean/BaseActivity;->showNotifyDialog(Lcom/hfufo/bean/BaseActivity;)V

    goto/16 :goto_0

    .line 152
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->dismissNotifyDialog()V

    .line 153
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    goto/16 :goto_0

    .line 159
    :cond_12
    const/16 v20, 0xee4

    move/from16 v0, v20

    if-ne v6, v0, :cond_13

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/hfufo/rxdrone/MainApplication;->setAbnormalExitThread(Z)V

    .line 162
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;->this$0:Lcom/hfufo/bean/BaseActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/hfufo/bean/BaseActivity;->dismissNotifyDialog()V

    .line 163
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    goto/16 :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        -0x45e5283a -> :sswitch_2
        -0x147b62d9 -> :sswitch_0
        0xdeb41c0 -> :sswitch_1
        0x6d972677 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 147
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
