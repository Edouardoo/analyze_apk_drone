.class Lcom/jieli/lib/dv/control/player/PlaybackStream$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/player/PlaybackStream;->onMediaMetaUpdate(IIIIILjava/lang/String;)V
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
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$500(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$200(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onStart()V

    .line 7
    :cond_0
    :goto_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$500(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$7;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onStart()V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;->tag:Ljava/lang/String;

    const-string v1, "mOnDownloadListener>> not onStart"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
