.class public Lcom/hfufo/dialog/DeleteDialog;
.super Landroid/app/Dialog;
.source "DeleteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private m_context:Landroid/app/Activity;

.field private m_listener:Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;

.field private m_model:Z

.field private out_value:I

.field selectedPicsNull:Z

.field selectedVideosNull:Z

.field private state:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;
    .param p3, "in_value"    # I
    .param p4, "model"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 25
    const v1, 0x7f0a00d9

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-boolean v4, p0, Lcom/hfufo/dialog/DeleteDialog;->state:Z

    .line 38
    iput-boolean v2, p0, Lcom/hfufo/dialog/DeleteDialog;->selectedPicsNull:Z

    .line 39
    iput-boolean v2, p0, Lcom/hfufo/dialog/DeleteDialog;->selectedVideosNull:Z

    .line 27
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/DeleteDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    iput-object p2, p0, Lcom/hfufo/dialog/DeleteDialog;->m_listener:Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;

    .line 29
    iput-object p1, p0, Lcom/hfufo/dialog/DeleteDialog;->m_context:Landroid/app/Activity;

    .line 30
    iget-object v1, p0, Lcom/hfufo/dialog/DeleteDialog;->m_context:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/hfufo/dialog/DeleteDialog;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iget-object v1, p0, Lcom/hfufo/dialog/DeleteDialog;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    iput p3, p0, Lcom/hfufo/dialog/DeleteDialog;->out_value:I

    .line 33
    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/DeleteDialog;->setContentView(Landroid/view/View;)V

    .line 34
    iput-boolean p4, p0, Lcom/hfufo/dialog/DeleteDialog;->m_model:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZLcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "selectedPicsNull"    # Z
    .param p3, "selectedVideosNull"    # Z
    .param p4, "listener"    # Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;
    .param p5, "in_value"    # I
    .param p6, "model"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 43
    const v1, 0x7f0a00d9

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-boolean v4, p0, Lcom/hfufo/dialog/DeleteDialog;->state:Z

    .line 38
    iput-boolean v2, p0, Lcom/hfufo/dialog/DeleteDialog;->selectedPicsNull:Z

    .line 39
    iput-boolean v2, p0, Lcom/hfufo/dialog/DeleteDialog;->selectedVideosNull:Z

    .line 45
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/DeleteDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    iput-object p4, p0, Lcom/hfufo/dialog/DeleteDialog;->m_listener:Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;

    .line 47
    iput-object p1, p0, Lcom/hfufo/dialog/DeleteDialog;->m_context:Landroid/app/Activity;

    .line 48
    iput-boolean p2, p0, Lcom/hfufo/dialog/DeleteDialog;->selectedPicsNull:Z

    .line 49
    iput-boolean p3, p0, Lcom/hfufo/dialog/DeleteDialog;->selectedVideosNull:Z

    .line 50
    iget-object v1, p0, Lcom/hfufo/dialog/DeleteDialog;->m_context:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/hfufo/dialog/DeleteDialog;->inflater:Landroid/view/LayoutInflater;

    .line 51
    iget-object v1, p0, Lcom/hfufo/dialog/DeleteDialog;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    iput p5, p0, Lcom/hfufo/dialog/DeleteDialog;->out_value:I

    .line 53
    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/DeleteDialog;->setContentView(Landroid/view/View;)V

    .line 54
    iput-boolean p6, p0, Lcom/hfufo/dialog/DeleteDialog;->m_model:Z

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/hfufo/dialog/DeleteDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/DeleteDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/hfufo/dialog/DeleteDialog;->state:Z

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    iget-object v0, p0, Lcom/hfufo/dialog/DeleteDialog;->m_listener:Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;

    iget-boolean v1, p0, Lcom/hfufo/dialog/DeleteDialog;->selectedPicsNull:Z

    iget-boolean v2, p0, Lcom/hfufo/dialog/DeleteDialog;->selectedVideosNull:Z

    iget-boolean v3, p0, Lcom/hfufo/dialog/DeleteDialog;->state:Z

    iget v4, p0, Lcom/hfufo/dialog/DeleteDialog;->out_value:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/hfufo/dialog/DeleteDialog$DeleteDialogListener;->on_delete_dialog_listener(ZZZI)V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v2, 0x7f0f01b9

    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/DeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 64
    .local v1, "sure":Landroid/widget/Button;
    iget-boolean v2, p0, Lcom/hfufo/dialog/DeleteDialog;->m_model:Z

    if-eqz v2, :cond_0

    .line 65
    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 66
    :cond_0
    new-instance v2, Lcom/hfufo/dialog/DeleteDialog$1;

    invoke-direct {v2, p0}, Lcom/hfufo/dialog/DeleteDialog$1;-><init>(Lcom/hfufo/dialog/DeleteDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x7f0f01ba

    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/DeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, "cancel":Landroid/widget/Button;
    new-instance v2, Lcom/hfufo/dialog/DeleteDialog$2;

    invoke-direct {v2, p0}, Lcom/hfufo/dialog/DeleteDialog$2;-><init>(Lcom/hfufo/dialog/DeleteDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method
