.class public Lcom/fh/util/ThumbLoader;
.super Ljava/lang/Object;
.source "ThumbLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fh/util/ThumbLoader$OnDownloadListener;,
        Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;,
        Lcom/fh/util/ThumbLoader$OnLoadThumbListener;,
        Lcom/fh/util/ThumbLoader$OnResultRunnable;,
        Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;,
        Lcom/fh/util/ThumbLoader$OnCompleteRunnable;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/fh/util/ThumbLoader;


# instance fields
.field private mDurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ThumbLoader"

    sput-object v0, Lcom/fh/util/ThumbLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 60
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 62
    .local v0, "cacheSize":I
    new-instance v2, Lcom/fh/util/ThumbLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/fh/util/ThumbLoader$1;-><init>(Lcom/fh/util/ThumbLoader;I)V

    iput-object v2, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    .line 69
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/fh/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "x0"    # Lcom/fh/util/ThumbLoader;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/fh/util/ThumbLoader;->sizeOfBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fh/util/ThumbLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fh/util/ThumbLoader;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/fh/util/ThumbLoader;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fh/util/ThumbLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fh/util/ThumbLoader;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fh/util/ThumbLoader;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fh/util/ThumbLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/fh/util/ThumbLoader;->replaceFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkIsAvi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".AVI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".avi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    :cond_0
    const/4 v0, 0x1

    .line 585
    :cond_1
    return v0
.end method

