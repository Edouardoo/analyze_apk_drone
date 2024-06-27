.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    .prologue
    .line 2750
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2753
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->isExistRearView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2754
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    iget-object v2, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$1800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$7300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2756
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$6000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    .line 2757
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2776
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$5900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 2777
    return-void
.end method
