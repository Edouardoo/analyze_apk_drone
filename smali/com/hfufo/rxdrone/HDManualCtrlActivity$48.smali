.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePhoto(Landroid/view/View;)V
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
    .line 7039
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffer(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/IntBuffer;

    .prologue
    .line 7042
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    invoke-direct {v1, p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;Ljava/nio/IntBuffer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7087
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7088
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 7093
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7094
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 7095
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 7096
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7098
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7099
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 7101
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7102
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7104
    :cond_2
    return-void
.end method
