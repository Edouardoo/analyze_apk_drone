.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$32;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/jieli/lib/stream/udp/IActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startLocalRecording()V
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
        "Lorg/opencv/core/Mat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 4864
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$32;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 4874
    const-string v0, "AvcEncoder"

    const-string v1, "onError: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4875
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$32;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcEncoder;->StopThread()V

    .line 4876
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4864
    check-cast p1, Lorg/opencv/core/Mat;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$32;->onSuccess(Lorg/opencv/core/Mat;)V

    return-void
.end method

.method public onSuccess(Lorg/opencv/core/Mat;)V
    .locals 1
    .param p1, "mat"    # Lorg/opencv/core/Mat;

    .prologue
    .line 4868
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$32;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcEncoder;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/widget/AvcEncoder;->MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4869
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$32;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcEncoder;

    move-result-object v0

    iget-object v0, v0, Lcom/hfufo/widget/AvcEncoder;->MATQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4870
    :cond_0
    return-void
.end method
