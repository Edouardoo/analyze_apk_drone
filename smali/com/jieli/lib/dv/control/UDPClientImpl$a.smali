.class Lcom/jieli/lib/dv/control/UDPClientImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/UDPClientImpl;->create(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/jieli/lib/dv/control/UDPClientImpl;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    iput-object p2, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    iget v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->b:I

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/UDPClientImpl;I)I

    .line 4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->b(Lcom/jieli/lib/dv/control/UDPClientImpl;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->b(Lcom/jieli/lib/dv/control/UDPClientImpl;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 6
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    new-instance v1, Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/UDPClientImpl;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/UDPClientImpl;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 10
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->b(Lcom/jieli/lib/dv/control/UDPClientImpl;)Ljava/net/DatagramSocket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 11
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->b(Lcom/jieli/lib/dv/control/UDPClientImpl;I)V

    .line 13
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->c(Lcom/jieli/lib/dv/control/UDPClientImpl;)Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->c(Lcom/jieli/lib/dv/control/UDPClientImpl;)Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    new-instance v1, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    iget-object v2, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/UDPClientImpl;->b(Lcom/jieli/lib/dv/control/UDPClientImpl;)Ljava/net/DatagramSocket;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-static {v3}, Lcom/jieli/lib/dv/control/UDPClientImpl;->d(Lcom/jieli/lib/dv/control/UDPClientImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;-><init>(Ljava/net/DatagramSocket;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;)Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    .line 15
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/UDPClientImpl;->c(Lcom/jieli/lib/dv/control/UDPClientImpl;)Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :cond_2
    :goto_0
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 18
    iget-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$a;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/jieli/lib/dv/control/UDPClientImpl;->b(Lcom/jieli/lib/dv/control/UDPClientImpl;I)V

    .line 19
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method
