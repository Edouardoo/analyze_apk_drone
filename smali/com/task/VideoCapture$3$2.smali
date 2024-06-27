.class Lcom/task/VideoCapture$3$2;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/VideoCapture$3;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/task/VideoCapture$3;


# direct methods
.method constructor <init>(Lcom/task/VideoCapture$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/task/VideoCapture$3;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/task/VideoCapture$3$2;->this$1:Lcom/task/VideoCapture$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/task/VideoCapture$3$2;->this$1:Lcom/task/VideoCapture$3;

    iget-object v0, v0, Lcom/task/VideoCapture$3;->this$0:Lcom/task/VideoCapture;

    invoke-static {v0}, Lcom/task/VideoCapture;->access$1000(Lcom/task/VideoCapture;)Lcom/task/OnVideoCaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/task/OnVideoCaptureListener;->onFailed()V

    .line 338
    return-void
.end method
