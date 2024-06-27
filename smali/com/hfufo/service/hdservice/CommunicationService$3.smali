.class Lcom/hfufo/service/hdservice/CommunicationService$3;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/task/VideoServer$CrashVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/service/hdservice/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/service/hdservice/CommunicationService;


# direct methods
.method constructor <init>(Lcom/hfufo/service/hdservice/CommunicationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/service/hdservice/CommunicationService;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/hfufo/service/hdservice/CommunicationService$3;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1035
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-mCrashVideoListener- onError : code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService$3;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1002(Lcom/hfufo/service/hdservice/CommunicationService;Z)Z

    .line 1037
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService$3;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-static {v0}, Lcom/hfufo/service/hdservice/CommunicationService;->access$600(Lcom/hfufo/service/hdservice/CommunicationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/hfufo/service/hdservice/CommunicationService$3$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/hfufo/service/hdservice/CommunicationService$3$2;-><init>(Lcom/hfufo/service/hdservice/CommunicationService$3;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1046
    return-void
.end method

.method public onStateChange(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1016
    invoke-static {}, Lcom/hfufo/service/hdservice/CommunicationService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-mCrashVideoListener- onStateChange : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    if-ne p1, v3, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService$3;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-static {v0, v3}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1002(Lcom/hfufo/service/hdservice/CommunicationService;Z)Z

    .line 1022
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService$3;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-static {v0}, Lcom/hfufo/service/hdservice/CommunicationService;->access$600(Lcom/hfufo/service/hdservice/CommunicationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/hfufo/service/hdservice/CommunicationService$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/hfufo/service/hdservice/CommunicationService$3$1;-><init>(Lcom/hfufo/service/hdservice/CommunicationService$3;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1031
    return-void

    .line 1019
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/hfufo/service/hdservice/CommunicationService$3;->this$0:Lcom/hfufo/service/hdservice/CommunicationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/service/hdservice/CommunicationService;->access$1002(Lcom/hfufo/service/hdservice/CommunicationService;Z)Z

    goto :goto_0
.end method
