.class Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;
.super Landroid/os/Handler;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/service/hdservice/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1049
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hfufo/service/hdservice/CommunicationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hfufo/service/hdservice/CommunicationService$1;

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x13

    .line 1055
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1056
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-handleMessage- what : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1059
    :pswitch_0
    const-string v2, "123456"

    const-string v3, "MSG_CONNECTFAIL_CTP: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :pswitch_1
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 1070
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 1072
    const-string v2, "123456"

    const-string v3, "MSG_DISCONNECT_CTP_Timeout: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0, v5}, Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;->removeMessages(I)V

    .line 1074
    const-string v2, "192.168.80.1"

    invoke-virtual {p0, v5, v2}, Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v2, v4, v5}, Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1080
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1081
    .local v0, "ip":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1082
    const-string v0, "192.168.80.1"

    .line 1084
    :cond_1
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1085
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 1087
    :cond_2
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1088
    const-string v2, "123456"

    const-string v3, "MSG_CONNECT_CTP: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    const/16 v3, 0xd05

    invoke-virtual {v2, v0, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->create(Ljava/lang/String;I)V

    goto :goto_0

    .line 1093
    .end local v0    # "ip":Ljava/lang/String;
    :pswitch_3
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/hfufo/rxdrone/MainApplication;->connectedWifi:Z

    if-eqz v2, :cond_0

    .line 1096
    const-string v2, "123456"

    const-string v3, "MSG_RECONNECT_CTP000: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1100
    const-string v2, "123456"

    const-string v3, "MSG_RECONNECT_CTP: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/hfufo/rxdrone/MainApplication;->sendCommandToService(ILjava/lang/String;)V

    .line 1102
    invoke-virtual {p0, v5}, Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;->removeMessages(I)V

    .line 1103
    const-string v2, "192.168.80.1"

    invoke-virtual {p0, v5, v2}, Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x4b0

    invoke-virtual {p0, v2, v4, v5}, Lcom/hfufo/service/hdservice/CommunicationService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1108
    :pswitch_4
    const-string v2, "123456"

    const-string v3, "MSG_DISCONNECT_CTP: "

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1111
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    .line 1112
    :cond_3
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/MainApplication;->setConncetion(Z)V

    goto/16 :goto_0

    .line 1057
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
