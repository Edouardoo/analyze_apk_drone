.class Lcom/hfufo/rxdrone/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 2456
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2460
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 2461
    .local v1, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v2, "FLIGHT_CONTROL"

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 2462
    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 2463
    const-string v0, ""

    .line 2464
    .local v0, "cmd":Ljava/lang/String;
    sget-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    if-eqz v2, :cond_1

    .line 2465
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$2500(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 2473
    :goto_0
    const-string v2, "DRONE_DATA"

    invoke-virtual {v1, v2, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$2600(Lcom/hfufo/rxdrone/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2478
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2479
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e00\u76f4\u53d1\u9001\u7684\u6307\u4ee4111:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/MainActivity;->access$2400(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/Protocol1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v4

    invoke-static {v4}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2480
    invoke-static {}, Lcom/fh/hdutil/UDPClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2495
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/MainActivity;->access$000(Lcom/hfufo/rxdrone/MainActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2496
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$100(Lcom/hfufo/rxdrone/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/MainActivity;->access$000(Lcom/hfufo/rxdrone/MainActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2497
    return-void

    .line 2467
    :cond_1
    sget-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->e_8data:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    if-eqz v2, :cond_2

    .line 2468
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$2400(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/Protocol1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fh/util/Protocol1;->packageOf8()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2470
    :cond_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$2400(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/Protocol1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2489
    :cond_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$800(Lcom/hfufo/rxdrone/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2491
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$200(Lcom/hfufo/rxdrone/MainActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v2

    const-string v3, "3"

    const-string v4, "0139"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hfufo/rxdrone/MainActivity$16;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v7}, Lcom/hfufo/rxdrone/MainActivity;->access$2400(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/Protocol1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v7

    invoke-static {v7}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method
