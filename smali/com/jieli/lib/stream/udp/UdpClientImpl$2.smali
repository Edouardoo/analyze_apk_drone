.class final Lcom/jieli/lib/stream/udp/UdpClientImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/udp/UdpClientImpl;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 582
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->d()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
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

    .line 584
    invoke-interface {v0}, Lcom/jieli/lib/stream/udp/UdpDeviceListener;->onCreateSuccess()V

    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method
