.class Lcom/jieli/lib/stream/tools/StreamPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/StreamPlayer;->onPlayerStateChanged(I)V
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
    .line 178
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/StreamPlayer$1;->a:Lcom/jieli/lib/stream/tools/StreamPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer$1;->a:Lcom/jieli/lib/stream/tools/StreamPlayer;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->a(Lcom/jieli/lib/stream/tools/StreamPlayer;)Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/StreamPlayer$1;->a:Lcom/jieli/lib/stream/tools/StreamPlayer;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/StreamPlayer;->a(Lcom/jieli/lib/stream/tools/StreamPlayer;)Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;

    move-result-object v0

    invoke-static {}, Lcom/jieli/lib/stream/tools/StreamPlayer;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/interfaces/OnPlayStateListener;->onStateChanged(I)V

    .line 184
    :cond_0
    return-void
.end method
