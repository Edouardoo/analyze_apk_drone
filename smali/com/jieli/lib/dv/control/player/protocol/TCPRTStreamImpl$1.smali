.class Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

.field final synthetic val$code:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;->this$0:Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

    iput p2, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;->val$code:I

    iput-object p3, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;->this$0:Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->access$000(Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;)Lcom/jieli/lib/dv/control/player/IPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;->this$0:Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->access$000(Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;)Lcom/jieli/lib/dv/control/player/IPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;->val$code:I

    iget-object v2, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
