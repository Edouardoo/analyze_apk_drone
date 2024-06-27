.class public Lcom/fh/lib/VolumeToast;
.super Ljava/lang/Object;
.source "VolumeToast.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private maxVol:I

.field private sbVolume:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fh/lib/VolumeToast;->mContext:Landroid/content/Context;

    .line 32
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fh/lib/VolumeToast;->mAudioManager:Landroid/media/AudioManager;

    .line 33
    iget-object v0, p0, Lcom/fh/lib/VolumeToast;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/fh/lib/VolumeToast;->maxVol:I

    .line 34
    return-void
.end method


# virtual methods
.method public getMaxVol()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/fh/lib/VolumeToast;->maxVol:I

    return v0
.end method

.method public show(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 37
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 38
    .local v0, "currentVol":I
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->toast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Landroid/widget/Toast;

    iget-object v3, p0, Lcom/fh/lib/VolumeToast;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fh/lib/VolumeToast;->toast:Landroid/widget/Toast;

    .line 40
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04006c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0f0249

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    iput-object v2, p0, Lcom/fh/lib/VolumeToast;->sbVolume:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    .line 42
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->sbVolume:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    iget v3, p0, Lcom/fh/lib/VolumeToast;->maxVol:I

    invoke-virtual {v2, v3}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setMax(I)V

    .line 43
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->sbVolume:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v2, v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 44
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 45
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->toast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 46
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 48
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/2addr p1, v0

    .line 49
    iget v2, p0, Lcom/fh/lib/VolumeToast;->maxVol:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 50
    if-ltz p1, :cond_1

    .line 51
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->sbVolume:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v2, p1}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 52
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6, p1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 57
    return-void

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/fh/lib/VolumeToast;->sbVolume:Lcom/fh/lib/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v2, v0}, Lcom/fh/lib/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    goto :goto_0
.end method
