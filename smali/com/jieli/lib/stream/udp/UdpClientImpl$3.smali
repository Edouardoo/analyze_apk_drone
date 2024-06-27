.class final Lcom/jieli/lib/stream/udp/UdpClientImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/udp/UdpClientImpl;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 594
    iput p1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 597
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/stream/udp/UdpDeviceListener;

    .line 599
    iget v2, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$3;->a:I

    iget v3, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$3;->a:I

    invoke-static {v3}, Lcom/jieli/lib/stream/udp/UdpClientCode;->getDescForCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/jieli/lib/stream/udp/UdpDeviceListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_0
    return-void
.end method
