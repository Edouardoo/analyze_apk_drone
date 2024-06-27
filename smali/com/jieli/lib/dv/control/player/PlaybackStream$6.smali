.class Lcom/jieli/lib/dv/control/player/PlaybackStream$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/player/PlaybackStream;->onBuffering(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$6;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    iput p2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$6;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$6;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$600(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$6;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$600(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$6;->val$state:I

    invoke-interface {v0, v1}, Lcom/jieli/lib/dv/control/player/OnBufferingListener;->onBuffering(I)V

    :cond_0
    return-void
.end method
