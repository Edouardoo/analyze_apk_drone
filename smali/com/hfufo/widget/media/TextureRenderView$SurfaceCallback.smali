.class final Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/media/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mDidDetachFromWindow:Z

.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mOwnSurfaceTexture:Z

.field private mRenderCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/hfufo/widget/media/IRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWeakRenderView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hfufo/widget/media/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mWillDetachFromWindow:Z


# direct methods
.method public constructor <init>(Lcom/hfufo/widget/media/TextureRenderView;)V
    .locals 2
    .param p1, "renderView"    # Lcom/hfufo/widget/media/TextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 223
    iput-boolean v1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 224
    iput-boolean v1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 227
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method


# virtual methods
.method public addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    iget-object v1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 242
    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/media/TextureRenderView;

    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 244
    .restart local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    :cond_0
    iget v1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;II)V

    .line 247
    :cond_1
    iget-boolean v1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 248
    if-nez v0, :cond_2

    .line 249
    new-instance v0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/media/TextureRenderView;

    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 250
    .restart local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;III)V

    .line 252
    :cond_3
    return-void
.end method

.method public didDetachFromWindow()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "TextureRenderView"

    const-string v1, "didDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 354
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 260
    iput-object p1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 261
    iput-boolean v4, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 262
    iput v4, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 263
    iput v4, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 265
    new-instance v1, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/widget/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 266
    .local v1, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 267
    .local v0, "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, v4, v4}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 270
    .end local v0    # "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 287
    iput-object p1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 288
    iput-boolean v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 289
    iput v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 290
    iput v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 292
    new-instance v1, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/widget/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 293
    .local v1, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 294
    .local v0, "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 297
    .end local v0    # "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    :cond_0
    const-string v2, "TextureRenderView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-boolean v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 274
    iput-object p1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 276
    iput p2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 277
    iput p3, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 279
    new-instance v1, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/widget/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 280
    .local v1, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 281
    .local v0, "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p2, p3}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 283
    .end local v0    # "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 303
    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 311
    if-nez p1, :cond_0

    .line 312
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_1

    .line 315
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_2

    .line 318
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 321
    :cond_2
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_3
    iget-boolean v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    if-eqz v0, :cond_6

    .line 324
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_4

    .line 325
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 327
    :cond_4
    iget-boolean v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_5

    .line 328
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 331
    :cond_5
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_6
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_7

    .line 335
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 337
    :cond_7
    iget-boolean v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_8

    .line 338
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 341
    :cond_8
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public setOwnSurfaceTexture(Z)V
    .locals 0
    .param p1, "ownSurfaceTexture"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 235
    return-void
.end method

.method public willDetachFromWindow()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "TextureRenderView"

    const-string v1, "willDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 349
    return-void
.end method
