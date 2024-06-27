.class Lcom/hfufo/dialog/NotifyDialog$3;
.super Ljava/lang/Object;
.source "NotifyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/NotifyDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/NotifyDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/NotifyDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/NotifyDialog;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/hfufo/dialog/NotifyDialog$3;->this$0:Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog$3;->this$0:Lcom/hfufo/dialog/NotifyDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/NotifyDialog;->access$200(Lcom/hfufo/dialog/NotifyDialog;)Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog$3;->this$0:Lcom/hfufo/dialog/NotifyDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/NotifyDialog;->access$200(Lcom/hfufo/dialog/NotifyDialog;)Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hfufo/dialog/NotifyDialog$OnPositiveClickListener;->onClick()V

    .line 390
    :cond_0
    return-void
.end method
