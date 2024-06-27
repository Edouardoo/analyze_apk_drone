.class Lcom/hfufo/dialog/DeleteDialog$2;
.super Ljava/lang/Object;
.source "DeleteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/DeleteDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/DeleteDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/DeleteDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/DeleteDialog;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/hfufo/dialog/DeleteDialog$2;->this$0:Lcom/hfufo/dialog/DeleteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/hfufo/dialog/DeleteDialog$2;->this$0:Lcom/hfufo/dialog/DeleteDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/dialog/DeleteDialog;->access$002(Lcom/hfufo/dialog/DeleteDialog;Z)Z

    .line 86
    iget-object v0, p0, Lcom/hfufo/dialog/DeleteDialog$2;->this$0:Lcom/hfufo/dialog/DeleteDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/DeleteDialog;->dismiss()V

    .line 87
    return-void
.end method
