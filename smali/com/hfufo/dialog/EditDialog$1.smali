.class Lcom/hfufo/dialog/EditDialog$1;
.super Ljava/lang/Object;
.source "EditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/EditDialog;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/EditDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/EditDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/EditDialog;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/hfufo/dialog/EditDialog$1;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog$1;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/EditDialog;->access$000(Lcom/hfufo/dialog/EditDialog;)Lcom/hfufo/dialog/EditDialog$OnclickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog$1;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/EditDialog;->access$000(Lcom/hfufo/dialog/EditDialog;)Lcom/hfufo/dialog/EditDialog$OnclickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/dialog/EditDialog$1;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/EditDialog;->access$100(Lcom/hfufo/dialog/EditDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hfufo/dialog/EditDialog$OnclickListener;->onYesClick(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog$1;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/EditDialog;->dismiss()V

    .line 87
    :cond_0
    return-void
.end method
