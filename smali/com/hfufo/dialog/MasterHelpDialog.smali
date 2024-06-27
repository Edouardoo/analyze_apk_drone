.class public Lcom/hfufo/dialog/MasterHelpDialog;
.super Landroid/app/Dialog;
.source "MasterHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private m_context:Landroid/app/Activity;

.field private m_listener:Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;

.field private state:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;

    .prologue
    const/4 v4, 0x0

    .line 23
    const v1, 0x7f0a00d9

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-boolean v4, p0, Lcom/hfufo/dialog/MasterHelpDialog;->state:Z

    .line 25
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/MasterHelpDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    iput-object p2, p0, Lcom/hfufo/dialog/MasterHelpDialog;->m_listener:Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;

    .line 27
    iput-object p1, p0, Lcom/hfufo/dialog/MasterHelpDialog;->m_context:Landroid/app/Activity;

    .line 28
    iget-object v1, p0, Lcom/hfufo/dialog/MasterHelpDialog;->m_context:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/hfufo/dialog/MasterHelpDialog;->inflater:Landroid/view/LayoutInflater;

    .line 29
    iget-object v1, p0, Lcom/hfufo/dialog/MasterHelpDialog;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/MasterHelpDialog;->setContentView(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/hfufo/dialog/MasterHelpDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/MasterHelpDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/hfufo/dialog/MasterHelpDialog;->state:Z

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 65
    iget-object v0, p0, Lcom/hfufo/dialog/MasterHelpDialog;->m_listener:Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;

    iget-boolean v1, p0, Lcom/hfufo/dialog/MasterHelpDialog;->state:Z

    invoke-interface {v0, v1}, Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;->on_delete_dialog_listener(Z)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v2, 0x7f0f01d9

    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/MasterHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 37
    .local v1, "sure":Landroid/widget/TextView;
    new-instance v2, Lcom/hfufo/dialog/MasterHelpDialog$1;

    invoke-direct {v2, p0}, Lcom/hfufo/dialog/MasterHelpDialog$1;-><init>(Lcom/hfufo/dialog/MasterHelpDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v2, 0x7f0f01d8

    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/MasterHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, "cancel":Landroid/widget/TextView;
    new-instance v2, Lcom/hfufo/dialog/MasterHelpDialog$2;

    invoke-direct {v2, p0}, Lcom/hfufo/dialog/MasterHelpDialog$2;-><init>(Lcom/hfufo/dialog/MasterHelpDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
