.class Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;
.super Ljava/lang/Object;
.source "GPUImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

.field final synthetic val$height:I

.field final synthetic val$pixelMirroredArray:[I

.field final synthetic val$waiter:Ljava/util/concurrent/Semaphore;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;II[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    .prologue
    .line 308
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$width:I

    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$height:I

    iput-object p4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$pixelMirroredArray:[I

    iput-object p5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$waiter:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 311
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$width:I

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$height:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 312
    .local v6, "pixelBuffer":Ljava/nio/IntBuffer;
    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$width:I

    iget v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$height:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 313
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v9

    .line 316
    .local v9, "pixelArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$height:I

    if-ge v7, v0, :cond_1

    .line 317
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$width:I

    if-ge v8, v0, :cond_0

    .line 318
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$pixelMirroredArray:[I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$height:I

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$width:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v8

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$width:I

    mul-int/2addr v2, v7

    add-int/2addr v2, v8

    aget v2, v9, v2

    aput v2, v0, v1

    .line 317
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 316
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 321
    .end local v8    # "j":I
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$waiter:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 322
    return-void
.end method
