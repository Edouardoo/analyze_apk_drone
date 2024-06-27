.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    .prologue
    .line 7066
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;->this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 7070
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;->this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7071
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;->this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->gesture_thum:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7072
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;->this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->gesture_thum:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;->this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7073
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;->this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;->this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7074
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;->this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1$1;->this$2:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    iget-object v1, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->access$12000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7076
    :cond_0
    const v0, 0x7f0800b7

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 7078
    return-void
.end method
