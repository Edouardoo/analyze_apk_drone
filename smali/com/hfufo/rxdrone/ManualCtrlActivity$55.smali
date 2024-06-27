.class Lcom/hfufo/rxdrone/ManualCtrlActivity$55;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/hfufo/dialog/RenderDialog$FilterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity;->selectFilter(Landroid/view/View;)V
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
    .line 6344
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilteSuccess(I)V
    .locals 3
    .param p1, "filterNum"    # I

    .prologue
    .line 6348
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16002(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 6349
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6350
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6351
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setFilterMode(Z)V

    .line 6358
    :goto_0
    const-string v0, "RenderGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilteSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6360
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/MjpegView;->setFilter(I)V

    .line 6364
    return-void

    .line 6354
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6356
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setFilterMode(Z)V

    goto :goto_0
.end method

.method public onSplitSuccess(I)V
    .locals 1
    .param p1, "splitNum"    # I

    .prologue
    .line 6368
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$16202(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I

    .line 6369
    return-void
.end method
