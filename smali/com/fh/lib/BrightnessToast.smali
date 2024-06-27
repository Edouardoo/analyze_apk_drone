.class public Lcom/fh/lib/BrightnessToast;
.super Ljava/lang/Object;
.source "BrightnessToast.java"


# static fields
.field private static final maxValue:I = 0xff


# instance fields
.field private context:Landroid/app/Activity;

.field private sbBrightness:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fh/lib/BrightnessToast;->context:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method public static getMaxValue()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xff

    return v0
.end method


# virtual methods
.method public show(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 32
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->context:Landroid/app/Activity;

    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->getScreenBrightness(Landroid/app/Activity;)I

    move-result v0

    .line 33
    .local v0, "currentValue":I
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->toast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 34
    new-instance v2, Landroid/widget/Toast;

    iget-object v3, p0, Lcom/fh/lib/BrightnessToast;->context:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fh/lib/BrightnessToast;->toast:Landroid/widget/Toast;

    .line 35
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->context:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040067

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0f0234

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    iput-object v2, p0, Lcom/fh/lib/BrightnessToast;->sbBrightness:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    .line 37
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->sbBrightness:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v2, v6}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setMax(I)V

    .line 38
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->sbBrightness:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v2, v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 39
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 40
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->toast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 41
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 43
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/2addr p1, v0

    .line 44
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 45
    if-ltz p1, :cond_1

    .line 46
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->sbBrightness:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v2, p1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 47
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->context:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/fh/hdutil/AppUtils;->setBrightness(Landroid/app/Activity;I)V

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 52
    return-void

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/fh/lib/BrightnessToast;->sbBrightness:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v2, v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    goto :goto_0
.end method
