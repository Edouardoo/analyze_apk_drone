.class Lcom/hfufo/dialog/EditDialog$2;
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
    .line 90
    iput-object p1, p0, Lcom/hfufo/dialog/EditDialog$2;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog$2;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/EditDialog;->access$000(Lcom/hfufo/dialog/EditDialog;)Lcom/hfufo/dialog/EditDialog$OnclickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog$2;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/EditDialog;->access$000(Lcom/hfufo/dialog/EditDialog;)Lcom/hfufo/dialog/EditDialog$OnclickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hfufo/dialog/EditDialog$OnclickListener;->onNoClick()V

    .line 95
    iget-object v0, p0, Lcom/hfufo/dialog/EditDialog$2;->this$0:Lcom/hfufo/dialog/EditDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/EditDialog;->dismiss()V

    .line 97
    :cond_0
    return-void
.end method
