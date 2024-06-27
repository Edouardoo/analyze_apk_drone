.class final Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/jl_player/ijkplayer/TextureRenderView;
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
            "Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;",
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
            "Lcom/jieli/jl_player/ijkplayer/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mWillDetachFromWindow:Z


# direct methods
.method public constructor <init>(Lcom/jieli/jl_player/ijkplayer/TextureRenderView;)V
    .locals 2
    .param p1, "renderView"    # Lcom/jieli/jl_player/ijkplayer/TextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 222
    iput-boolean v1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 223
    iput-boolean v1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 226
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 229
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method


# virtual methods
.method public addRenderCallback(Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 237
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "surfaceHolder":Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 241
    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/jl_player/ijkplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 243
    .restart local v0    # "surfaceHolder":Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
    :cond_0
    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;II)V

    .line 246
    :cond_1
    iget-boolean v1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 247
    if-nez v0, :cond_2

    .line 248
    new-instance v0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/jl_player/ijkplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 249
    .restart local v0    # "surfaceHolder":Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;III)V

    .line 251
    :cond_3
    return-void
.end method

.method public didDetachFromWindow()V
    .locals 2

    .prologue
    .line 350
    const-string v0, "TextureRenderView"

    const-string v1, "didDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 352
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 259
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 260
    iput-boolean v4, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 261
    iput v4, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 262
    iput v4, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 264
    new-instance v1, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/jl_player/ijkplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 265
    .local v1, "surfaceHolder":Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    check-cast v0, Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

    .line 266
    .local v0, "renderCallback":Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, v4, v4}, Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 268
    .end local v0    # "renderCallback":Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 285
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 286
    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 287
    iput v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 288
    iput v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 290
    new-instance v1, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/jl_player/ijkplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 291
    .local v1, "surfaceHolder":Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    check-cast v0, Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

    .line 292
    .local v0, "renderCallback":Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;
    invoke-interface {v0, v1}, Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 295
    .end local v0    # "renderCallback":Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;
    :cond_0
    const-string v2, "TextureRenderView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 272
    iput-object p1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 274
    iput p2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 275
    iput p3, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 277
    new-instance v1, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/jl_player/ijkplayer/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/jl_player/ijkplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 278
    .local v1, "surfaceHolder":Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    check-cast v0, Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;

    .line 279
    .local v0, "renderCallback":Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p2, p3}, Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/jieli/jl_player/ijkplayer/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 281
    .end local v0    # "renderCallback":Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 301
    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 309
    if-nez p1, :cond_0

    .line 310
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_1

    .line 313
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 315
    :cond_1
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_2

    .line 316
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 319
    :cond_2
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_3
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    if-eqz v0, :cond_6

    .line 322
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_4

    .line 323
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 325
    :cond_4
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_5

    .line 326
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0, v2}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 329
    :cond_5
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_6
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_7

    .line 333
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 335
    :cond_7
    iget-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_8

    .line 336
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0, v2}, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 339
    :cond_8
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeRenderCallback(Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/jieli/jl_player/ijkplayer/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public setOwnSurfaceTexture(Z)V
    .locals 0
    .param p1, "ownSurfaceTexture"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 234
    return-void
.end method

.method public willDetachFromWindow()V
    .locals 2

    .prologue
    .line 345
    const-string v0, "TextureRenderView"

    const-string v1, "willDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jieli/jl_player/ijkplayer/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 347
    return-void
.end method
