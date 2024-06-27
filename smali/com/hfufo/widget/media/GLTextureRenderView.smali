.class public Lcom/hfufo/widget/media/GLTextureRenderView;
.super Landroid/view/TextureView;
.source "GLTextureRenderView.java"

# interfaces
.implements Lcom/hfufo/widget/media/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;,
        Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GLTextureRenderView"

.field private static internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;


# instance fields
.field private mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

.field private mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

.field private rendererGl:Lcom/hfufo/widget/media/VideoTextureRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView;->initView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView;->initView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView;->initView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView;->initView(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/hfufo/widget/media/GLTextureRenderView;)Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/media/GLTextureRenderView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    return-object v0
.end method

.method static synthetic access$200()Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;)Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    .prologue
    .line 33
    sput-object p0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Lcom/hfufo/widget/media/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/media/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    .line 61
    new-instance v0, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;-><init>(Lcom/hfufo/widget/media/GLTextureRenderView;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    .line 62
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->setParams(Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/media/GLTextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 64
    return-void
.end method

.method private setGLRender(Lcom/hfufo/widget/media/VideoTextureRenderer;)V
    .locals 0
    .param p1, "render"    # Lcom/hfufo/widget/media/VideoTextureRenderer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->rendererGl:Lcom/hfufo/widget/media/VideoTextureRenderer;

    .line 67
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V

    .line 382
    return-void
.end method

.method public endRecord()V
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->endRenderRecord()V

    .line 176
    :cond_0
    return-void
.end method

.method public getSurfaceHolder()Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    invoke-static {v1}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->access$000(Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/GLTextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    sput-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    .line 192
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 71
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->willDetachFromWindow()V

    .line 82
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 83
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->didDetachFromWindow()V

    .line 84
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 564
    const-class v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 565
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 569
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 570
    const-class v0, Lcom/hfufo/widget/media/GLTextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 571
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/MeasureHelper;->doMeasure(II)V

    .line 120
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v1}, Lcom/hfufo/widget/media/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hfufo/widget/media/GLTextureRenderView;->setMeasuredDimension(II)V

    .line 121
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v1}, Lcom/hfufo/widget/media/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hfufo/widget/media/GLTextureRenderView;->setGLSize(II)V

    .line 122
    return-void
.end method

.method public removeRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView$SurfaceCallback;->removeRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V

    .line 387
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/MeasureHelper;->setAspectRatio(I)V

    .line 114
    invoke-virtual {p0}, Lcom/hfufo/widget/media/GLTextureRenderView;->requestLayout()V

    .line 115
    return-void
.end method

.method public setFilter(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 130
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->setFilter(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public setGLSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 151
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->setVideoSize(II)V

    .line 154
    :cond_0
    return-void
.end method

.method public setRAS(FFFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "tranW"    # F
    .param p4, "tranH"    # F

    .prologue
    .line 144
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->setRAS(FFFF)V

    .line 147
    :cond_0
    return-void
.end method

.method public setRenderCallback(Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;Z)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;
    .param p2, "isP"    # Z

    .prologue
    .line 158
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->setCallback(Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 137
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->setFilter(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public setVSize(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "dstW"    # I
    .param p4, "dstH"    # I

    .prologue
    .line 185
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->setSize(IIII)V

    .line 188
    :cond_0
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/MeasureHelper;->setVideoRotation(I)V

    .line 108
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/media/GLTextureRenderView;->setRotation(F)V

    .line 109
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 99
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 101
    invoke-virtual {p0}, Lcom/hfufo/widget/media/GLTextureRenderView;->requestLayout()V

    .line 103
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 91
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/hfufo/widget/media/GLTextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/MeasureHelper;->setVideoSize(II)V

    .line 93
    invoke-virtual {p0}, Lcom/hfufo/widget/media/GLTextureRenderView;->requestLayout()V

    .line 95
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public startRecord(Lcom/jieli/lib/stream/udp/IActionListener;)V
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
    .line 165
    .local p1, "mListener":Lcom/jieli/lib/stream/udp/IActionListener;, "Lcom/jieli/lib/stream/udp/IActionListener<Lorg/opencv/core/Mat;>;"
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->startRenderRecord(Lcom/jieli/lib/stream/udp/IActionListener;)V

    .line 169
    :cond_0
    return-void
.end method

.method public take()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/hfufo/widget/media/GLTextureRenderView;->internalSurfaceHolder:Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/GLTextureRenderView$InternalSurfaceHolder;->take()V

    .line 182
    :cond_0
    return-void
.end method
