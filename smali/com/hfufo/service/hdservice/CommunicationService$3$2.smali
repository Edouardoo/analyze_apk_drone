.class Lcom/hfufo/service/hdservice/CommunicationService$3$2;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/hdservice/CommunicationService$3;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/service/hdservice/CommunicationService$3;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hfufo/service/hdservice/CommunicationService$3;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/service/hdservice/CommunicationService$3;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$2;->this$1:Lcom/hfufo/service/hdservice/CommunicationService$3;

    iput p2, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$2;->val$code:I

    iput-object p3, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_emergency_video_state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "error_code"

    iget v2, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$2;->val$code:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1042
    const-string v1, "emergency_msg"

    iget-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$2;->this$1:Lcom/hfufo/service/hdservice/CommunicationService$3;

    iget-object v1, v1, Lcom/hfufo/service/hdservice/CommunicationService$3;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-virtual {v1, v0}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1044
    return-void
.end method
