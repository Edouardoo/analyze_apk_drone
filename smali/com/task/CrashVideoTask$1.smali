.class Lcom/task/CrashVideoTask$1;
.super Lcom/jieli/lib/dv/control/player/OnRecordListener;
.source "CrashVideoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/task/CrashVideoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/CrashVideoTask;


# direct methods
.method constructor <init>(Lcom/task/CrashVideoTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/CrashVideoTask;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/OnRecordListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnRecordListener;->onError(ILjava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v0}, Lcom/task/CrashVideoTask;->access$000(Lcom/task/CrashVideoTask;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrapper mov error! code = "

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

    .line 64
    iget-object v0, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v0, p1, p2}, Lcom/task/CrashVideoTask;->access$100(Lcom/task/CrashVideoTask;ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public onStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-super {p0, p1, p2}, Lcom/jieli/lib/dv/control/player/OnRecordListener;->onStateChanged(ILjava/lang/String;)V

    .line 70
    if-ne p1, v4, :cond_1

    .line 71
    iget-object v1, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v1}, Lcom/task/CrashVideoTask;->access$000(Lcom/task/CrashVideoTask;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrapper mov start! path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v1}, Lcom/task/CrashVideoTask;->access$200(Lcom/task/CrashVideoTask;)Lcom/task/VideoServer$CrashVideoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v1}, Lcom/task/CrashVideoTask;->access$200(Lcom/task/CrashVideoTask;)Lcom/task/VideoServer$CrashVideoListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/task/VideoServer$CrashVideoListener;->onStateChange(ILjava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v1}, Lcom/task/CrashVideoTask;->access$000(Lcom/task/CrashVideoTask;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrapper mov finish! path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v1}, Lcom/task/CrashVideoTask;->access$200(Lcom/task/CrashVideoTask;)Lcom/task/VideoServer$CrashVideoListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v1}, Lcom/task/CrashVideoTask;->access$200(Lcom/task/CrashVideoTask;)Lcom/task/VideoServer$CrashVideoListener;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v3}, Lcom/task/CrashVideoTask;->access$300(Lcom/task/CrashVideoTask;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/task/VideoServer$CrashVideoListener;->onStateChange(ILjava/lang/String;)V

    .line 80
    :cond_2
    new-instance v0, Lcom/fh/hdutil/ScanFilesHelper;

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fh/hdutil/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, "scanFilesHelper":Lcom/fh/hdutil/ScanFilesHelper;
    iget-object v1, p0, Lcom/task/CrashVideoTask$1;->this$0:Lcom/task/CrashVideoTask;

    invoke-static {v1}, Lcom/task/CrashVideoTask;->access$300(Lcom/task/CrashVideoTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fh/hdutil/ScanFilesHelper;->scanFiles(Ljava/lang/String;)V

    goto :goto_0
.end method
