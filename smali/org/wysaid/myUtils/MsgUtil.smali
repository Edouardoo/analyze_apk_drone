.class public Lorg/wysaid/myUtils/MsgUtil;
.super Ljava/lang/Object;
.source "MsgUtil.java"


# static fields
.field static mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lorg/wysaid/myUtils/MsgUtil;->mContext:Ljava/lang/ref/WeakReference;

    .line 30
    sput-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    .line 31
    return-void
.end method

.method public static getCurrentToast()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static isDisplaying()Z
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCurrentToast(Landroid/content/Context;Landroid/widget/Toast;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/wysaid/myUtils/MsgUtil;->mContext:Ljava/lang/ref/WeakReference;

    .line 25
    sput-object p1, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    .line 26
    return-void
.end method

.method public static toastMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/wysaid/myUtils/MsgUtil;->toastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public static toastMsg(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 38
    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3

    .line 39
    :cond_0
    if-nez p0, :cond_2

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lorg/wysaid/myUtils/MsgUtil;->mContext:Ljava/lang/ref/WeakReference;

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/wysaid/myUtils/MsgUtil;->mContext:Ljava/lang/ref/WeakReference;

    .line 45
    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    .line 46
    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 49
    :cond_3
    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget-object v0, Lorg/wysaid/myUtils/MsgUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
