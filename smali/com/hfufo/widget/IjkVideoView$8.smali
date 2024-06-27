.class Lcom/hfufo/widget/IjkVideoView$8;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/IjkVideoView;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/hfufo/widget/IjkVideoView$8;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 717
    iget-object v0, p0, Lcom/hfufo/widget/IjkVideoView$8;->this$0:Lcom/hfufo/widget/IjkVideoView;

    invoke-static {v0, p2}, Lcom/hfufo/widget/IjkVideoView;->access$2102(Lcom/hfufo/widget/IjkVideoView;I)I

    .line 718
    return-void
.end method
