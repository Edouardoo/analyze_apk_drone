.class Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;
.super Landroid/os/CountDownTimer;
.source "ManualCtrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Countdown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method public constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 5969
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .line 5970
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 5971
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 5985
    const-string v0, "rxffmpeg"

    const-string v1, "onFinish\uff1a"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5986
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 5987
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->total_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5988
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->current_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5989
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5990
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$3400(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V

    .line 5991
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5998
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 5975
    const-string v2, "rxffmpeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTick\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5976
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/TextView;

    move-result-object v2

    long-to-int v3, p1

    invoke-static {v3}, Lcom/videooperate/utils/DateUtil;->getTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5977
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget v2, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->MAX_VID_DURATION:I

    long-to-int v3, p1

    sub-int v0, v2, v3

    .line 5978
    .local v0, "currentProgress":I
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$15800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5979
    int-to-float v2, v0

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/fh/util/Common;->intToTime2(J)Ljava/lang/String;

    move-result-object v1

    .line 5980
    .local v1, "hms":Ljava/lang/String;
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->current_time:Landroid/widget/TextView;

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

    .line 5981
    return-void
.end method
