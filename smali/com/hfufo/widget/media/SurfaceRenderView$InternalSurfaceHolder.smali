.class final Lcom/hfufo/widget/media/SurfaceRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/media/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/hfufo/widget/media/SurfaceRenderView;


# direct methods
.method public constructor <init>(Lcom/hfufo/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceView"    # Lcom/hfufo/widget/media/SurfaceRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "surfaceHolder"    # Landroid/view/SurfaceHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/hfufo/widget/media/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceView:Lcom/hfufo/widget/media/SurfaceRenderView;

    .line 132
    iput-object p2, p0, Lcom/hfufo/widget/media/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 133
    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 136
    if-eqz p1, :cond_1

    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    instance-of v1, p1, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 139
    check-cast v0, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    .line 140
    .local v0, "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 142
    .end local v0    # "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    :cond_0
    iget-object v1, p0, Lcom/hfufo/widget/media/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 144
    :cond_1
    return-void
.end method

.method public getRenderView()Lcom/hfufo/widget/media/IRenderView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceView:Lcom/hfufo/widget/media/SurfaceRenderView;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method
