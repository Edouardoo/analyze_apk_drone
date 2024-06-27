.class Lcom/fh/util/ZoomJpgThread$1;
.super Ljava/lang/Object;
.source "ZoomJpgThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/util/ZoomJpgThread;->notifyResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/util/ZoomJpgThread;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fh/util/ZoomJpgThread;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/util/ZoomJpgThread;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fh/util/ZoomJpgThread$1;->this$0:Lcom/fh/util/ZoomJpgThread;

    iput-object p2, p0, Lcom/fh/util/ZoomJpgThread$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fh/util/ZoomJpgThread$1;->this$0:Lcom/fh/util/ZoomJpgThread;

    invoke-static {v0}, Lcom/fh/util/ZoomJpgThread;->access$000(Lcom/fh/util/ZoomJpgThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fh/util/ZoomJpgThread$1;->this$0:Lcom/fh/util/ZoomJpgThread;

    invoke-static {v0}, Lcom/fh/util/ZoomJpgThread;->access$000(Lcom/fh/util/ZoomJpgThread;)Lcom/jieli/lib/stream/udp/IActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fh/util/ZoomJpgThread$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/udp/IActionListener;->onSuccess(Ljava/lang/Object;)V

    .line 63
    :cond_0
    return-void
.end method
