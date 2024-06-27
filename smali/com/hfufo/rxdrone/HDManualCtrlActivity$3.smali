.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity;
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
    .line 647
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->clearFlag1()V

    .line 651
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->clearFlag2()V

    .line 653
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fh/util/ProtocolOfQuanzhi;->clearFlag1()V

    .line 654
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3$1;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    return-void
.end method
