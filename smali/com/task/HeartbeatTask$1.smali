.class Lcom/task/HeartbeatTask$1;
.super Ljava/lang/Object;
.source "HeartbeatTask.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/HeartbeatTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/HeartbeatTask;


# direct methods
.method constructor <init>(Lcom/task/HeartbeatTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/HeartbeatTask;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/task/HeartbeatTask$1;->this$0:Lcom/task/HeartbeatTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 79
    iget-object v0, p0, Lcom/task/HeartbeatTask$1;->this$0:Lcom/task/HeartbeatTask;

    iget-object v0, v0, Lcom/task/HeartbeatTask;->tag:Ljava/lang/String;

    const-string v1, "Send failed!!!"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/task/HeartbeatTask$1;->this$0:Lcom/task/HeartbeatTask;

    invoke-static {v0, v3}, Lcom/task/HeartbeatTask;->access$002(Lcom/task/HeartbeatTask;Z)Z

    .line 81
    iget-object v0, p0, Lcom/task/HeartbeatTask$1;->this$0:Lcom/task/HeartbeatTask;

    invoke-static {v0, v2}, Lcom/task/HeartbeatTask;->access$102(Lcom/task/HeartbeatTask;I)I

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/task/HeartbeatTask$1;->this$0:Lcom/task/HeartbeatTask;

    invoke-static {v0, v2}, Lcom/task/HeartbeatTask;->access$002(Lcom/task/HeartbeatTask;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/task/HeartbeatTask$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
