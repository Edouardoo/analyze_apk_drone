.class Lcom/hfufo/dialog/MasterHelpDialog$2;
.super Ljava/lang/Object;
.source "MasterHelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/MasterHelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/MasterHelpDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/MasterHelpDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/MasterHelpDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hfufo/dialog/MasterHelpDialog$2;->this$0:Lcom/hfufo/dialog/MasterHelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hfufo/dialog/MasterHelpDialog$2;->this$0:Lcom/hfufo/dialog/MasterHelpDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/dialog/MasterHelpDialog;->access$002(Lcom/hfufo/dialog/MasterHelpDialog;Z)Z

    .line 57
    iget-object v0, p0, Lcom/hfufo/dialog/MasterHelpDialog$2;->this$0:Lcom/hfufo/dialog/MasterHelpDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/MasterHelpDialog;->dismiss()V

    .line 58
    return-void
.end method
