.class Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->onVideo([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1978
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v2, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hfufo/widget/MjpegView;->setJpegWidthAndHeightAndLevel(III)V

    .line 1979
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v2, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v3, v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hfufo/widget/MjpegView;->setJpegWidthAndHeightAndLevel(III)V

    .line 1980
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 1981
    return-void
.end method
