.class final Lcom/jieli/lib/stream/udp/UdpClientImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Lcom/jieli/lib/stream/beans/StateInfo;)V
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
    .line 609
    iput-object p1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$4;->a:Lcom/jieli/lib/stream/beans/StateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 612
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/udp/UdpDeviceListener;

    .line 614
    iget-object v2, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$4;->a:Lcom/jieli/lib/stream/beans/StateInfo;

    invoke-interface {v0, v2}, Lcom/jieli/lib/stream/udp/UdpDeviceListener;->onReceive(Lcom/jieli/lib/stream/beans/StateInfo;)V

    goto :goto_0

    .line 617
    :cond_0
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnReceiverListener is null, you MUST implement it."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_1
    return-void
.end method
