.class final Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "GLSurfaceRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/media/GLSurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mFormat:I

.field private mHeight:I

.field private mIsFormatChanged:Z

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

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWeakSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hfufo/widget/media/GLSurfaceRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/hfufo/widget/media/GLSurfaceRenderView;)V
    .locals 1
    .param p1, "surfaceView"    # Lcom/hfufo/widget/media/GLSurfaceRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    .line 201
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    iget-object v1, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/media/GLSurfaceRenderView;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLSurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 210
    .restart local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    :cond_0
    iget v1, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;II)V

    .line 213
    :cond_1
    iget-boolean v1, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 214
    if-nez v0, :cond_2

    .line 215
    new-instance v0, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/widget/media/GLSurfaceRenderView;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLSurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 216
    .restart local v0    # "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    :cond_2
    iget v1, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mFormat:I

    iget v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;III)V

    .line 218
    :cond_3
    return-void
.end method

.method public removeRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    iget-object v0, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 255
    iput-object p1, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 256
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 257
    iput p2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 258
    iput p3, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 259
    iput p4, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 263
    new-instance v1, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/widget/media/GLSurfaceRenderView;

    iget-object v3, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLSurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 264
    .local v1, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 265
    .local v0, "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 267
    .end local v0    # "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    .line 226
    iput-object p1, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 227
    iput-boolean v4, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 228
    iput v4, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 229
    iput v4, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 230
    iput v4, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 232
    new-instance v1, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/widget/media/GLSurfaceRenderView;

    iget-object v3, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLSurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 233
    .local v1, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 234
    .local v0, "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, v4, v4}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 236
    .end local v0    # "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x0

    .line 240
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 241
    iput-boolean v3, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 242
    iput v3, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 243
    iput v3, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 244
    iput v3, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 246
    new-instance v1, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/widget/media/GLSurfaceRenderView;

    iget-object v3, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/hfufo/widget/media/GLSurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLSurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 247
    .local v1, "surfaceHolder":Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/hfufo/widget/media/GLSurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 248
    .local v0, "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1}, Lcom/hfufo/widget/media/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 250
    .end local v0    # "renderCallback":Lcom/hfufo/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method
