.class Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;
.super Landroid/os/AsyncTask;
.source "GPUImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mFolderName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHeight:I

.field private final mListener:Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

.field private final mWidth:I

.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 1
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    .prologue
    .line 415
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 416
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mFolderName:Ljava/lang/String;

    .line 417
    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mFileName:Ljava/lang/String;

    .line 418
    iput p4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mWidth:I

    .line 419
    iput p5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mHeight:I

    .line 420
    iput-object p6, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mListener:Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    .line 421
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mHandler:Landroid/os/Handler;

    .line 422
    return-void
.end method

.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 7
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    .prologue
    const/4 v4, 0x0

    .line 411
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    .line 412
    return-void
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    .prologue
    .line 401
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mListener:Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    return-object v0
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    .prologue
    .line 401
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 436
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 437
    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 438
    .local v2, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 440
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 441
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 442
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-virtual {v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    new-instance v6, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;

    invoke-direct {v6, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)V

    .line 442
    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 427
    :try_start_0
    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mWidth:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iget v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mWidth:I

    iget v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mHeight:I

    invoke-virtual {v2, v3, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 428
    .local v1, "result":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mFolderName:Ljava/lang/String;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 432
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 427
    :cond_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
