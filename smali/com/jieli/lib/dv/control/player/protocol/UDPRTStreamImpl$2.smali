.class Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$2;->this$0:Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;

    iput p2, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$2;->this$0:Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->access$000(Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;)Lcom/jieli/lib/dv/control/player/IPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$2;->this$0:Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;->access$000(Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl;)Lcom/jieli/lib/dv/control/player/IPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/dv/control/player/protocol/UDPRTStreamImpl$2;->val$state:I

    invoke-interface {v0, v1}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onStateChanged(I)V

    :cond_0
    return-void
.end method
