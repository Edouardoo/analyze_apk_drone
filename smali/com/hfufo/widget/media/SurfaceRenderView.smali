.class public Lcom/hfufo/widget/media/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/hfufo/widget/media/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;,
        Lcom/hfufo/widget/media/SurfaceRenderView$InternalSurfaceHolder;
    }
.end annotation


# instance fields
.field private mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

.field private mSurfaceCallback:Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 58
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
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Lcom/hfufo/widget/media/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/media/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    .line 68
    new-instance v0, Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;-><init>(Lcom/hfufo/widget/media/SurfaceRenderView;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;

    .line 69
    invoke-virtual {p0}, Lcom/hfufo/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 71
    invoke-virtual {p0}, Lcom/hfufo/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;->addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V

    .line 180
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 76
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 277
    const-class v0, Lcom/hfufo/widget/media/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 285
    const-class v0, Lcom/hfufo/widget/media/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/MeasureHelper;->doMeasure(II)V

    .line 118
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v1}, Lcom/hfufo/widget/media/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hfufo/widget/media/SurfaceRenderView;->setMeasuredDimension(II)V

    .line 119
    return-void
.end method

.method public removeRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/SurfaceRenderView$SurfaceCallback;->removeRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V

    .line 185
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/MeasureHelper;->setAspectRatio(I)V

    .line 112
    invoke-virtual {p0}, Lcom/hfufo/widget/media/SurfaceRenderView;->requestLayout()V

    .line 113
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 106
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceView doesn\'t support rotation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 98
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 100
    invoke-virtual {p0}, Lcom/hfufo/widget/media/SurfaceRenderView;->requestLayout()V

    .line 102
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 89
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/hfufo/widget/media/SurfaceRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/MeasureHelper;->setVideoSize(II)V

    .line 91
    invoke-virtual {p0}, Lcom/hfufo/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 92
    invoke-virtual {p0}, Lcom/hfufo/widget/media/SurfaceRenderView;->requestLayout()V

    .line 94
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method
