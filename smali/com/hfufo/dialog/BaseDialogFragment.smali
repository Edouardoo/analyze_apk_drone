.class public Lcom/hfufo/dialog/BaseDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BaseDialogFragment.java"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private isShown:Z

.field private mToastLong:Landroid/widget/Toast;

.field private mToastShort:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->isShown:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->isShown:Z

    .line 87
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->isShown:Z

    return v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 96
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->isShown:Z

    .line 97
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 24
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 25
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 26
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 28
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 29
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 30
    const v2, 0x7f0a00dd

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/hfufo/dialog/BaseDialogFragment;->bundle:Landroid/os/Bundle;

    .line 105
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 76
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 77
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hfufo/dialog/BaseDialogFragment;->isShown:Z

    goto :goto_0
.end method

.method public showToastLong(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/BaseDialogFragment;->showToastLong(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public showToastLong(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastLong:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastLong:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastLong:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastLong:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    :cond_1
    return-void

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastLong:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public showToastShort(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/BaseDialogFragment;->showToastShort(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public showToastShort(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastShort:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastShort:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastShort:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastShort:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    :cond_1
    return-void

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/hfufo/dialog/BaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/dialog/BaseDialogFragment;->mToastShort:Landroid/widget/Toast;

    goto :goto_0
.end method
