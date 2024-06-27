.class Lcom/hfufo/rxdrone/ManualCtrlActivity$26;
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
    .line 3460
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3465
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10508(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/fh/util/Common;->intToTime(J)Ljava/lang/String;

    move-result-object v0

    .line 3466
    .local v0, "hms":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3468
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$26;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v2, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recTimeThread:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3469
    return-void
.end method
