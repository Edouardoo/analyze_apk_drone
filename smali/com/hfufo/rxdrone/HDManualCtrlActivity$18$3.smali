.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$3;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    .prologue
    .line 3356
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$3;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18$3;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$9602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 3360
    return-void
.end method
