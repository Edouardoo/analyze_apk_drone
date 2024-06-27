.class Lorg/wysaid/view/SimplePlayerGLSurfaceView$3;
.super Ljava/lang/Object;
.source "SimplePlayerGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/SimplePlayerGLSurfaceView;->setOnCreateCallback(Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

.field final synthetic val$callback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;


# direct methods
.method constructor <init>(Lorg/wysaid/view/SimplePlayerGLSurfaceView;Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$3;->this$0:Lorg/wysaid/view/SimplePlayerGLSurfaceView;

    iput-object p2, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$3;->val$callback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/wysaid/view/SimplePlayerGLSurfaceView$3;->val$callback:Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;

    invoke-interface {v0}, Lorg/wysaid/view/SimplePlayerGLSurfaceView$OnCreateCallback;->createOK()V

    .line 263
    return-void
.end method
