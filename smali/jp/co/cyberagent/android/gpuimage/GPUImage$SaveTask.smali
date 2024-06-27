.class Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;
.super Landroid/os/AsyncTask;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImage;
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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mFileName:Ljava/lang/String;

.field private final mFolderName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "folderName"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    .prologue
    .line 441
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 442
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 443
    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mFolderName:Ljava/lang/String;

    .line 444
    iput-object p4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mFileName:Ljava/lang/String;

    .line 445
    iput-object p5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mListener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    .line 446
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mHandler:Landroid/os/Handler;

    .line 447
    return-void
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    .prologue
    .line 432
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mListener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    return-object v0
.end method

.method static synthetic access$300(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    .prologue
    .line 432
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 457
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 458
    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 459
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

    .line 461
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 462
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 463
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {v3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$100(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 465
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    new-instance v6, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;

    invoke-direct {v6, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)V

    .line 463
    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 431
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 451
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 452
    .local v0, "result":Landroid/graphics/Bitmap;
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mFolderName:Ljava/lang/String;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 453
    const/4 v1, 0x0

    return-object v1
.end method
