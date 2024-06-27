.class Lcom/hfufo/widget/RenderImageThread$1;
.super Ljava/lang/Object;
.source "RenderImageThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/RenderImageThread;->notifyResult(Lorg/opencv/core/Mat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/RenderImageThread;

.field final synthetic val$data:Lorg/opencv/core/Mat;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/RenderImageThread;Lorg/opencv/core/Mat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/hfufo/widget/RenderImageThread$1;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iput-object p2, p0, Lcom/hfufo/widget/RenderImageThread$1;->val$data:Lorg/opencv/core/Mat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread$1;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v0}, Lcom/hfufo/widget/RenderImageThread;->access$000(Lcom/hfufo/widget/RenderImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread$1;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v0}, Lcom/hfufo/widget/RenderImageThread;->access$000(Lcom/hfufo/widget/RenderImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/RenderImageThread$1;->val$data:Lorg/opencv/core/Mat;

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/udp/IActionListener;->onSuccess(Ljava/lang/Object;)V

    .line 180
    :cond_0
    return-void
.end method
