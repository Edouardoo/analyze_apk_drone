.class final Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/media/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

.field private mTextureView:Lcom/hfufo/widget/media/TextureRenderView;


# direct methods
.method public constructor <init>(Lcom/hfufo/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V
    .locals 0
    .param p1, "textureView"    # Lcom/hfufo/widget/media/TextureRenderView;
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
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/TextureRenderView;

    .line 146
    iput-object p2, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 147
    iput-object p3, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    .line 149
    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 156
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    instance-of v2, p1, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 158
    check-cast v1, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    .line 159
    .local v1, "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/TextureRenderView;

    invoke-static {v2}, Lcom/hfufo/widget/media/TextureRenderView;->access$100(Lcom/hfufo/widget/media/TextureRenderView;)Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    .line 161
    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 162
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_1

    .line 163
    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/TextureRenderView;

    invoke-virtual {v2, v0}, Lcom/hfufo/widget/media/TextureRenderView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 166
    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/TextureRenderView;

    invoke-static {v2}, Lcom/hfufo/widget/media/TextureRenderView;->access$100(Lcom/hfufo/widget/media/TextureRenderView;)Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTextureHost(Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    goto :goto_0

    .line 169
    .end local v0    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v1    # "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    :cond_2
    invoke-virtual {p0}, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->openSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public getRenderView()Lcom/hfufo/widget/media/IRenderView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/hfufo/widget/media/TextureRenderView;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method
