.class Lorg/wysaid/view/SimplePlayerGLSurfaceView$5;
.super Ljava/lang/Object;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 484
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$5;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 487
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$5;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$5;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$5;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, -0x3f2

    invoke-interface {v0, v1, v2, v3}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;->playFailed(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$5;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$5;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;->playComplete(Landroid/media/MediaPlayer;)V

    .line 491
    :cond_0
    return-void
.end method
