.class Lcom/hfufo/service/CommunicationService$3$1$1$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/CommunicationService$3$1$1;->onResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/hfufo/service/CommunicationService$3$1$1;


# direct methods
.method constructor <init>(Lcom/hfufo/service/CommunicationService$3$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/hfufo/service/CommunicationService$3$1$1;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/hfufo/service/CommunicationService$3$1$1$1;->this$3:Lcom/hfufo/service/CommunicationService$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .prologue
    .line 551
    if-eqz p1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$3$1$1$1;->this$3:Lcom/hfufo/service/CommunicationService$3$1$1;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$3$1$1;->this$2:Lcom/hfufo/service/CommunicationService$3$1;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$3$1;->this$1:Lcom/hfufo/service/CommunicationService$3;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$3;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v0}, Lcom/hfufo/service/CommunicationService;->access$1000(Lcom/hfufo/service/CommunicationService;)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$3$1$1$1;->this$3:Lcom/hfufo/service/CommunicationService$3$1$1;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$3$1$1;->this$2:Lcom/hfufo/service/CommunicationService$3$1;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$3$1;->this$1:Lcom/hfufo/service/CommunicationService$3;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$3;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-static {v0}, Lcom/hfufo/service/CommunicationService;->access$200(Lcom/hfufo/service/CommunicationService;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "0037"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
