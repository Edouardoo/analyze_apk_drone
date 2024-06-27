.class Lorg/wysaid/view/SimplePlayerGLSurfaceView$8;
.super Ljava/lang/Object;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 534
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$8;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 538
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$8;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$8;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    invoke-interface {v0, p1, p2, p3}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;->playFailed(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
