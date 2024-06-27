.class Lcom/hfufo/rxdrone/ManualCtrlActivity$20;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/fh/util/MsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualViewInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 3192
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$20;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3196
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x20006

    if-ne v1, v2, :cond_0

    .line 3197
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3199
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$20;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const-string v2, "Channel1"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 3200
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$20;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const-string v2, "Channel2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 3201
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$20;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const-string v2, "Channel4"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 3202
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$20;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const-string v2, "Channel3"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    .line 3208
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onReset(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3213
    return-void
.end method
