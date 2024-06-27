.class public Lcom/hfufo/widget/MyCountTimer;
.super Landroid/os/CountDownTimer;
.source "MyCountTimer.java"


# static fields
.field public static final TIME_COUNT:I = 0xbb8


# instance fields
.field private btn:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private downCount:I

.field private endStrRid:Ljava/lang/String;

.field private isphoto:Z

.field private videoCapture:Lcom/task/VideoCapture;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLandroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J
    .param p6, "btn"    # Landroid/widget/ImageView;
    .param p7, "endStrRid"    # Ljava/lang/String;
    .param p8, "isphoto"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/hfufo/widget/MyCountTimer;->downCount:I

    .line 36
    iput-object p6, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    .line 37
    iput-object p7, p0, Lcom/hfufo/widget/MyCountTimer;->endStrRid:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/hfufo/widget/MyCountTimer;->context:Landroid/content/Context;

    .line 39
    iput-boolean p8, p0, Lcom/hfufo/widget/MyCountTimer;->isphoto:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4
    .param p1, "btn"    # Landroid/widget/ImageView;
    .param p2, "endStrRid"    # Ljava/lang/String;

    .prologue
    .line 46
    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/hfufo/widget/MyCountTimer;->downCount:I

    .line 47
    iput-object p1, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    .line 48
    iput-object p2, p0, Lcom/hfufo/widget/MyCountTimer;->endStrRid:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    const v2, 0x7f030045

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 60
    iget-object v1, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 61
    iget-object v1, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/hfufo/widget/MyCountTimer;->isphoto:Z

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "time_finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/hfufo/widget/MyCountTimer;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "time_finish_video"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "###gesture_takevideo###"

    const-string v2, "###gesture_takevideo###time_finish_video"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onTick(J)V
    .locals 10
    .param p1, "millisUntilFinished"    # J

    .prologue
    const-wide/16 v8, 0x384

    const/4 v4, 0x0

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 80
    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 121
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 83
    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget v3, p0, Lcom/hfufo/widget/MyCountTimer;->downCount:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 87
    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    const v4, 0x7f030044

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    :goto_1
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v7, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 111
    .local v7, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 112
    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v3, v6

    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v6, v3, v6

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 118
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 119
    iget-object v1, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    iget v1, p0, Lcom/hfufo/widget/MyCountTimer;->downCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hfufo/widget/MyCountTimer;->downCount:I

    goto :goto_0

    .line 88
    .end local v0    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v7    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_1
    iget v3, p0, Lcom/hfufo/widget/MyCountTimer;->downCount:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 89
    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    const v4, 0x7f030043

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 90
    :cond_2
    iget v3, p0, Lcom/hfufo/widget/MyCountTimer;->downCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 91
    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    const v4, 0x7f030042

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v3, p0, Lcom/hfufo/widget/MyCountTimer;->btn:Landroid/widget/ImageView;

    const v4, 0x7f030045

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setVideoC(Lcom/task/VideoCapture;)V
    .locals 0
    .param p1, "vc"    # Lcom/task/VideoCapture;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/hfufo/widget/MyCountTimer;->videoCapture:Lcom/task/VideoCapture;

    .line 125
    return-void
.end method
