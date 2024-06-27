.class Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->onResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;


# direct methods
.method constructor <init>(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2$1;->this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2$1;->this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v0}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$400(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Lcom/hfufo/service/CommunicationService;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContextWeakReference is null again."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 508
    :cond_0
    if-eqz p1, :cond_1

    .line 509
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2$1;->this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2$1;->this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;

    iget-object v1, v1, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$600(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$700(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;I)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-static {}, Lcom/hfufo/service/CommunicationService;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2$1;->this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;

    iget-object v2, v2, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v2}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$800(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2$1;->this$1:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;

    iget-object v0, v0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$2;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v0}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$400(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.jieli.dvflying_get_video_info_error"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
