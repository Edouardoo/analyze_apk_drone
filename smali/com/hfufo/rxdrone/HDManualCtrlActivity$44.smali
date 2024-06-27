.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;
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
    .line 5680
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5685
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5686
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->record_flag:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5690
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z

    .line 5691
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$14600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recFlagThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5692
    return-void

    .line 5688
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->record_flag:Landroid/widget/ImageView;

    const v2, 0x7f0300c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
