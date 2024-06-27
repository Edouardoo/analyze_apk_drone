.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$30$2;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;

    .prologue
    .line 4644
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30$2;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4647
    const-string v0, "\u5408\u6210\u5931\u8d25"

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4648
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30$2;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30$2;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4649
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30$2;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/MyProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MyProgressBar;->setVisibility(I)V

    .line 4650
    return-void
.end method
