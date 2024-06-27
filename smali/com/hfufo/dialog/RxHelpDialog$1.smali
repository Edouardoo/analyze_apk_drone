.class Lcom/hfufo/dialog/RxHelpDialog$1;
.super Ljava/lang/Object;
.source "RxHelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxHelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/RxHelpDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/RxHelpDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/RxHelpDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/hfufo/dialog/RxHelpDialog$1;->this$0:Lcom/hfufo/dialog/RxHelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hfufo/dialog/RxHelpDialog$1;->this$0:Lcom/hfufo/dialog/RxHelpDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/RxHelpDialog;->dismiss()V

    .line 41
    return-void
.end method
