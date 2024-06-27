.class Lorg/wysaid/view/VideoPlayerGLSurfaceView$5;
.super Ljava/lang/Object;
.source "VideoPlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/VideoPlayerGLSurfaceView;->setOnCreateCallback(Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

.field final synthetic val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;


# direct methods
.method constructor <init>(Lorg/wysaid/view/VideoPlayerGLSurfaceView;Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$5;->this$0:Lorg/wysaid/view/VideoPlayerGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$5;->val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/wysaid/view/VideoPlayerGLSurfaceView$5;->val$callback:Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;

    invoke-interface {v0}, Lorg/wysaid/view/VideoPlayerGLSurfaceView$OnCreateCallback;->createOK()V

    .line 236
    return-void
.end method
