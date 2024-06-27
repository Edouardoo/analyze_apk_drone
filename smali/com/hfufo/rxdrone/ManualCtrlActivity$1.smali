.class Lcom/hfufo/rxdrone/ManualCtrlActivity$1;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;
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
    .line 527
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 531
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceDesc;->getProtocol_version()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fh/util/Protocol1;->getChannel1()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setChannel1(B)V

    .line 537
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fh/util/Protocol1;->getChannel2()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setChannel2(B)V

    .line 538
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fh/util/Protocol1;->getChannel3()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setChannel3(B)V

    .line 539
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fh/util/Protocol1;->getChannel4()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setChannel4(B)V

    .line 540
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "0139"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v4

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 541
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e00\u76f4\u53d1\u9001\u7684\u6307\u4ee4quanzhi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v2

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 549
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 554
    return-void

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "0139"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v4

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 544
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e00\u76f4\u53d1\u9001\u7684\u6307\u4ee4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v2

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
