.class Lorg/wysaid/view/ImageGLSurfaceView$2;
.super Ljava/lang/Object;
.source "ImageGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/ImageGLSurfaceView;->setFilterIntensityForIndex(FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/ImageGLSurfaceView;

.field final synthetic val$index:I

.field final synthetic val$shouldProcess:Z


# direct methods
.method constructor <init>(Lorg/wysaid/view/ImageGLSurfaceView;IZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/ImageGLSurfaceView;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iput p2, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->val$index:I

    iput-boolean p3, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->val$shouldProcess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_1

    .line 119
    const-string v0, "libCGE_java"

    const-string v1, "set intensity after release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v1, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget v2, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    .line 129
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    iget-object v1, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget v1, v1, Lorg/wysaid/view/ImageGLSurfaceView;->mFilterIntensity:F

    iget v2, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->val$index:I

    iget-boolean v3, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->val$shouldProcess:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/wysaid/nativePort/CGEImageHandler;->setFilterIntensityAtIndex(FIZ)Z

    .line 122
    iget-boolean v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->val$shouldProcess:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$2;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    invoke-virtual {v0}, Lorg/wysaid/view/ImageGLSurfaceView;->requestRender()V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
