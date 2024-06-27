.class Lcom/jieli/lib/dv/control/player/PlaybackStream$4;
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

.field final synthetic val$listener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;Lcom/jieli/lib/dv/control/player/IPlayerListener;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$4;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    iput-object p2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$4;->val$listener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    iput p3, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$4;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$4;->val$listener:Lcom/jieli/lib/dv/control/player/IPlayerListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$4;->val$state:I

    invoke-interface {v0, v1}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onStateChanged(I)V

    :cond_0
    return-void
.end method
