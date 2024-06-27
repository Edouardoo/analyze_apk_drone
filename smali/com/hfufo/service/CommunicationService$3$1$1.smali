.class Lcom/hfufo/service/CommunicationService$3$1$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/CommunicationService$3$1;->onResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hfufo/service/CommunicationService$3$1;


# direct methods
.method constructor <init>(Lcom/hfufo/service/CommunicationService$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/hfufo/service/CommunicationService$3$1;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/hfufo/service/CommunicationService$3$1$1;->this$2:Lcom/hfufo/service/CommunicationService$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 4
    .param p1, "isSuccess"    # Z

    .prologue
    .line 545
    if-eqz p1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$3$1$1;->this$2:Lcom/hfufo/service/CommunicationService$3$1;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$3$1;->this$1:Lcom/hfufo/service/CommunicationService$3;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$3;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v0}, Lcom/hfufo/service/CommunicationService;->access$1000(Lcom/hfufo/service/CommunicationService;)V

    .line 559
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$3$1$1;->this$2:Lcom/hfufo/service/CommunicationService$3$1;

    iget-object v1, v1, Lcom/hfufo/service/CommunicationService$3$1;->this$1:Lcom/hfufo/service/CommunicationService$3;

    iget-object v1, v1, Lcom/hfufo/service/CommunicationService$3;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-virtual {v1}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vermatch.txt"

    new-instance v3, Lcom/hfufo/service/CommunicationService$3$1$1$1;

    invoke-direct {v3, p0}, Lcom/hfufo/service/CommunicationService$3$1$1$1;-><init>(Lcom/hfufo/service/CommunicationService$3$1$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/ParseHelper;->requestDeviceVersionText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    goto :goto_0
.end method
