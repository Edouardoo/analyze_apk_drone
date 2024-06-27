.class Lcom/jieli/lib/stream/tools/CommandHub$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/tools/CommandHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/stream/tools/CommandHub;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/CommandHub;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/CommandHub$1;->a:Lcom/jieli/lib/stream/tools/CommandHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    :try_start_0
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->d()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :goto_0
    invoke-static {v2}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/net/Socket;)Ljava/net/Socket;

    .line 233
    invoke-static {v2}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 235
    :goto_1
    return-void

    .line 227
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Socket Client has null or been closed."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    invoke-static {v2}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/net/Socket;)Ljava/net/Socket;

    .line 233
    invoke-static {v2}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    goto :goto_1

    .line 232
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/net/Socket;)Ljava/net/Socket;

    .line 233
    invoke-static {v2}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    throw v0
.end method
