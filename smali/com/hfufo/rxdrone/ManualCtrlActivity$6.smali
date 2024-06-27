.class Lcom/hfufo/rxdrone/ManualCtrlActivity$6;
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
    .line 675
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const-string v1, "R"

    iput-object v1, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initOpencvMode(I)V

    .line 680
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/RectView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$6;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$2200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    return-void
.end method
