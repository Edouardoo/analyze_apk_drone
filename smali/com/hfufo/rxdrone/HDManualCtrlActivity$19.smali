.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$19;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->openFixRTS(IIIII)V
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
    .line 3546
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$19;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x1

    .line 3549
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 3550
    const-string v1, "123456"

    const-string v2, "openFixRTS-SEND_FAILED-tcp: "

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    :cond_0
    :goto_0
    return-void

    .line 3553
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$19;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3554
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFixRTS-SEND_SUCCESS-tcp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$19;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$19;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3556
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceDesc;->getNetMode()I

    move-result v0

    .line 3558
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 3559
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$19;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/16 v2, 0x8b5

    invoke-static {v1, v0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;II)Z

    .line 3560
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open FixRts mode TCP_MODE 11 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3546
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$19;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
