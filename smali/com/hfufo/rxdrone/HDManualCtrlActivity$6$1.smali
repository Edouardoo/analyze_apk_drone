.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$6$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$2100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    .line 811
    return-void
.end method
