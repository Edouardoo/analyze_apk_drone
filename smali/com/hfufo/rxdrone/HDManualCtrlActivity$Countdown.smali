.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;
.super Landroid/os/CountDownTimer;
.source "HDManualCtrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Countdown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method public constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 8235
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .line 8236
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8237
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 8251
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 8252
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->total_time:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8253
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->current_time:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8255
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvRecTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8256
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$11000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8257
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    .line 8263
    :goto_0
    return-void

    .line 8259
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 8241
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvRecTime:Landroid/widget/TextView;

    long-to-int v3, p1

    invoke-static {v3}, Lcom/videooperate/utils/DateUtil;->getTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8242
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MAX_VID_DURATION:I

    long-to-int v3, p1

    sub-int v0, v2, v3

    .line 8243
    .local v0, "currentProgress":I
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$16600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 8244
    int-to-float v2, v0

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/fh/util/Common;->intToTime2(J)Ljava/lang/String;

    move-result-object v1

    .line 8245
    .local v1, "hms":Ljava/lang/String;
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->current_time:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8246
    return-void
.end method
