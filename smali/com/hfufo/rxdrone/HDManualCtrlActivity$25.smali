.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$25;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/jieli/lib/stream/udp/IActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;
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
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 3999
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$25;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 4014
    const/16 v0, 0x62c

    if-ne p1, v0, :cond_0

    .line 4017
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/fh/beans/StreamInfo;)V
    .locals 2
    .param p1, "result"    # Lcom/fh/beans/StreamInfo;

    .prologue
    .line 4002
    if-eqz p1, :cond_0

    .line 4003
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$25;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4004
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$25;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fh/beans/StreamInfo;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4009
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3999
    check-cast p1, Lcom/fh/beans/StreamInfo;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$25;->onSuccess(Lcom/fh/beans/StreamInfo;)V

    return-void
.end method