.method private getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 498
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 499
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 501
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 502
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 504
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 505
    .local v4, "h":I
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 506
    .local v6, "w":I
    div-int v2, v6, p2

    .line 507
    .local v2, "beWidth":I
    div-int v1, v4, p3

    .line 508
    .local v1, "beHeight":I
    const/4 v0, 0x1

    .line 509
    .local v0, "be":I
    if-ge v2, v1, :cond_1

    .line 510
    move v0, v2

    .line 514
    :goto_0
    if-gtz v0, :cond_0

    .line 515
    const/4 v0, 0x1

    .line 517
    :cond_0
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 519
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 521
    const/4 v7, 0x2

    invoke-static {v3, p2, p3, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 523
    return-object v3

    .line 512
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/fh/util/ThumbLoader;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/fh/util/ThumbLoader;->instance:Lcom/fh/util/ThumbLoader;

    if-nez v0, :cond_1

    .line 74
    const-class v1, Lcom/fh/util/ThumbLoader;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/fh/util/ThumbLoader;->instance:Lcom/fh/util/ThumbLoader;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/fh/util/ThumbLoader;

    invoke-direct {v0}, Lcom/fh/util/ThumbLoader;-><init>()V

    sput-object v0, Lcom/fh/util/ThumbLoader;->instance:Lcom/fh/util/ThumbLoader;

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    sget-object v0, Lcom/fh/util/ThumbLoader;->instance:Lcom/fh/util/ThumbLoader;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getThumbForAvi(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "listener"    # Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

    .prologue
    .line 590
    new-instance v0, Lcom/fh/util/ThumbLoader$5;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/fh/util/ThumbLoader$5;-><init>(Lcom/fh/util/ThumbLoader;IILjava/lang/String;Landroid/os/Handler;Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/fh/hdutil/AviThumbUtil;->getRecordVideoThumb(Ljava/lang/String;Lcom/fh/hdutil/OnAviThumbListener;)V

    .line 637
    return-void
.end method

.method private getThumbFromMov(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "listener"    # Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

    .prologue
    .line 641
    new-instance v9, Lcom/jieli/media/codec/FrameCodec;

    invoke-direct {v9}, Lcom/jieli/media/codec/FrameCodec;-><init>()V

    .line 642
    .local v9, "mFrameCodec":Lcom/jieli/media/codec/FrameCodec;
    new-instance v0, Lcom/fh/util/ThumbLoader$6;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/fh/util/ThumbLoader$6;-><init>(Lcom/fh/util/ThumbLoader;IILjava/lang/String;Landroid/os/Handler;Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;Landroid/content/Context;)V

    invoke-virtual {v9, v0}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    .line 690
    :try_start_0
    invoke-virtual {v9, p2}, Lcom/jieli/media/codec/FrameCodec;->convertToJPG(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    invoke-virtual {v9}, Lcom/jieli/media/codec/FrameCodec;->destroy()Z

    .line 696
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v8

    .line 692
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    invoke-virtual {v9}, Lcom/jieli/media/codec/FrameCodec;->destroy()Z

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Lcom/jieli/media/codec/FrameCodec;->destroy()Z

    throw v0
.end method

.method private replaceFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 368
    const-string v4, ""

    .line 369
    .local v4, "thumbPath":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 371
    const-string v2, ""

    .line 372
    .local v2, "fileName":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 373
    .local v3, "index":I
    if-eq v3, v7, :cond_3

    .line 374
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "dirPath":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    :goto_0
    const-string v5, "Download"

    const-string v6, ".thumbnail"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v5, "Record"

    const-string v6, ".thumbnail"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 383
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 385
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 386
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 387
    if-eq v3, v7, :cond_1

    .line 388
    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 390
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 395
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_2
    :goto_1
    return-object v4

    .line 377
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_3
    move-object v0, p1

    .restart local v0    # "dirPath":Ljava/lang/String;
    goto :goto_0

    .line 392
    .restart local v1    # "file":Ljava/io/File;
    :cond_4
    move-object v4, v0

    goto :goto_1
.end method

.method private sizeOfBitmap(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    goto :goto_0
.end method


# virtual methods
.method public addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 527
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 528
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 572
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 573
    return-void
.end method

.method public downloadWebImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fh/util/ThumbLoader$OnDownloadListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "webUrl"    # Ljava/lang/String;
    .param p3, "saveUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/fh/util/ThumbLoader$OnDownloadListener;

    .prologue
    .line 427
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 428
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 429
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    sget-object v2, Lcom/fh/util/ThumbLoader;->TAG:Ljava/lang/String;

    const-string v3, "delete file ok!"

    invoke-static {v2, v3}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    new-instance v2, Lcom/fh/util/ThumbLoader$4;

    invoke-direct {v2, p0, v1, p3, p4}, Lcom/fh/util/ThumbLoader$4;-><init>(Lcom/fh/util/ThumbLoader;Landroid/os/Handler;Ljava/lang/String;Lcom/fh/util/ThumbLoader$OnDownloadListener;)V

    invoke-static {p2, v2}, Lcom/fh/hdutil/HttpManager;->downloadFile(Ljava/lang/String;Lokhttp3/Callback;)V

    .line 461
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 539
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method public loadLocalThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 284
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 286
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03003e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v2, "null"

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    :goto_0
    return-object v0

    .line 291
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 292
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0, p2, p3, p4}, Lcom/fh/util/ThumbLoader;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    if-nez v0, :cond_2

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/fh/util/ThumbLoader;->loadLocalThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "listener"    # Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;

    .prologue
    .line 318
    new-instance v9, Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v9, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 319
    .local v9, "handler":Landroid/os/Handler;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    .line 321
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    if-nez v16, :cond_0

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03003e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v5, "null"

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_0
    new-instance v4, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p5

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;ILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    invoke-virtual {v9, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    :goto_0
    return-void

    .line 327
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    .line 329
    .restart local v16    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v16, :cond_7

    .line 330
    const-string v18, ""

    .line 331
    .local v18, "filename":Ljava/lang/String;
    const-string v4, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    const-string v4, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 333
    .local v19, "strs":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v18, v19, v4

    .line 335
    .end local v19    # "strs":[Ljava/lang/String;
    :cond_2
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 337
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/fh/hdutil/AppUtils;->queryThumbPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 338
    .local v20, "thumbPath":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/fh/util/ThumbLoader;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 342
    :cond_3
    if-eqz v16, :cond_4

    .line 343
    invoke-static/range {v20 .. v20}, Lcom/fh/hdutil/AppUtils;->parseThumbPathForDuration(Ljava/lang/String;)I

    move-result v17

    .line 344
    .local v17, "duration":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fh/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v4, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, p5

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;ILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    invoke-virtual {v9, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 348
    .end local v17    # "duration":I
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/fh/util/ThumbLoader;->checkIsAvi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 349
    invoke-direct/range {v4 .. v10}, Lcom/fh/util/ThumbLoader;->getThumbForAvi(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 351
    invoke-direct/range {v4 .. v10}, Lcom/fh/util/ThumbLoader;->getThumbFromMov(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    goto/16 :goto_0

    .line 355
    .end local v20    # "thumbPath":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lcom/fh/util/ThumbLoader;->loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    goto/16 :goto_0

    .line 358
    .end local v18    # "filename":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fh/util/ThumbLoader;->mDurationMap:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 359
    .local v17, "duration":Ljava/lang/Integer;
    if-nez v17, :cond_8

    .line 360
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 362
    :cond_8
    new-instance v4, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p5

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/fh/util/ThumbLoader$OnLoadVideoThumbRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;ILcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;)V

    invoke-virtual {v9, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "listener"    # Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    .prologue
    .line 137
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    .local v7, "handler":Landroid/os/Handler;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 140
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03003e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 142
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v1, "null"

    invoke-virtual {v0, v1, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    new-instance v0, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;

    invoke-direct {v0, p0, v8, p5}, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    :goto_0
    return-void

    .line 146
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 147
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_2

    .line 148
    new-instance v0, Lcom/fh/util/ThumbLoader$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/fh/util/ThumbLoader$2;-><init>(Lcom/fh/util/ThumbLoader;Ljava/lang/String;Landroid/content/Context;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;Landroid/os/Handler;)V

    invoke-static {p2, v0}, Lcom/fh/hdutil/HttpManager;->downloadFile(Ljava/lang/String;Lokhttp3/Callback;)V

    goto :goto_0

    .line 182
    :cond_2
    new-instance v0, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;

    invoke-direct {v0, p0, v8, p5}, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "savePath"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "listener"    # Lcom/fh/util/ThumbLoader$OnLoadThumbListener;

    .prologue
    .line 200
    new-instance v9, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    .local v9, "handler":Landroid/os/Handler;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 203
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03003e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 205
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    const-string v2, "null"

    invoke-virtual {v1, v2, v10}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    new-instance v1, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;

    move-object/from16 v0, p6

    invoke-direct {v1, p0, v10, v0}, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v9, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    :goto_0
    return-void

    .line 209
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 210
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/fh/util/ThumbLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-loadWebThumbnail- bitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-nez v10, :cond_2

    .line 212
    new-instance v1, Lcom/fh/util/ThumbLoader$3;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/fh/util/ThumbLoader$3;-><init>(Lcom/fh/util/ThumbLoader;Ljava/lang/String;Landroid/content/Context;IILcom/fh/util/ThumbLoader$OnLoadThumbListener;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {p2, v1}, Lcom/fh/hdutil/HttpManager;->downloadFile(Ljava/lang/String;Lokhttp3/Callback;)V

    goto :goto_0

    .line 249
    :cond_2
    new-instance v1, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;

    move-object/from16 v0, p6

    invoke-direct {v1, p0, v10, v0}, Lcom/fh/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/fh/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v9, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    sput-object v0, Lcom/fh/util/ThumbLoader;->instance:Lcom/fh/util/ThumbLoader;

    .line 577
    invoke-virtual {p0}, Lcom/fh/util/ThumbLoader;->clearCache()V

    .line 578
    return-void
.end method

.method public removeBitmap(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/fh/util/ThumbLoader;->mThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 546
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 550
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
