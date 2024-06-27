.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$3$1;
.super Ljava/lang/Object;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 658
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rollView:Landroid/widget/ImageView;

    const v1, 0x7f030025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 659
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3$1;->this$1:Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_return:Landroid/widget/ImageView;

    const v1, 0x7f030038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 660
    return-void
.end method
