.class Lcom/jieli/lib/stream/udp/UdpClientImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/udp/UdpClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/stream/udp/UdpClientImpl;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/udp/UdpClientImpl;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/jieli/lib/stream/udp/UdpClientImpl$1;->a:Lcom/jieli/lib/stream/udp/UdpClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    :try_start_0
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a()Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    invoke-static {v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 212
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    invoke-static {v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/jieli/lib/stream/udp/UdpClientImpl;->a(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    throw v0
.end method
