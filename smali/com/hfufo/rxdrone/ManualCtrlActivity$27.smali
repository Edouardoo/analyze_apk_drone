.class Lcom/hfufo/rxdrone/ManualCtrlActivity$27;
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
    .line 3474
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3478
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3479
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3484
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 3485
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$11000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recFlagThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3486
    return-void

    .line 3482
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$10900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0300c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
