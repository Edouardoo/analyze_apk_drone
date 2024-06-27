.class final Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "GLTextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/media/GLTextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private callbackContext:Landroid/content/Context;

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
            "Lcom/hfufo/widget/media/GLTextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mWillDetachFromWindow:Z


# direct methods
.method public constructor <init>(Lcom/hfufo/widget/media/GLTextureRenderView;)V
    .locals 2
    .param p1, "renderView"    # Lcom/hfufo/widget/media/GLTextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 400
    iput-boolean v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 401
    iput-boolean v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 404
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 407
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 408
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method


# virtual methods
.method public addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 419
    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 423
    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/media/GLTextureRenderView;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    iget v5, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    iget-object v6, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->callbackContext:Landroid/content/Context;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLTextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;IILandroid/content/Context;)V

    .restart local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    move-object v1, v0

    .line 425
    check-cast v1, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-static {v1}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$202(Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;)Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    .line 427
    :cond_0
    iget v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;II)V

    .line 430
    :cond_1
    iget-boolean v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 431
    if-nez v0, :cond_2

    .line 432
    new-instance v0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/media/GLTextureRenderView;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    iget v5, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    iget-object v6, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->callbackContext:Landroid/content/Context;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLTextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;IILandroid/content/Context;)V

    .line 435
    .restart local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;III)V

    .line 437
    :cond_3
    return-void
.end method

.method public didDetachFromWindow()V
    .locals 2

    .prologue
    .line 552
    const-string v0, "GLTextureRenderView"

    const-string v1, "didDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 554
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 9
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 445
    iput-object p1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 446
    iput-boolean v8, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 447
    iput p2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    .line 448
    iput p3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    .line 450
    new-instance v0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/media/GLTextureRenderView;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    iget v5, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    iget-object v6, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->callbackContext:Landroid/content/Context;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLTextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;IILandroid/content/Context;)V

    .local v0, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    move-object v1, v0

    .line 451
    check-cast v1, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-static {v1}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$202(Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;)Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    .line 452
    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 453
    .local v7, "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v7, v0, v8, v8}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 463
    .end local v7    # "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 8
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x0

    .line 483
    iput-object p1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 484
    iput-boolean v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 485
    iput v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    .line 486
    iput v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    .line 487
    const-string v1, "IJKPLAYVIDEO"

    const-string v2, "onSurfaceTextureDestroyed: destroy: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/media/GLTextureRenderView;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    iget v5, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    iget-object v6, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->callbackContext:Landroid/content/Context;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLTextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;IILandroid/content/Context;)V

    .line 490
    .local v0, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    invoke-static {}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$200()Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    invoke-static {}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$200()Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->onPause()V

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 493
    .local v7, "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v7, v0}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 496
    .end local v7    # "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    :cond_1
    const-string v1, "IJKPLAYVIDEO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$202(Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;)Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    .line 498
    iget-boolean v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 8
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 467
    iput-object p1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 468
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 469
    iput p2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    .line 470
    iput p3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    .line 472
    const-string v1, "GLTextureRenderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceTextureSizeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/media/GLTextureRenderView;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWidth:I

    iget v5, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mHeight:I

    iget-object v6, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->callbackContext:Landroid/content/Context;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLTextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;IILandroid/content/Context;)V

    .line 476
    .local v0, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .line 477
    .local v7, "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    const/4 v2, 0x0

    invoke-interface {v7, v0, v2, p2, p3}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 479
    .end local v7    # "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 503
    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 511
    if-nez p1, :cond_0

    .line 512
    const-string v0, "GLTextureRenderView"

    const-string v1, "releaseSurfaceTexture: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_1

    .line 515
    const-string v0, "GLTextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 517
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_2

    .line 518
    const-string v0, "GLTextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 521
    :cond_2
    const-string v0, "GLTextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :cond_3
    iget-boolean v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    if-eqz v0, :cond_6

    .line 524
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_4

    .line 525
    const-string v0, "GLTextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 527
    :cond_4
    iget-boolean v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_5

    .line 528
    const-string v0, "GLTextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 531
    :cond_5
    const-string v0, "GLTextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :cond_6
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_7

    .line 535
    const-string v0, "GLTextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 537
    :cond_7
    iget-boolean v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_8

    .line 538
    const-string v0, "GLTextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0, v2}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 541
    :cond_8
    const-string v0, "GLTextureRenderView"

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
    .line 440
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-void
.end method

.method public setOwnSurfaceTexture(Z)V
    .locals 0
    .param p1, "ownSurfaceTexture"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 416
    return-void
.end method

.method public setParams(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->callbackContext:Landroid/content/Context;

    .line 412
    return-void
.end method

.method public willDetachFromWindow()V
    .locals 2

    .prologue
    .line 547
    const-string v0, "GLTextureRenderView"

    const-string v1, "willDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 549
    return-void
.end method
