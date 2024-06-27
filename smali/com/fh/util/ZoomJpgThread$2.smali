.class Lcom/fh/util/ZoomJpgThread$2;
.super Ljava/lang/Object;
.source "ZoomJpgThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/util/ZoomJpgThread;->notifyErrorEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/util/ZoomJpgThread;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fh/util/ZoomJpgThread;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/util/ZoomJpgThread;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fh/util/ZoomJpgThread$2;->this$0:Lcom/fh/util/ZoomJpgThread;

    iput p2, p0, Lcom/fh/util/ZoomJpgThread$2;->val$code:I

    iput-object p3, p0, Lcom/fh/util/ZoomJpgThread$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fh/util/ZoomJpgThread$2;->this$0:Lcom/fh/util/ZoomJpgThread;

    invoke-static {v0}, Lcom/fh/util/ZoomJpgThread;->access$000(Lcom/fh/util/ZoomJpgThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/fh/util/ZoomJpgThread$2;->this$0:Lcom/fh/util/ZoomJpgThread;

    invoke-static {v0}, Lcom/fh/util/ZoomJpgThread;->access$000(Lcom/fh/util/ZoomJpgThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    iget v1, p0, Lcom/fh/util/ZoomJpgThread$2;->val$code:I

    iget-object v2, p0, Lcom/fh/util/ZoomJpgThread$2;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jieli/lib/stream/udp/IActionListener;->onError(ILjava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method
