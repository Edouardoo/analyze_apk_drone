.class Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;
.super Ljava/lang/Object;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/SimplePlayerGLSurfaceView;->_useUri()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;


# direct methods
.method constructor <init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 511
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 514
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$602(Lorg/wysaid/view/SimplePlayerGLSurfaceView;I)I

    .line 515
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$702(Lorg/wysaid/view/SimplePlayerGLSurfaceView;I)I

    .line 517
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    new-instance v1, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7$1;

    invoke-direct {v1, p0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7$1;-><init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;)V

    invoke-virtual {v0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 524
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPreparedCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPreparedCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;->playPrepared(Landroid/media/MediaPlayer;)V

    .line 530
    :goto_0
    const-string v0, "libCGE_java"

    const-string v1, "Video resolution 1: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v4}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$600(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v4}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$700(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void

    .line 527
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method
