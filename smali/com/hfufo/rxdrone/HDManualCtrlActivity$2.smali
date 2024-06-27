.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;
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
    .line 560
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 564
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 565
    .local v1, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v2, "FLIGHT_CONTROL"

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 566
    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 567
    const-string v0, ""

    .line 569
    .local v0, "cmd":Ljava/lang/String;
    sget-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/bean/DeviceDesc;->getProtocol_version()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 570
    :cond_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/Protocol1;->getChannel1()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fh/util/ProtocolOfQuanzhi;->setChannel1(B)V

    .line 571
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/Protocol1;->getChannel2()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fh/util/ProtocolOfQuanzhi;->setChannel2(B)V

    .line 572
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/Protocol1;->getChannel3()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fh/util/ProtocolOfQuanzhi;->setChannel3(B)V

    .line 573
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/Protocol1;->getChannel4()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fh/util/ProtocolOfQuanzhi;->setChannel4(B)V

    .line 575
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 577
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 578
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/task/UDPClientGPS;->setRockerData([B)V

    .line 579
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/task/UDPClientGPS;->setData([B)V

    .line 641
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 642
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x50

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    return-void

    .line 585
    :cond_2
    sget-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->e_8data:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    if-eqz v2, :cond_5

    .line 586
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fh/util/Protocol1;->packageOf8()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 587
    const-string v2, "DRONE_DATA"

    invoke-virtual {v1, v2, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/bean/DeviceDesc;->getCtl_typeB()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 590
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 594
    :cond_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 595
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/task/UDPClientGPS;->resume()V

    .line 596
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/Protocol1;->packageOf8()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/task/UDPClientGPS;->setRockerData([B)V

    .line 597
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/Protocol1;->packageOf8()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/task/UDPClientGPS;->setData([B)V

    goto/16 :goto_0

    .line 599
    :cond_4
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    goto/16 :goto_0

    .line 604
    :cond_5
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 605
    const-string v2, "DRONE_DATA"

    invoke-virtual {v1, v2, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/bean/DeviceDesc;->getCtl_typeB()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 607
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 608
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 609
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 613
    :cond_6
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 614
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/task/UDPClientGPS;->resume()V

    .line 615
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/task/UDPClientGPS;->setRockerData([B)V

    .line 616
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/task/UDPClientGPS;->setData([B)V

    goto/16 :goto_0

    .line 618
    :cond_7
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    goto/16 :goto_0
.end method
