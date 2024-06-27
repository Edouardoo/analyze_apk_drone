.class Lcom/task/VideoRecord$1;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/VideoRecord;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/task/VideoRecord;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/VideoRecord;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/task/VideoRecord$1;->this$0:Lcom/task/VideoRecord;

    iput-object p2, p0, Lcom/task/VideoRecord$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/task/VideoRecord$1;->this$0:Lcom/task/VideoRecord;

    invoke-static {v0}, Lcom/task/VideoRecord;->access$000(Lcom/task/VideoRecord;)Lcom/task/OnRecordStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/task/VideoRecord$1;->this$0:Lcom/task/VideoRecord;

    invoke-static {v0}, Lcom/task/VideoRecord;->access$000(Lcom/task/VideoRecord;)Lcom/task/OnRecordStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/task/VideoRecord$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/task/OnRecordStateListener;->onError(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
