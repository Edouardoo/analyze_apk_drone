.class public Lcom/hfufo/widget/media/TextureRenderView;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/hfufo/widget/media/IRenderView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;,
        Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureRenderView"


# instance fields
.field private mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

.field private mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 61
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
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    invoke-direct {p0, p1}, Lcom/hfufo/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/hfufo/widget/media/TextureRenderView;)Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/widget/media/TextureRenderView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v0, Lcom/hfufo/widget/media/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/media/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    .line 71
    new-instance v0, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;-><init>(Lcom/hfufo/widget/media/TextureRenderView;)V

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    .line 72
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/media/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->addRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V

    .line 207
    return-void
.end method

.method public getSurfaceHolder()Lcom/hfufo/widget/media/IRenderView$ISurfaceHolder;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/hfufo/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    invoke-static {v1}, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->access$000(Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/hfufo/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/hfufo/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 77
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->willDetachFromWindow()V

    .line 88
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->didDetachFromWindow()V

    .line 90
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 364
    const-class v0, Lcom/hfufo/widget/media/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 365
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 370
    const-class v0, Lcom/hfufo/widget/media/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/MeasureHelper;->doMeasure(II)V

    .line 126
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0}, Lcom/hfufo/widget/media/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/hfufo/widget/media/TextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v1}, Lcom/hfufo/widget/media/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hfufo/widget/media/TextureRenderView;->setMeasuredDimension(II)V

    .line 127
    return-void
.end method

.method public removeRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hfufo/widget/media/IRenderView$IRenderCallback;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/TextureRenderView$SurfaceCallback;->removeRenderCallback(Lcom/hfufo/widget/media/IRenderView$IRenderCallback;)V

    .line 212
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/MeasureHelper;->setAspectRatio(I)V

    .line 120
    invoke-virtual {p0}, Lcom/hfufo/widget/media/TextureRenderView;->requestLayout()V

    .line 121
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/media/MeasureHelper;->setVideoRotation(I)V

    .line 114
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/hfufo/widget/media/TextureRenderView;->setRotation(F)V

    .line 115
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 105
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 107
    invoke-virtual {p0}, Lcom/hfufo/widget/media/TextureRenderView;->requestLayout()V

    .line 109
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 97
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureRenderView;->mMeasureHelper:Lcom/hfufo/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/hfufo/widget/media/MeasureHelper;->setVideoSize(II)V

    .line 99
    invoke-virtual {p0}, Lcom/hfufo/widget/media/TextureRenderView;->requestLayout()V

    .line 101
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
