.class Lcom/hfufo/widget/RenderImageThread$2;
.super Ljava/lang/Object;
.source "RenderImageThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/RenderImageThread;->notifyErrorEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/RenderImageThread;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/RenderImageThread;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/RenderImageThread;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/hfufo/widget/RenderImageThread$2;->this$0:Lcom/hfufo/widget/RenderImageThread;

    iput p2, p0, Lcom/hfufo/widget/RenderImageThread$2;->val$code:I

    iput-object p3, p0, Lcom/hfufo/widget/RenderImageThread$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread$2;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v0}, Lcom/hfufo/widget/RenderImageThread;->access$000(Lcom/hfufo/widget/RenderImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/hfufo/widget/RenderImageThread$2;->this$0:Lcom/hfufo/widget/RenderImageThread;

    invoke-static {v0}, Lcom/hfufo/widget/RenderImageThread;->access$000(Lcom/hfufo/widget/RenderImageThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/widget/RenderImageThread$2;->val$code:I

    iget-object v2, p0, Lcom/hfufo/widget/RenderImageThread$2;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jieli/lib/stream/udp/IActionListener;->onError(ILjava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method
