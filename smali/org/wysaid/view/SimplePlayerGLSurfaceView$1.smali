.class Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;
.super Ljava/lang/Object;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setVideoUri(Landroid/net/Uri;Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayPreparedCallback;Lorg/wysaid/view/SimplePlayerGLSurfaceView$PlayCompletionCallback;)V
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
    .line 138
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    const-string v0, "libCGE_java"

    const-string v1, "setVideoUri..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$000(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$100(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {}, Lorg/wysaid/common/Common;->genSurfaceTextureID()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$102(Lorg/wysaid/view/SimplePlayerGLSurfaceView;I)I

    .line 145
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v2}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$100(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$002(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 146
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$000(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$1;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$200(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V

    .line 149
    return-void
.end method
