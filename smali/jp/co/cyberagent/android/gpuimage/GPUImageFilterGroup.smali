.class public Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
.source "GPUImageFilterGroup.java"


# instance fields
.field protected mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameBufferTextures:[I

.field private mFrameBuffers:[I

.field private final mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private final mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private final mGLTextureFlipBuffer:Ljava/nio/FloatBuffer;

.field protected mMergedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;-><init>(Ljava/util/List;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;>;"
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>()V

    .line 60
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    .line 61
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    .line 67
    :goto_0
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 70
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 73
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 75
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->getRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)[F

    move-result-object v0

    .line 78
    .local v0, "flipTexture":[F
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureFlipBuffer:Ljava/nio/FloatBuffer;

    .line 81
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureFlipBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    return-void

    .line 64
    .end local v0    # "flipTexture":[F
    :cond_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->updateMergedFilters()V

    goto :goto_0
.end method

.method private destroyFramebuffers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    array-length v0, v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 120
    iput-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    .line 122
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 124
    iput-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method public addFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1
    .param p1, "aFilter"    # Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->updateMergedFilters()V

    goto :goto_0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public getMergedFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->destroyFramebuffers()V

    .line 111
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 112
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->destroy()V

    goto :goto_0

    .line 114
    .end local v0    # "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    :cond_0
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDestroy()V

    .line 115
    return-void
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 10
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const v9, 0x8d40

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 185
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->runPendingOnDrawTasks()V

    .line 186
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    if-nez v5, :cond_1

    .line 214
    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 190
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 191
    .local v4, "size":I
    move v3, p1

    .line 192
    .local v3, "previousTexture":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 193
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 194
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_4

    const/4 v2, 0x1

    .line 195
    .local v2, "isNotLast":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 196
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    aget v5, v5, v1

    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 197
    invoke-static {v8, v8, v8, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 200
    :cond_2
    if-nez v1, :cond_5

    .line 201
    invoke-virtual {v0, v3, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 208
    :goto_2
    if-eqz v2, :cond_3

    .line 209
    invoke-static {v9, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 210
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    aget v3, v5, v1

    .line 192
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isNotLast":Z
    :cond_4
    move v2, v6

    .line 194
    goto :goto_1

    .line 202
    .restart local v2    # "isNotLast":Z
    :cond_5
    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_7

    .line 203
    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_6

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureFlipBuffer:Ljava/nio/FloatBuffer;

    :goto_3
    invoke-virtual {v0, v3, v7, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    goto :goto_3

    .line 205
    :cond_7
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v5, v7}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_2
.end method

.method public onInit()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInit()V

    .line 99
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 100
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->init()V

    goto :goto_0

    .line 102
    .end local v0    # "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    :cond_0
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 137
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->destroyFramebuffers()V

    .line 141
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 142
    .local v10, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 143
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 147
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 148
    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    .line 149
    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    .line 151
    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v0, v10, -0x1

    if-ge v9, v0, :cond_2

    .line 152
    const/4 v0, 0x1

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 153
    const/4 v0, 0x1

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 154
    const/16 v0, 0xde1

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 155
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 157
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 159
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 161
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 163
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 166
    const v0, 0x8d40

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 167
    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    aget v3, v3, v9

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 170
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 151
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 174
    :cond_2
    return-void
.end method

.method public updateMergedFilters()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    if-nez v2, :cond_1

    .line 252
    :cond_0
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    if-nez v2, :cond_3

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    .line 241
    :goto_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 242
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    instance-of v2, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 243
    check-cast v2, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->updateMergedFilters()V

    .line 244
    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;

    .end local v0    # "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->getMergedFilters()Ljava/util/List;

    move-result-object v1

    .line 245
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 247
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 237
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;>;"
    :cond_3
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 250
    .restart local v0    # "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    :cond_4
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
