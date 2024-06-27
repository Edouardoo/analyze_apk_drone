.class public Lcom/hfufo/dialog/GpsDialog;
.super Landroid/app/Dialog;
.source "GpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/dialog/GpsDialog$DialogListener;
    }
.end annotation


# instance fields
.field private cancel:Landroid/widget/Button;

.field private inflater:Landroid/view/LayoutInflater;

.field private mImageView:Landroid/widget/ImageView;

.field private m_context:Landroid/app/Activity;

.field private m_listener:Lcom/hfufo/dialog/GpsDialog$DialogListener;

.field private message:Landroid/widget/TextView;

.field private state:Z

.field private sure:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/hfufo/dialog/GpsDialog$DialogListener;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/hfufo/dialog/GpsDialog$DialogListener;

    .prologue
    const/4 v4, 0x0

    .line 25
    const v1, 0x7f0a00d9

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-boolean v4, p0, Lcom/hfufo/dialog/GpsDialog;->state:Z

    .line 27
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/GpsDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    iput-object p2, p0, Lcom/hfufo/dialog/GpsDialog;->m_listener:Lcom/hfufo/dialog/GpsDialog$DialogListener;

    .line 29
    iput-object p1, p0, Lcom/hfufo/dialog/GpsDialog;->m_context:Landroid/app/Activity;

    .line 30
    iget-object v1, p0, Lcom/hfufo/dialog/GpsDialog;->m_context:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/hfufo/dialog/GpsDialog;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iget-object v1, p0, Lcom/hfufo/dialog/GpsDialog;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040044

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/GpsDialog;->setContentView(Landroid/view/View;)V

    .line 34
    const v1, 0x7f0f01ed

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/GpsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hfufo/dialog/GpsDialog;->title:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0f01ef

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/GpsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hfufo/dialog/GpsDialog;->message:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f0f01ee

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/GpsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hfufo/dialog/GpsDialog;->mImageView:Landroid/widget/ImageView;

    .line 37
    const v1, 0x7f0f01b9

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/GpsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/hfufo/dialog/GpsDialog;->sure:Landroid/widget/Button;

    .line 38
    const v1, 0x7f0f01ba

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/GpsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/hfufo/dialog/GpsDialog;->cancel:Landroid/widget/Button;

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/hfufo/dialog/GpsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/GpsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/hfufo/dialog/GpsDialog;->state:Z

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/hfufo/dialog/GpsDialog;->m_listener:Lcom/hfufo/dialog/GpsDialog$DialogListener;

    iget-boolean v1, p0, Lcom/hfufo/dialog/GpsDialog;->state:Z

    invoke-interface {v0, v1}, Lcom/hfufo/dialog/GpsDialog$DialogListener;->on_dialog_listener(Z)V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/hfufo/dialog/GpsDialog;->sure:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/dialog/GpsDialog$1;

    invoke-direct {v1, p0}, Lcom/hfufo/dialog/GpsDialog$1;-><init>(Lcom/hfufo/dialog/GpsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/hfufo/dialog/GpsDialog;->cancel:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/dialog/GpsDialog$2;

    invoke-direct {v1, p0}, Lcom/hfufo/dialog/GpsDialog$2;-><init>(Lcom/hfufo/dialog/GpsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public setdMessage(I)V
    .locals 1
    .param p1, "m"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hfufo/dialog/GpsDialog;->message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    return-void
.end method

.method public setdNegativeButton(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/hfufo/dialog/GpsDialog;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 97
    return-void
.end method

.method public setdPositiveButton(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hfufo/dialog/GpsDialog;->sure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 93
    return-void
.end method

.method public setdTitle(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/hfufo/dialog/GpsDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-void
.end method
