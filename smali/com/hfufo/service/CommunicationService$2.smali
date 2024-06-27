.class Lcom/hfufo/service/CommunicationService$2;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/service/CommunicationService;


# direct methods
.method constructor <init>(Lcom/hfufo/service/CommunicationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/service/CommunicationService;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    const-string v1, "52123"

    const-string v2, "createDeviceSocket: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService;->access$000(Lcom/hfufo/service/CommunicationService;)I

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v2}, Lcom/hfufo/service/CommunicationService;->access$100(Lcom/hfufo/service/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getAppVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hfufo/service/CommunicationService;->access$002(Lcom/hfufo/service/CommunicationService;I)I

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-virtual {v2}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hfufo/service/CommunicationService;->getConnectedWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "addr":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService;->access$100(Lcom/hfufo/service/CommunicationService;)Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iput-object v0, v1, Lcom/hfufo/rxdrone/MainApplication;->connectIP:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService;->access$200(Lcom/hfufo/service/CommunicationService;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v2}, Lcom/hfufo/service/CommunicationService;->access$000(Lcom/hfufo/service/CommunicationService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->setLocalAppVersion(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService;->access$200(Lcom/hfufo/service/CommunicationService;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    const/16 v2, 0x8ae

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->createClient(Ljava/lang/String;I)V

    .line 135
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService;->access$200(Lcom/hfufo/service/CommunicationService;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->setOnDeviceListener(Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;)V

    .line 138
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->getInstance()Lcom/jieli/lib/stream/udp/UdpClientImpl;

    move-result-object v1

    const/16 v2, 0x8b4

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->createClient(Ljava/lang/String;I)V

    .line 139
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->getInstance()Lcom/jieli/lib/stream/udp/UdpClientImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService$2;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v2}, Lcom/hfufo/service/CommunicationService;->access$300(Lcom/hfufo/service/CommunicationService;)Lcom/jieli/lib/stream/udp/UdpDeviceListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->registerUdpDeviceListener(Lcom/jieli/lib/stream/udp/UdpDeviceListener;)Z

    .line 153
    return-void
.end method
