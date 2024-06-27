.class Lcom/hfufo/rxdrone/ManualCtrlActivity$11;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/jieli/lib/stream/udp/IActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jieli/lib/stream/udp/IActionListener",
        "<",
        "Lcom/fh/beans/StreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1799
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom image failed. code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const/16 v0, 0x62c

    if-ne p1, v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVIStreamer;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    const v0, 0x7f0800a7

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 1803
    const-string v0, "PreviewActivityTAG"

    const-string v1, "\u505c\u6b62\u5f55\u50cf"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6602(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1805
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVIStreamer;->stopRecording()Z

    .line 1808
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/fh/beans/StreamInfo;)V
    .locals 4
    .param p1, "result"    # Lcom/fh/beans/StreamInfo;

    .prologue
    .line 1776
    if-eqz p1, :cond_2

    .line 1777
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/fh/beans/StreamInfo;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/fh/beans/StreamInfo;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/AVIStreamer;->addData(I[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1780
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6508(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    .line 1786
    const v0, 0x7f0800ce

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 1787
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6602(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 1789
    :cond_0
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom image success.seq : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fh/beans/StreamInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fh/beans/StreamInfo;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :goto_0
    return-void

    .line 1783
    :cond_1
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom add data failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fh/beans/StreamInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fh/beans/StreamInfo;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1792
    :cond_2
    const-string v0, "52gggg"

    const-string v1, "stopRecording: "

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1773
    check-cast p1, Lcom/fh/beans/StreamInfo;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;->onSuccess(Lcom/fh/beans/StreamInfo;)V

    return-void
.end method
