.class Lcom/hfufo/service/hdservice/CommunicationService$1$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/hdservice/CommunicationService$1;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/service/hdservice/CommunicationService$1;


# direct methods
.method constructor <init>(Lcom/hfufo/service/hdservice/CommunicationService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/service/hdservice/CommunicationService$1;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService$1$1;->this$1:Lcom/hfufo/service/hdservice/CommunicationService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    .line 377
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 378
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send failed"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 374
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/hfufo/service/hdservice/CommunicationService$1$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
