.class Lcom/fh/util/ZoomImageThread$1;
.super Ljava/lang/Object;
.source "ZoomImageThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/util/ZoomImageThread;->notifyResult(Lcom/fh/beans/StreamInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/util/ZoomImageThread;

.field final synthetic val$data:Lcom/fh/beans/StreamInfo;


# direct methods
.method constructor <init>(Lcom/fh/util/ZoomImageThread;Lcom/fh/beans/StreamInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/util/ZoomImageThread;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/fh/util/ZoomImageThread$1;->this$0:Lcom/fh/util/ZoomImageThread;

    iput-object p2, p0, Lcom/fh/util/ZoomImageThread$1;->val$data:Lcom/fh/beans/StreamInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fh/util/ZoomImageThread$1;->this$0:Lcom/fh/util/ZoomImageThread;

    invoke-static {v0}, Lcom/fh/util/ZoomImageThread;->access$000(Lcom/fh/util/ZoomImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/fh/util/ZoomImageThread$1;->this$0:Lcom/fh/util/ZoomImageThread;

    invoke-static {v0}, Lcom/fh/util/ZoomImageThread;->access$000(Lcom/fh/util/ZoomImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fh/util/ZoomImageThread$1;->val$data:Lcom/fh/beans/StreamInfo;

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/udp/IActionListener;->onSuccess(Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method
