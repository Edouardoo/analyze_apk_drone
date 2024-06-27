.class public Lorg/wysaid/nativePort/CGEDeformFilterWrapper;
.super Ljava/lang/Object;
.source "CGEDeformFilterWrapper.java"


# instance fields
.field protected mNativeAddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lorg/wysaid/nativePort/NativeLibraryLoader;->load()V

    .line 18
    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "stride"    # F

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeCreate(IIF)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    .line 22
    return-void
.end method

.method public static create(IIF)Lorg/wysaid/nativePort/CGEDeformFilterWrapper;
    .locals 6
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "stride"    # F

    .prologue
    .line 27
    new-instance v0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;-><init>(IIF)V

    .line 28
    .local v0, "wrapper":Lorg/wysaid/nativePort/CGEDeformFilterWrapper;
    iget-wide v2, v0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->release(Z)V

    .line 30
    const/4 v0, 0x0

    .line 31
    const-string v1, "libCGE_java"

    const-string v2, "CGEDeformFilterWrapper.create failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bloatDeform(FFFFFF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "radius"    # F
    .param p6, "intensity"    # F

    .prologue
    .line 69
    iget-wide v2, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeBloatDeform(JFFFFFF)V

    .line 70
    return-void
.end method

.method public canRedo()Z
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeCanRedo(J)Z

    move-result v0

    return v0
.end method

.method public canUndo()Z
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeCanUndo(J)Z

    move-result v0

    return v0
.end method

.method public forwardDeform(FFFFFFFF)V
    .locals 12
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F
    .param p5, "w"    # F
    .param p6, "h"    # F
    .param p7, "radius"    # F
    .param p8, "intensity"    # F

    .prologue
    .line 61
    iget-wide v2, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeForwardDeform(JFFFFFFFF)V

    .line 62
    return-void
.end method

.method public getNativeAddress()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    return-wide v0
.end method

.method protected native nativeBloatDeform(JFFFFFF)V
.end method

.method protected native nativeCanRedo(J)Z
.end method

.method protected native nativeCanUndo(J)Z
.end method

.method protected native nativeCreate(IIF)J
.end method

.method protected native nativeForwardDeform(JFFFFFFFF)V
.end method

.method protected native nativePushDeformStep(J)Z
.end method

.method protected native nativeRedo(J)Z
.end method

.method protected native nativeRelease(J)V
.end method

.method protected native nativeRestore(J)V
.end method

.method protected native nativeRestoreWithIntensity(JF)V
.end method

.method protected native nativeRestoreWithPoint(JFFFFFF)V
.end method

.method protected native nativeSetUndoSteps(JI)V
.end method

.method protected native nativeShowMesh(JZ)V
.end method

.method protected native nativeUndo(J)Z
.end method

.method protected native nativeWrinkleDeform(JFFFFFF)V
.end method

.method public pushDeformStep()Z
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativePushDeformStep(J)Z

    move-result v0

    return v0
.end method

.method public redo()Z
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeRedo(J)Z

    move-result v0

    return v0
.end method

.method public release(Z)V
    .locals 4
    .param p1, "shouldDeleteNativeFilter"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeRelease(J)V

    .line 43
    :cond_0
    iput-wide v2, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    .line 45
    :cond_1
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeRestore(J)V

    .line 49
    return-void
.end method

.method public restoreWithIntensity(F)V
    .locals 2
    .param p1, "intensity"    # F

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeRestoreWithIntensity(JF)V

    .line 53
    return-void
.end method

.method public restoreWithPoint(FFFFFF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "radius"    # F
    .param p6, "intensity"    # F

    .prologue
    .line 65
    iget-wide v2, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeRestoreWithPoint(JFFFFFF)V

    .line 66
    return-void
.end method

.method public setUndoSteps(I)V
    .locals 2
    .param p1, "undoSteps"    # I

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeSetUndoSteps(JI)V

    .line 78
    return-void
.end method

.method public showMesh(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeShowMesh(JZ)V

    .line 108
    return-void
.end method

.method public undo()Z
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    invoke-virtual {p0, v0, v1}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeUndo(J)Z

    move-result v0

    return v0
.end method

.method public wrinkleDeform(FFFFFF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "radius"    # F
    .param p6, "intensity"    # F

    .prologue
    .line 73
    iget-wide v2, p0, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->mNativeAddress:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/wysaid/nativePort/CGEDeformFilterWrapper;->nativeWrinkleDeform(JFFFFFF)V

    .line 74
    return-void
.end method
