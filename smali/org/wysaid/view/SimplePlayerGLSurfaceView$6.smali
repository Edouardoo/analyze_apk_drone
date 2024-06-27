.class Lorg/wysaid/view/SimplePlayerGLSurfaceView$6;
.super Ljava/lang/Object;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 501
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 504
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$6;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;->playComplete(Landroid/media/MediaPlayer;)V

    .line 507
    :cond_0
    const-string v0, "libCGE_java"

    const-string v1, "Video Play Over"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method
