.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/fh/util/MsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualViewInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 5407
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5411
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x20006

    if-ne v1, v2, :cond_0

    .line 5412
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 5414
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v1}, Lcom/hfufo/widget/ManualView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 5415
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const-string v2, "Channel1"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 5416
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const-string v2, "Channel2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 5417
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const-string v2, "Channel4"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 5418
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    const-string v2, "Channel3"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    .line 5425
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onReset(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, -0x80

    .line 5429
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5430
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 5431
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 5432
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 5433
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    .line 5435
    :cond_0
    return-void
.end method
