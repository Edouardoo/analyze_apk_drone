.class Lcom/hfufo/rxdrone/ManualCtrlActivity$13$2;
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
    .line 2084
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$2;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$2;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$2;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$8702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z

    .line 2089
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$2;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 2091
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13$2;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 2093
    :cond_0
    return-void
.end method
