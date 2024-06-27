.class Lcom/jieli/lib/stream/tools/CommandHub$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/tools/CommandHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 298
    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$a;->a:Z

    .line 299
    iput v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/lib/stream/tools/CommandHub$1;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$a;->a:Z

    .line 303
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 307
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 308
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Receiver thread is running..."

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iput-boolean v5, p0, Lcom/jieli/lib/stream/tools/CommandHub$a;->a:Z

    .line 310
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$a;->a:Z

    if-eqz v0, :cond_2

    .line 311
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->d()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 314
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->d()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 315
    if-lez v1, :cond_0

    .line 316
    new-array v2, v1, [B

    .line 317
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    invoke-static {v2}, Lcom/jieli/lib/stream/tools/CommandHub;->a([B)V

    .line 320
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$a;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_1
    :goto_1
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 324
    iget v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$a;->b:I

    .line 325
    iget v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$a;->b:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 326
    invoke-static {v5}, Lcom/jieli/lib/stream/tools/CommandHub;->a(I)V

    .line 336
    :cond_2
    return-void

    .line 332
    :cond_3
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1
.end method
