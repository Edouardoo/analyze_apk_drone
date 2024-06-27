.class Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->getCaptureTxt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    iput p2, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Z)V
    .locals 5
    .param p1, "isSuccess"    # Z

    .prologue
    .line 462
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$400(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 463
    invoke-static {}, Lcom/hfufo/service/CommunicationService;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Context is null"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 466
    :cond_0
    if-eqz p1, :cond_1

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dvflying_responding_video_desc_request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, "videoFileName":Landroid/content/Intent;
    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$400(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 470
    .end local v0    # "videoFileName":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->getInstance()Lcom/jieli/lib/stream/tools/ParseHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;->this$0:Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;

    invoke-static {v1}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;->access$400(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget v3, p0, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;->val$size:I

    new-instance v4, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1$1;

    invoke-direct {v4, p0}, Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1$1;-><init>(Lcom/hfufo/service/CommunicationService$VideoInfoTxtAndCaptureTxt$1;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/jieli/lib/stream/tools/ParseHelper;->requestCaptureText(Landroid/content/Context;ILcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V

    goto :goto_0
.end method
