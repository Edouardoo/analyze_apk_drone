.class Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;
.super Ljava/lang/Object;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/SimplePlayerGLSurfaceView;->release()V
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
    .line 324
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 328
    const-string v0, "libCGE_java"

    const-string v1, "Video player view release run..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 333
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 335
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$400(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 336
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0, v2}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$402(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 339
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$300(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$300(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Lorg/wysaid/texUtils/TextureRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wysaid/texUtils/TextureRenderer;->release()V

    .line 341
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0, v2}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$302(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Lorg/wysaid/texUtils/TextureRenderer;)Lorg/wysaid/texUtils/TextureRenderer;

    .line 344
    :cond_2
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$000(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$000(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 346
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0, v2}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$002(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 349
    :cond_3
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$100(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    new-array v0, v4, [I

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$100(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 351
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0, v3}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$102(Lorg/wysaid/view/SimplePlayerGLSurfaceView;I)I

    .line 354
    :cond_4
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0, v3}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$502(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Z)Z

    .line 355
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iput-object v2, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPreparedCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;

    .line 356
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$4;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iput-object v2, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->mPlayCompletionCallback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;

    .line 358
    const-string v0, "libCGE_java"

    const-string v1, "Video player view release OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method
