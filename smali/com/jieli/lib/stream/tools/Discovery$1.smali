.class Lcom/jieli/lib/stream/tools/Discovery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/Discovery;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/stream/tools/Discovery;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/Discovery;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->a(Lcom/jieli/lib/stream/tools/Discovery;)Ljava/net/MulticastSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->a(Lcom/jieli/lib/stream/tools/Discovery;)Ljava/net/MulticastSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->disconnect()V

    .line 78
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->a(Lcom/jieli/lib/stream/tools/Discovery;)Ljava/net/MulticastSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 79
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/tools/Discovery;->a(Lcom/jieli/lib/stream/tools/Discovery;Ljava/net/MulticastSocket;)Ljava/net/MulticastSocket;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->b(Lcom/jieli/lib/stream/tools/Discovery;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->b(Lcom/jieli/lib/stream/tools/Discovery;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 84
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/tools/Discovery;->a(Lcom/jieli/lib/stream/tools/Discovery;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->c(Lcom/jieli/lib/stream/tools/Discovery;)Lcom/jieli/lib/stream/tools/Discovery$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->c(Lcom/jieli/lib/stream/tools/Discovery;)Lcom/jieli/lib/stream/tools/Discovery$a;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery$a;->a(Lcom/jieli/lib/stream/tools/Discovery$a;)V

    .line 91
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0, v2}, Lcom/jieli/lib/stream/tools/Discovery;->a(Lcom/jieli/lib/stream/tools/Discovery;Lcom/jieli/lib/stream/tools/Discovery$a;)Lcom/jieli/lib/stream/tools/Discovery$a;

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->d(Lcom/jieli/lib/stream/tools/Discovery;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->e(Lcom/jieli/lib/stream/tools/Discovery;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_4

    .line 97
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->e(Lcom/jieli/lib/stream/tools/Discovery;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/Discovery$1;->a:Lcom/jieli/lib/stream/tools/Discovery;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/Discovery;->e(Lcom/jieli/lib/stream/tools/Discovery;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
