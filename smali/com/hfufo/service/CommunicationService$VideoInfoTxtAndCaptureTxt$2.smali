.class Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;


# direct methods
.method constructor <init>(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 4
    .param p1, "isSuccess"    # Z

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$600(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$700(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;I)V

    .line 517
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v0}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$400(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v2}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$800(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2$1;

    invoke-direct {v3, p0}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2$1;-><init>(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/jieli/lib/stream/tools/ParseHelper;->requestVideoInfoText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    goto :goto_0
.end method
