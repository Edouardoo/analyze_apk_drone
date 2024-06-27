.class public Lcom/fh/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/fh/util/ToastUtils;->mToast:Landroid/widget/Toast;

    .line 11
    return-void
.end method

.method public static show(I)V
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 14
    sget-object v0, Lcom/fh/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(I)V

    .line 15
    sget-object v0, Lcom/fh/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 16
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 19
    sget-object v0, Lcom/fh/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 20
    sget-object v0, Lcom/fh/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    return-void
.end method


# virtual methods
.method public cancelToast()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fh/util/ToastUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/fh/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/fh/util/ToastUtils;->mToast:Landroid/widget/Toast;

    .line 27
    :cond_0
    return-void
.end method
