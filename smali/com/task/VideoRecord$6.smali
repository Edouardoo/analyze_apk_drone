.class Lcom/task/VideoRecord$6;
.super Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;
.source "VideoRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/task/VideoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/VideoRecord;


# direct methods
.method constructor <init>(Lcom/task/VideoRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/VideoRecord;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/task/VideoRecord$6;->this$0:Lcom/task/VideoRecord;

    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/task/VideoRecord$6;->this$0:Lcom/task/VideoRecord;

    invoke-static {v0}, Lcom/task/VideoRecord;->access$300(Lcom/task/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/task/VideoRecord$6;->this$0:Lcom/task/VideoRecord;

    invoke-static {v0, p2}, Lcom/task/VideoRecord;->access$200(Lcom/task/VideoRecord;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/task/VideoRecord$6;->this$0:Lcom/task/VideoRecord;

    invoke-virtual {v0}, Lcom/task/VideoRecord;->close()V

    .line 288
    return-void
.end method

.method public onStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 292
    new-instance v0, Lcom/task/VideoRecord$6$1;

    invoke-direct {v0, p0}, Lcom/task/VideoRecord$6$1;-><init>(Lcom/task/VideoRecord$6;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    .line 301
    :cond_0
    return-void
.end method
