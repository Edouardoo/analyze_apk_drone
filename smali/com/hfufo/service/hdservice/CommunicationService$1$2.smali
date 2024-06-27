.class Lcom/hfufo/service/hdservice/CommunicationService$1$2;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/task/ClearThumbTask$OnClearThumbTaskListener;


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
    .line 387
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService$1$2;->this$1:Lcom/hfufo/service/hdservice/CommunicationService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService$1$2;->this$1:Lcom/hfufo/service/hdservice/CommunicationService$1;

    iget-object v0, v0, Lcom/hfufo/service/hdservice/CommunicationService$1;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService;->access$702(Lcom/hfufo/service/hdservice/CommunicationService;Lcom/task/ClearThumbTask;)Lcom/task/ClearThumbTask;

    .line 391
    return-void
.end method
