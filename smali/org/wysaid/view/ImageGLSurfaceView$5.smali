.class Lorg/wysaid/view/ImageGLSurfaceView$5;
.super Ljava/lang/Object;
.source "ImageGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wysaid/view/ImageGLSurfaceView;->lazyFlush(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wysaid/view/ImageGLSurfaceView;

.field final synthetic val$runFilter:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/wysaid/view/ImageGLSurfaceView;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/wysaid/view/ImageGLSurfaceView;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iput-boolean p2, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->val$runFilter:Z

    iput-object p3, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    if-nez v0, :cond_0

    .line 207
    const-string v0, "libCGE_java"

    const-string v1, "flush after release!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v1, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget v2, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mSettingIntensityCount:I

    .line 219
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    return-void

    .line 209
    :cond_0
    iget-boolean v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->val$runFilter:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEImageHandler;->revertImage()V

    .line 211
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    iget-object v0, v0, Lorg/wysaid/view/ImageGLSurfaceView;->mImageHandler:Lorg/wysaid/nativePort/CGEImageHandler;

    invoke-virtual {v0}, Lorg/wysaid/nativePort/CGEImageHandler;->processFilters()V

    .line 213
    :cond_1
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 214
    iget-object v0, p0, Lorg/wysaid/view/ImageGLSurfaceView$5;->this$0:Lorg/wysaid/view/ImageGLSurfaceView;

    invoke-virtual {v0}, Lorg/wysaid/view/ImageGLSurfaceView;->requestRender()V

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
