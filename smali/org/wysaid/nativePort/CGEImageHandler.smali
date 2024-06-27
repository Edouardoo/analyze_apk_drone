.class public Lorg/wysaid/nativePort/CGEImageHandler;
.super Ljava/lang/Object;
.source "CGEImageHandler.java"


# instance fields
.field protected mNativeAddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lorg/wysaid/nativePort/NativeLibraryLoader;->load()V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeCreateHandler()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    .line 23
    return-void
.end method


# virtual methods
.method public bindTargetFBO()V
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeBindTargetFBO(J)V

    .line 96
    return-void
.end method

.method public drawResult()V
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeDrawResult(J)V

    .line 91
    return-void
.end method

.method public getResultBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeGetResultBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public initWithBitmap(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_0

    .line 33
    :goto_0
    return v0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1

    .line 30
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 33
    :cond_1
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeInitWithBitmap(JLandroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public initWithSize(II)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeInitWithSize(JII)Z

    move-result v0

    return v0
.end method

.method protected native nativeBindTargetFBO(J)V
.end method

.method protected native nativeCreateHandler()J
.end method

.method protected native nativeDrawResult(J)V
.end method

.method protected native nativeGetResultBitmap(J)Landroid/graphics/Bitmap;
.end method

.method protected native nativeInitWithBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method protected native nativeInitWithSize(JII)Z
.end method

.method protected native nativeProcessWithFilter(JJ)V
.end method

.method protected native nativeProcessingFilters(J)V
.end method

.method protected native nativeRelease(J)V
.end method

.method protected native nativeRevertImage(J)V
.end method

.method protected native nativeSetAsTarget(J)V
.end method

.method protected native nativeSetDrawerFlipScale(JFF)V
.end method

.method protected native nativeSetDrawerRotation(JF)V
.end method

.method protected native nativeSetFilterIntensity(JFZ)V
.end method

.method protected native nativeSetFilterIntensityAtIndex(JFIZ)Z
.end method

.method protected native nativeSetFilterWithAddress(JJ)V
.end method

.method protected native nativeSetFilterWithConfig(JLjava/lang/String;ZZ)Z
.end method

.method protected native nativeSwapBufferFBO(J)V
.end method

.method public processFilters()V
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeProcessingFilters(J)V

    .line 115
    return-void
.end method

.method public processWithFilter(J)V
    .locals 3
    .param p1, "filterAddress"    # J

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeProcessWithFilter(JJ)V

    .line 119
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 122
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 123
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeRelease(J)V

    .line 124
    iput-wide v2, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    .line 126
    :cond_0
    return-void
.end method

.method public revertImage()V
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeRevertImage(J)V

    .line 111
    return-void
.end method

.method public setAsTarget()V
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSetAsTarget(J)V

    .line 101
    return-void
.end method

.method public setDrawerFlipScale(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSetDrawerFlipScale(JFF)V

    .line 50
    return-void
.end method

.method public setDrawerRotation(F)V
    .locals 2
    .param p1, "rad"    # F

    .prologue
    .line 45
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSetDrawerRotation(JF)V

    .line 46
    return-void
.end method

.method public setFilterIntensity(F)V
    .locals 3
    .param p1, "intensity"    # F

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSetFilterIntensity(JFZ)V

    .line 67
    return-void
.end method

.method public setFilterIntensity(FZ)V
    .locals 2
    .param p1, "intensity"    # F
    .param p2, "shouldProcess"    # Z

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSetFilterIntensity(JFZ)V

    .line 74
    return-void
.end method

.method public setFilterIntensityAtIndex(FIZ)Z
    .locals 7
    .param p1, "intensity"    # F
    .param p2, "index"    # I
    .param p3, "shouldProcess"    # Z

    .prologue
    .line 86
    iget-wide v2, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSetFilterIntensityAtIndex(JFIZ)Z

    move-result v0

    return v0
.end method

.method public setFilterWithAddres(J)V
    .locals 3
    .param p1, "filter"    # J

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSetFilterWithAddress(JJ)V

    .line 130
    return-void
.end method

.method public setFilterWithConfig(Ljava/lang/String;)V
    .locals 7
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 53
    iget-wide v2, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    move-object v1, p0

    move-object v4, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSetFilterWithConfig(JLjava/lang/String;ZZ)Z

    .line 54
    return-void
.end method

.method public setFilterWithConfig(Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "shouldClearOlder"    # Z
    .param p3, "shouldProcess"    # Z

    .prologue
    .line 62
    iget-wide v2, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSetFilterWithConfig(JLjava/lang/String;ZZ)Z

    .line 63
    return-void
.end method

.method public swapBufferFBO()V
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEImageHandler;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEImageHandler;->nativeSwapBufferFBO(J)V

    .line 106
    return-void
.end method
