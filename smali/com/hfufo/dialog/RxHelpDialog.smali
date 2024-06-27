.class public Lcom/hfufo/dialog/RxHelpDialog;
.super Landroid/app/Dialog;
.source "RxHelpDialog.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const v1, 0x7f0a00d9

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object p1, p0, Lcom/hfufo/dialog/RxHelpDialog;->m_context:Landroid/content/Context;

    .line 20
    iget-object v1, p0, Lcom/hfufo/dialog/RxHelpDialog;->m_context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/hfufo/dialog/RxHelpDialog;->inflater:Landroid/view/LayoutInflater;

    .line 21
    iget-object v1, p0, Lcom/hfufo/dialog/RxHelpDialog;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040039

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 22
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/RxHelpDialog;->setContentView(Landroid/view/View;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f0f01d1

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/RxHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/hfufo/dialog/RxHelpDialog$1;

    invoke-direct {v1, p0}, Lcom/hfufo/dialog/RxHelpDialog$1;-><init>(Lcom/hfufo/dialog/RxHelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
