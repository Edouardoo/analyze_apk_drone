.class Lcom/hfufo/rxdrone/PlayVideoActivity$3;
.super Ljava/lang/Object;
.source "PlayVideoActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/PlayVideoActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/PlayVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/PlayVideoActivity;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$3;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    const/4 v1, 0x1

    .line 266
    const/16 v0, -0x2710

    if-ne p3, v0, :cond_0

    .line 270
    :goto_0
    return v1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/PlayVideoActivity$3;->this$0:Lcom/hfufo/rxdrone/PlayVideoActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/PlayVideoActivity;->finish()V

    goto :goto_0
.end method
