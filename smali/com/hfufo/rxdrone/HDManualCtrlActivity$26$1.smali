.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->onVideo(II[BJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

.field final synthetic val$arr:[B


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

    .prologue
    .line 4073
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

    iput-object p2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$1;->val$arr:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4077
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoCapture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4078
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$10900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoCapture;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26$1;->val$arr:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/task/VideoCapture;->capture([BZ)Z

    .line 4085
    :goto_0
    return-void

    .line 4080
    :cond_0
    const v0, 0x7f080053

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0
.end method
