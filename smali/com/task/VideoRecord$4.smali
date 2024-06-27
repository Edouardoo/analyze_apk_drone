.class Lcom/task/VideoRecord$4;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/VideoRecord;->close()V
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
    .line 238
    iput-object p1, p0, Lcom/task/VideoRecord$4;->this$0:Lcom/task/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/task/VideoRecord$4;->this$0:Lcom/task/VideoRecord;

    invoke-static {v0}, Lcom/task/VideoRecord;->access$000(Lcom/task/VideoRecord;)Lcom/task/OnRecordStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/task/VideoRecord$4;->this$0:Lcom/task/VideoRecord;

    invoke-static {v0}, Lcom/task/VideoRecord;->access$000(Lcom/task/VideoRecord;)Lcom/task/OnRecordStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/task/VideoRecord$4;->this$0:Lcom/task/VideoRecord;

    invoke-static {v1}, Lcom/task/VideoRecord;->access$100(Lcom/task/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/task/OnRecordStateListener;->onStop(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/task/VideoRecord$4;->this$0:Lcom/task/VideoRecord;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/task/VideoRecord;->access$002(Lcom/task/VideoRecord;Lcom/task/OnRecordStateListener;)Lcom/task/OnRecordStateListener;

    .line 245
    return-void
.end method
