.class Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;->onResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;


# direct methods
.method constructor <init>(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1$1;->this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .prologue
    .line 473
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1$1;->this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;

    iget-object v1, v1, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$400(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 474
    invoke-static {}, Lcom/hfufo/service/CommunicationService;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Context is null again."

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dvflying_responding_video_desc_request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "videoFileName":Landroid/content/Intent;
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1$1;->this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;

    iget-object v1, v1, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$400(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
