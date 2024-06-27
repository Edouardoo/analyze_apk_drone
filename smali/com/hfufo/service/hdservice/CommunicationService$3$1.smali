.class Lcom/hfufo/service/hdservice/CommunicationService$3$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/service/hdservice/CommunicationService$3;->onStateChange(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/service/hdservice/CommunicationService$3;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/hfufo/service/hdservice/CommunicationService$3;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/service/hdservice/CommunicationService$3;

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$1;->this$1:Lcom/hfufo/service/hdservice/CommunicationService$3;

    iput p2, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$1;->val$state:I

    iput-object p3, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1025
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_emergency_video_state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "video_state"

    iget v2, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$1;->val$state:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1027
    const-string v1, "emergency_msg"

    iget-object v2, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    iget-object v1, p0, Lcom/hfufo/service/hdservice/CommunicationService$3$1;->this$1:Lcom/hfufo/service/hdservice/CommunicationService$3;

    iget-object v1, v1, Lcom/hfufo/service/hdservice/CommunicationService$3;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-virtual {v1, v0}, Lcom/hfufo/service/hdservice/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1029
    return-void
.end method
