.class Lcom/hfufo/rxdrone/ManualCtrlActivity$8;
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
    .line 700
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v2, -0x80

    .line 703
    if-eqz p1, :cond_0

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "open":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 786
    .end local v0    # "open":Z
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v1, 0x0

    return v1

    .line 712
    .restart local v0    # "open":Z
    :sswitch_1
    const-string v1, "123456"

    const-string v2, "SERVICE_CMD_DISCONNECT_CTP-HD"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->CloseSocket()V

    goto :goto_0

    .line 734
    :sswitch_2
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 742
    :sswitch_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->finish()V

    goto :goto_0

    .line 746
    :sswitch_4
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 748
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 749
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 750
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    goto :goto_0

    .line 755
    :sswitch_5
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    goto :goto_0

    .line 762
    :sswitch_6
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto :goto_0

    .line 768
    :sswitch_7
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto/16 :goto_0

    .line 774
    :sswitch_8
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    goto/16 :goto_0

    .line 705
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xb -> :sswitch_3
        0xe -> :sswitch_0
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_8
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0xf1 -> :sswitch_0
    .end sparse-switch
.end method
