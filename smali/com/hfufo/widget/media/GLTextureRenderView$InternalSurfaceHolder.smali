.class final Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "GLTextureRenderView.java"

# interfaces
.implements Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/media/GLTextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private holderContext:Landroid/content/Context;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

.field private mTextureView:Lcom/hfufo/widget/media/GLTextureRenderView;

.field private rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

.field private surfaceHeight:I

.field private surfaceWidth:I


# direct methods
.method public constructor <init>(Lcom/hfufo/widget/media/GLTextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V
    .locals 1
    .param p1, "textureView"    # Lcom/hfufo/widget/media/GLTextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "surfaceTextureHost"    # Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceWidth:I

    .line 204
    iput v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceHeight:I

    .line 209
    iput-object p1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/GLTextureRenderView;

    .line 210
    iput-object p2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 211
    iput-object p3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/hfufo/widget/media/GLTextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;IILandroid/content/Context;)V
    .locals 1
    .param p1, "textureView"    # Lcom/hfufo/widget/media/GLTextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "surfaceTextureHost"    # Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceWidth:I

    .line 204
    iput v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceHeight:I

    .line 218
    iput-object p1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/GLTextureRenderView;

    .line 219
    iput-object p2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 220
    iput-object p3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    .line 221
    iput p4, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceWidth:I

    .line 222
    iput p5, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceHeight:I

    .line 223
    iput-object p6, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->holderContext:Landroid/content/Context;

    .line 224
    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 237
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    instance-of v3, p1, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 240
    check-cast v2, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    .line 241
    .local v2, "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    iget-object v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-static {v3}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$100(Lcom/hfufo/widget/media/GLTextureRenderView;)Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    .line 243
    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 244
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v1, :cond_1

    .line 245
    iget-object v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v3, v1}, Lcom/hfufo/widget/media/GLTextureRenderView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 248
    iget-object v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-static {v3}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$100(Lcom/hfufo/widget/media/GLTextureRenderView;)Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTextureHost(Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    goto :goto_0

    .line 252
    .end local v1    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v2    # "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    :cond_2
    invoke-virtual {p0}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->openSurface()Landroid/view/Surface;

    move-result-object v0

    .line 254
    .local v0, "surface":Landroid/view/Surface;
    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public endRenderRecord()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->endVideoRecord()V

    .line 338
    :cond_0
    return-void
.end method

.method public getRenderView()Lcom/hfufo/widget/media/IRenderView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/GLTextureRenderView;

    return-object v0
.end method

.method public getRunning()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->getRunning()Z

    move-result v0

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->onPause()V

    .line 362
    const-string v0, "IJKPLAYVIDEO"

    const-string v1, "rendererInter-onPause11: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    return-void
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_0

    .line 311
    :goto_0
    return-object v1

    .line 285
    :cond_0
    invoke-static {}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$200()Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$200()Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->getRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    :cond_1
    invoke-static {}, Lcom/hfufo/widget/media/GLTextureRenderView;->access$200()Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->onPause()V

    .line 289
    const-wide/16 v4, 0xfa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_2
    :goto_1
    new-instance v3, Lcom/hfufo/widget/media/VideoTextureRenderer;

    iget-object v4, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v4}, Lcom/hfufo/widget/media/GLTextureRenderView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    iget v5, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceWidth:I

    iget v6, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceHeight:I

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/hfufo/widget/media/VideoTextureRenderer;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V

    iput-object v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    .line 296
    iget-object v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v3}, Lcom/hfufo/widget/media/VideoTextureRenderer;->getVideoTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 298
    .local v2, "surfaceTex":Landroid/graphics/SurfaceTexture;
    :goto_2
    if-nez v2, :cond_3

    .line 301
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 302
    iget-object v3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v3}, Lcom/hfufo/widget/media/VideoTextureRenderer;->getVideoTexture()Landroid/graphics/SurfaceTexture;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_2

    .line 290
    .end local v2    # "surfaceTex":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 303
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "surfaceTex":Landroid/graphics/SurfaceTexture;
    :catch_1
    move-exception v0

    .line 304
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 307
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 311
    .local v1, "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public setCallback(Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;Z)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;
    .param p2, "isP"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/VideoTextureRenderer;->setRecordingCallback(Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;Z)V

    .line 325
    :cond_0
    return-void
.end method

.method public setFilter(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/VideoTextureRenderer;->setFilterNumb(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public setParams(IILandroid/content/Context;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    iput p1, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceWidth:I

    .line 228
    iput p2, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->surfaceHeight:I

    .line 229
    iput-object p3, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->holderContext:Landroid/content/Context;

    .line 230
    return-void
.end method

.method public setRAS(FFFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "tranW"    # F
    .param p4, "tranH"    # F

    .prologue
    .line 347
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hfufo/widget/media/VideoTextureRenderer;->setRoSc(FFFF)V

    .line 350
    :cond_0
    return-void
.end method

.method public setSize(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "dstW"    # I
    .param p4, "dstH"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hfufo/widget/media/VideoTextureRenderer;->setSize(IIII)V

    .line 344
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/VideoTextureRenderer;->setVideoSize(II)V

    .line 356
    :cond_0
    return-void
.end method

.method public startRenderRecord(Lcom/jieli/lib/stream/udp/IActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "mListener":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Lorg/opencv/core/Mat;>;"
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/VideoTextureRenderer;->startVideoRecord(Lcom/jieli/lib/stream/udp/IActionListener;)V

    .line 332
    :cond_0
    return-void
.end method

.method public take()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->rendererInter:Lcom/hfufo/widget/media/VideoTextureRenderer;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/VideoTextureRenderer;->takePhoto()V

    .line 372
    return-void
.end method
