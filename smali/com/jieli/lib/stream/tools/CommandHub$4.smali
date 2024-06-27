.class final Lcom/jieli/lib/stream/tools/CommandHub$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/CommandHub;->a(Lcom/jieli/lib/stream/beans/StateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/stream/beans/StateInfo;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/beans/StateInfo;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/CommandHub$4;->a:Lcom/jieli/lib/stream/beans/StateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 840
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->l()Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 841
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->l()Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/lib/stream/tools/CommandHub$4;->a:Lcom/jieli/lib/stream/beans/StateInfo;

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;->onReceive(Lcom/jieli/lib/stream/beans/StateInfo;)V

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnReceiverListener is null, you MUST implement it."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
