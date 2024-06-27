.class Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    .prologue
    .line 4812
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    iput-object p2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4815
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4816
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4817
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4818
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4819
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->this$2:Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4821
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$34$1$1;->val$savePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4825
    :cond_0
    return-void
.end method
