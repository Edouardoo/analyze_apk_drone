.class Lcom/jieli/lib/stream/tools/StreamPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/StreamPlayer;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/stream/tools/StreamPlayer;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/StreamPlayer;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer$4;->a:Lcom/jieli/lib/stream/tools/StreamPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer$4;->a:Lcom/jieli/lib/stream/tools/StreamPlayer;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->b(Lcom/jieli/lib/stream/tools/StreamPlayer;)Lcom/jieli/lib/stream/interfaces/OnConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer$4;->a:Lcom/jieli/lib/stream/tools/StreamPlayer;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->b(Lcom/jieli/lib/stream/tools/StreamPlayer;)Lcom/jieli/lib/stream/interfaces/OnConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/lib/stream/interfaces/OnConnectionListener;->onError()V

    .line 551
    :cond_0
    return-void
.end method
