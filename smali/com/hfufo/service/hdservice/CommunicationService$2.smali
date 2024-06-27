.class Lcom/hfufo/service/hdservice/CommunicationService$2;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;


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
    .line 807
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService$2;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, "type":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 856
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 813
    :pswitch_1
    const-string v1, "123456"

    const-string v2, "DEVICE_STATE_CONNECTED-Comm: "

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 834
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop mHeartbeatTask1-DISCONNECTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 844
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop mHeartbeatTask1-UNREADY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService$2;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-static {v1}, Lcom/hfufo/service/hdservice/CommunicationService;->access$500(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/HeartbeatTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService$2;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-static {v1}, Lcom/hfufo/service/hdservice/CommunicationService;->access$500(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/HeartbeatTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/task/HeartbeatTask;->isHeartbeatTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService$2;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-static {v1}, Lcom/hfufo/service/hdservice/CommunicationService;->access$500(Lcom/hfufo/service/hdservice/CommunicationService;)Lcom/task/HeartbeatTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/task/HeartbeatTask;->stopRunning()V

    .line 850
    :cond_1
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService$2;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hfufo/service/hdservice/CommunicationService;->access$502(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/task/HeartbeatTask;)Lcom/task/HeartbeatTask;

    goto :goto_0

    .line 811
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onStateChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 807
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/hfufo/service/hdservice/CommunicationService$2;->onStateChanged(Ljava/lang/Integer;)V

    return-void
.end method
