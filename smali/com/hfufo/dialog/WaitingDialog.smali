.class public Lcom/hfufo/dialog/WaitingDialog;
.super Lcom/hfufo/dialog/BaseDialogFragment;
.source "WaitingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/dialog/WaitingDialog$OnWaitingDialog;
    }
.end annotation


# instance fields
.field private notifyContent:Ljava/lang/String;

.field private onWaitingDialog:Lcom/hfufo/dialog/WaitingDialog$OnWaitingDialog;

.field private tvNotifyContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/hfufo/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x2

    .line 67
    invoke-super {p0, p1}, Lcom/hfufo/dialog/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/hfufo/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hfufo/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/hfufo/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hfufo/dialog/WaitingDialog;->notifyContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 76
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 79
    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 80
    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 82
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/hfufo/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 61
    :cond_0
    const v1, 0x7f0f01e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hfufo/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    .line 62
    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->onDetach()V

    .line 92
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/hfufo/dialog/WaitingDialog;->onWaitingDialog:Lcom/hfufo/dialog/WaitingDialog$OnWaitingDialog;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/hfufo/dialog/WaitingDialog;->onWaitingDialog:Lcom/hfufo/dialog/WaitingDialog$OnWaitingDialog;

    invoke-interface {v0}, Lcom/hfufo/dialog/WaitingDialog$OnWaitingDialog;->onCancelDialog()V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->dismiss()V

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->onResume()V

    .line 87
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->onStart()V

    .line 39
    invoke-virtual {p0}, Lcom/hfufo/dialog/WaitingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 40
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 42
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 43
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public setNotifyContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "notifyContent"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/hfufo/dialog/WaitingDialog;->notifyContent:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setOnWaitingDialog(Lcom/hfufo/dialog/WaitingDialog$OnWaitingDialog;)V
    .locals 0
    .param p1, "onWaitingDialog"    # Lcom/hfufo/dialog/WaitingDialog$OnWaitingDialog;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/hfufo/dialog/WaitingDialog;->onWaitingDialog:Lcom/hfufo/dialog/WaitingDialog$OnWaitingDialog;

    .line 122
    return-void
.end method

.method public updateNotifyContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/hfufo/dialog/WaitingDialog;->notifyContent:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/hfufo/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/hfufo/dialog/WaitingDialog;->tvNotifyContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hfufo/dialog/WaitingDialog;->notifyContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    return-void
.end method
