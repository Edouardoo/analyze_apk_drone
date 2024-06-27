.class Lorg/wysaid/view/SimplePlayerGLSurfaceView$7$1;
.super Ljava/lang/Object;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;


# direct methods
.method constructor <init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;

    .prologue
    .line 517
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7$1;->this$1:Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7$1;->this$1:Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;

    iget-object v0, v0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$7;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    invoke-static {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView;->access$800(Lorg/wysaid/view/SimplePlayerGLSurfaceView;)V

    .line 521
    return-void
.end method
