.class public Lcom/android/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;,
        Lcom/android/volley/toolbox/ImageLoader$ImageCache;,
        Lcom/android/volley/toolbox/ImageLoader$ImageContainer;,
        Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    }
.end annotation


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 87
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader;->mCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/ImageLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$4(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private batchResponse(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)V
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader$4;

    invoke-direct {v0, p0}, Lcom/android/volley/toolbox/ImageLoader$4;-><init>(Lcom/android/volley/toolbox/ImageLoader;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    .line 461
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    :cond_0
    return-void
.end method

.method private static getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 478
    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    return-object v0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/volley/toolbox/ImageLoader$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method private onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 279
    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->setError(Lcom/android/volley/VolleyError;)V

    .line 281
    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 285
    :cond_0
    return-void
.end method

.method private onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 258
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 260
    if-eqz v0, :cond_0

    .line 262
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->access$1(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)V

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 267
    :cond_0
    return-void
.end method

.method private throwIfNotOnMainThread()V
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 14

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    .line 191
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p1, v0, v1}, Lcom/android/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 194
    iget-object v2, p0, Lcom/android/volley/toolbox/ImageLoader;->mCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v2, v6}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 195
    if-eqz v4, :cond_0

    .line 197
    new-instance v2, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 198
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 236
    :goto_0
    return-object v2

    .line 204
    :cond_0
    new-instance v2, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 207
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 210
    iget-object v3, p0, Lcom/android/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 211
    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v3, v2}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    goto :goto_0

    .line 220
    :cond_1
    new-instance v7, Lcom/android/volley/toolbox/ImageRequest;

    new-instance v9, Lcom/android/volley/toolbox/ImageLoader$2;

    invoke-direct {v9, p0, v6}, Lcom/android/volley/toolbox/ImageLoader$2;-><init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    .line 226
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v13, Lcom/android/volley/toolbox/ImageLoader$3;

    invoke-direct {v13, p0, v6}, Lcom/android/volley/toolbox/ImageLoader$3;-><init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object v8, p1

    move/from16 v10, p3

    move/from16 v11, p4

    .line 220
    invoke-direct/range {v7 .. v13}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 233
    iget-object v3, p0, Lcom/android/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 234
    iget-object v3, p0, Lcom/android/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 235
    new-instance v4, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    invoke-direct {v4, p0, v7, v2}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/android/volley/toolbox/ImageLoader;Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    .line 234
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isCached(Ljava/lang/String;II)Z
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    .line 156
    invoke-static {p1, p2, p3}, Lcom/android/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader;->mCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, v0}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBatchedResponseDelay(I)V
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/android/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    .line 246
    return-void
.end method
