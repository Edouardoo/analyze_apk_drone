.class Lcom/task/VideoRecord$2;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/VideoRecord;->prepare(Lcom/task/OnRecordStateListener;)V
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
    .line 54
    iput-object p1, p0, Lcom/task/VideoRecord$2;->this$0:Lcom/task/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/task/VideoRecord$2;->this$0:Lcom/task/VideoRecord;

    invoke-static {v0}, Lcom/task/VideoRecord;->access$000(Lcom/task/VideoRecord;)Lcom/task/OnRecordStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/task/VideoRecord$2;->this$0:Lcom/task/VideoRecord;

    invoke-static {v0}, Lcom/task/VideoRecord;->access$000(Lcom/task/VideoRecord;)Lcom/task/OnRecordStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/task/OnRecordStateListener;->onPrepared()V

    .line 59
    :cond_0
    return-void
.end method
