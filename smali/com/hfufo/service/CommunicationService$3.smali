.class Lcom/hfufo/service/CommunicationService$3;
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
    .line 531
    iput-object p1, p0, Lcom/hfufo/service/CommunicationService$3;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$3;->this$0:Lcom/hfufo/service/CommunicationService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/service/CommunicationService;->access$902(Lcom/hfufo/service/CommunicationService;Z)Z

    .line 535
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$3;->this$0:Lcom/hfufo/service/CommunicationService;

    invoke-virtual {v1}, Lcom/hfufo/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vermatch.txt"

    new-instance v3, Lcom/hfufo/service/CommunicationService$3$1;

    invoke-direct {v3, p0}, Lcom/hfufo/service/CommunicationService$3$1;-><init>(Lcom/hfufo/service/CommunicationService$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/ParseHelper;->requestDeviceVersionText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    .line 564
    return-void
.end method
