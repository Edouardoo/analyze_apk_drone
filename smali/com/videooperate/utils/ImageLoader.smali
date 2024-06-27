.class public Lcom/videooperate/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/videooperate/utils/ImageLoader;


# instance fields
.field private mImageCache:Landroid/util/LruCache;
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
    .line 21
    const-string v0, "ImageLoader"

    sput-object v0, Lcom/videooperate/utils/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 30
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 32
    .local v0, "cacheSize":I
    new-instance v2, Lcom/videooperate/utils/ImageLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/videooperate/utils/ImageLoader$1;-><init>(Lcom/videooperate/utils/ImageLoader;I)V

    iput-object v2, p0, Lcom/videooperate/utils/ImageLoader;->mImageCache:Landroid/util/LruCache;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/videooperate/utils/ImageLoader;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "x0"    # Lcom/videooperate/utils/ImageLoader;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/videooperate/utils/ImageLoader;->sizeOfBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/videooperate/utils/ImageLoader;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/videooperate/utils/ImageLoader;->instance:Lcom/videooperate/utils/ImageLoader;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/videooperate/utils/ImageLoader;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/videooperate/utils/ImageLoader;->instance:Lcom/videooperate/utils/ImageLoader;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/videooperate/utils/ImageLoader;

    invoke-direct {v0}, Lcom/videooperate/utils/ImageLoader;-><init>()V

    sput-object v0, Lcom/videooperate/utils/ImageLoader;->instance:Lcom/videooperate/utils/ImageLoader;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/videooperate/utils/ImageLoader;->instance:Lcom/videooperate/utils/ImageLoader;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sizeOfBitmap(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoader;->mImageCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoader;->mImageCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 92
    return-void
.end method

.method public loadImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/videooperate/utils/ImageLoader;->mImageCache:Landroid/util/LruCache;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03003e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/videooperate/utils/ImageLoader;->mImageCache:Landroid/util/LruCache;

    const-string v2, "null"

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 76
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/videooperate/utils/ImageLoader;->mImageCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 77
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 78
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/videooperate/utils/ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/videooperate/utils/ImageLoader;->instance:Lcom/videooperate/utils/ImageLoader;

    .line 96
    invoke-virtual {p0}, Lcom/videooperate/utils/ImageLoader;->clearCache()V

    .line 97
    return-void
.end method
