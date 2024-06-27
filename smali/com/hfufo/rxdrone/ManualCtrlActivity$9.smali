.class Lcom/hfufo/rxdrone/ManualCtrlActivity$9;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 793
    if-eqz p1, :cond_1

    .line 794
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v3

    if-nez v3, :cond_0

    .line 795
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$302(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/jieli/lib/stream/tools/CommandHub;)Lcom/jieli/lib/stream/tools/CommandHub;

    .line 799
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 903
    :cond_1
    :goto_0
    :sswitch_0
    return v9

    .line 801
    :sswitch_1
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/micro/util/CommandManager;

    move-result-object v3

    const-string v4, "0001"

    invoke-virtual {v3, v4}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "devMode":Ljava/lang/String;
    const-string v3, "PreviewActivityTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TEST : MSG_TAKE_VIDEO >> devMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 805
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/micro/util/CommandManager;

    move-result-object v3

    const-string v4, "0027"

    invoke-virtual {v3, v4}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "devState":Ljava/lang/String;
    const-string v3, "PreviewActivityTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TEST : MSG_TAKE_VIDEO >> devState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 810
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v3

    const-string v4, "1"

    const-string v5, "0014"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v5, v6}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 816
    :cond_3
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v3

    const-string v4, "1"

    const-string v5, "0027"

    invoke-virtual {v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 820
    :cond_4
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v3

    const-string v4, "1"

    const-string v5, "0015"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v5, v6}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 826
    .end local v1    # "devState":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v3

    const-string v4, "1"

    const-string v5, "0001"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "0"

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v5, v6}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 827
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3, v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_0

    .line 831
    .end local v0    # "devMode":Ljava/lang/String;
    :sswitch_2
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/micro/util/CommandManager;

    move-result-object v3

    const-string v4, "0001"

    invoke-virtual {v3, v4}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .restart local v0    # "devMode":Ljava/lang/String;
    const-string v3, "PreviewActivityTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TEST :MSG_TAKE_PHOTO >> devMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 834
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/micro/util/CommandManager;

    move-result-object v3

    const-string v4, "0009"

    invoke-virtual {v3, v4}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    .restart local v1    # "devState":Ljava/lang/String;
    const-string v3, "PreviewActivityTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TEST :MSG_TAKE_PHOTO >> devState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 837
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v3

    const-string v4, "1"

    const-string v5, "0013"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v5, v6}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    :cond_6
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 845
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v3

    const-string v4, "1"

    const-string v5, "0009"

    invoke-virtual {v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 851
    .end local v1    # "devState":Ljava/lang/String;
    :cond_7
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 852
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/micro/util/CommandManager;

    move-result-object v3

    const-string v4, "0027"

    invoke-virtual {v3, v4}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .restart local v1    # "devState":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 858
    .end local v1    # "devState":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v3

    const-string v4, "1"

    const-string v5, "0001"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v5, v6}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 859
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3, v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_0

    .line 865
    .end local v0    # "devMode":Ljava/lang/String;
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 881
    .local v2, "timer":I
    goto/16 :goto_0

    .line 883
    .end local v2    # "timer":I
    :sswitch_4
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v4, v4, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    invoke-static {v3, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2900(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/videooperate/bean/Song;)V

    goto/16 :goto_0

    .line 886
    :sswitch_5
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v3

    const/16 v4, -0x80

    invoke-virtual {v3, v4}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    .line 887
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 888
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 889
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3, v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    goto/16 :goto_0

    .line 893
    :sswitch_6
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 897
    :sswitch_7
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_tips:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 898
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_tips1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 899
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_text3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 799
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_6
        0x1c -> :sswitch_4
        0x1d -> :sswitch_7
        0x23 -> :sswitch_5
        0xabc0 -> :sswitch_1
        0xabc1 -> :sswitch_2
        0xabc2 -> :sswitch_0
        0xabc3 -> :sswitch_3
    .end sparse-switch
.end method
