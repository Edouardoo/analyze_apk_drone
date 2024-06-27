.class Lcom/jieli/lib/dv/control/player/PlaybackStream$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/player/PlaybackStream;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$3;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$3;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$3;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onStop()V

    :cond_0
    return-void
.end method
