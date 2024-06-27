.class Lcom/hfufo/rxdrone/ManualCtrlActivity$10$1;
.super Ljava/lang/Object;
.source "ManualCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/ManualCtrlActivity$10;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$10;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/ManualCtrlActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/rxdrone/ManualCtrlActivity$10;

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$10$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$10$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$10;

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$10;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity$10$1;->this$1:Lcom/hfufo/rxdrone/ManualCtrlActivity$10;

    iget-object v1, v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$10;->this$0:Lcom/hfufo/rxdrone/ManualCtrlActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->access$6300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1724
    return-void
.end method
