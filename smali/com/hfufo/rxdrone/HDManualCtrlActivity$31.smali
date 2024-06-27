.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startLocalRecording()V
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
    .line 4839
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffer(Ljava/nio/IntBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/IntBuffer;

    .prologue
    .line 4844
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 4849
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4850
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4851
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4853
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4854
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    .line 4855
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 4857
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4858
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4860
    :cond_2
    return-void
.end method
