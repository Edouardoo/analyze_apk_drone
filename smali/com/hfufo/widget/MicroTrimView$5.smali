.class Lcom/hfufo/widget/MicroTrimView$5;
.super Ljava/lang/Object;
.source "MicroTrimView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/MicroTrimView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/MicroTrimView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/MicroTrimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/MicroTrimView;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/hfufo/widget/MicroTrimView$5;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 177
    const/16 v0, 0x80

    if-ge p2, v0, :cond_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView$5;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v0, p2}, Lcom/hfufo/widget/MicroTrimView;->access$002(Lcom/hfufo/widget/MicroTrimView;I)I

    .line 181
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView$5;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v0}, Lcom/hfufo/widget/MicroTrimView;->access$400(Lcom/hfufo/widget/MicroTrimView;)Lcom/hfufo/widget/MicroTrimView$ICallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView$5;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v0}, Lcom/hfufo/widget/MicroTrimView;->access$400(Lcom/hfufo/widget/MicroTrimView;)Lcom/hfufo/widget/MicroTrimView$ICallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/MicroTrimView$5;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v1}, Lcom/hfufo/widget/MicroTrimView;->access$000(Lcom/hfufo/widget/MicroTrimView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hfufo/widget/MicroTrimView$ICallBack;->onClickButton(I)V

    .line 185
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u89e6\u6478\u7684\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u89e6\u6478\u7684\u503cz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    return-void
.end method
