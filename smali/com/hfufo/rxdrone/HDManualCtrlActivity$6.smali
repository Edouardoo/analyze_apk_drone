.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 741
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0xf1

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, -0x80

    .line 744
    if-eqz p1, :cond_0

    .line 745
    const/4 v7, 0x0

    .line 746
    .local v7, "open":Z
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 903
    .end local v7    # "open":Z
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 748
    .restart local v7    # "open":Z
    :sswitch_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    move-result-object v5

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToScreenShotTask(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 753
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 755
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 770
    :sswitch_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 774
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSaveCycVideo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 782
    :sswitch_3
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/MainApplication;->connectedWifi:Z

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->wifi_scan()V

    .line 800
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    const-string v0, "123456"

    const-string v2, "RE-MSG_NET_RECONNECT"

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 803
    .local v6, "messag":Landroid/os/Message;
    iput v4, v6, Landroid/os/Message;->what:I

    .line 804
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 807
    .end local v6    # "messag":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6$1;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 818
    :sswitch_4
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    if-eqz v0, :cond_0

    .line 819
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->CloseSocket()V

    goto/16 :goto_0

    .line 823
    :sswitch_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)V

    goto/16 :goto_0

    .line 827
    :sswitch_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    goto/16 :goto_0

    .line 832
    :sswitch_7
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->fun_switchCamera()V

    goto/16 :goto_0

    .line 838
    :sswitch_8
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/16 v2, 0x101

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    goto/16 :goto_0

    .line 842
    :sswitch_9
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 849
    :sswitch_a
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->finish()V

    goto/16 :goto_0

    .line 853
    :sswitch_b
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 855
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 856
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 857
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    goto/16 :goto_0

    .line 862
    :sswitch_c
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    goto/16 :goto_0

    .line 868
    :sswitch_d
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto/16 :goto_0

    .line 873
    :sswitch_e
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto/16 :goto_0

    .line 879
    :sswitch_f
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto/16 :goto_0

    .line 885
    :sswitch_10
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    goto/16 :goto_0

    .line 892
    :sswitch_11
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/task/VideoRecord;->close()V

    .line 895
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/task/VideoRecord;)Lcom/task/VideoRecord;

    goto/16 :goto_0

    .line 746
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0xa -> :sswitch_8
        0xb -> :sswitch_a
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_f
        0x17 -> :sswitch_10
        0x19 -> :sswitch_11
        0x1a -> :sswitch_6
        0x24 -> :sswitch_e
        0xf1 -> :sswitch_3
        0xa02 -> :sswitch_1
        0xa03 -> :sswitch_0
        0xa04 -> :sswitch_2
    .end sparse-switch
.end method
