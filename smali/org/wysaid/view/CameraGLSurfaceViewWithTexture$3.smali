.class Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$3;
.super Ljava/lang/Object;
.source "CameraGLSurfaceViewWithTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;->setOnCreateCallback(Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

.field final synthetic val$callback:Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;


# direct methods
.method constructor <init>(Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$3;->this$0:Lorg/wysaid/view/CameraGLSurfaceViewWithTexture;

    iput-object p2, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$3;->val$callback:Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/wysaid/view/CameraGLSurfaceViewWithTexture$3;->val$callback:Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;

    invoke-interface {v0}, Lorg/wysaid/view/CameraGLSurfaceView$OnCreateCallback;->createOver()V

    .line 86
    return-void
.end method
