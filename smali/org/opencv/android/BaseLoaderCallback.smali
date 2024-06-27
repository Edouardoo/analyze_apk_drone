.class public abstract Lorg/opencv/android/BaseLoaderCallback;
.super Ljava/lang/Object;
.source "BaseLoaderCallback.java"

# interfaces
.implements Lorg/opencv/android/LoaderCallbackInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenCVLoader/BaseLoaderCallback"


# instance fields
.field protected mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "AppContext"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/opencv/android/BaseLoaderCallback;->mAppContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/opencv/android/BaseLoaderCallback;->mAppContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 137
    return-void
.end method

.method public onManagerConnected(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 21
    packed-switch p1, :pswitch_data_0

    .line 67
    :pswitch_0
    const-string v3, "OpenCVLoader/BaseLoaderCallback"

    const-string v4, "OpenCV loading failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/opencv/android/BaseLoaderCallback;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 69
    .local v1, "InitFailedDialog":Landroid/app/AlertDialog;
    const-string v3, "OpenCV error"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    const-string v3, "OpenCV was not initialised correctly. Application will be shut down"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 72
    const-string v3, "OK"

    new-instance v4, Lorg/opencv/android/BaseLoaderCallback$3;

    invoke-direct {v4, p0}, Lorg/opencv/android/BaseLoaderCallback$3;-><init>(Lorg/opencv/android/BaseLoaderCallback;)V

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 79
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 82
    .end local v1    # "InitFailedDialog":Landroid/app/AlertDialog;
    :goto_0
    :pswitch_1
    return-void

    .line 31
    :pswitch_2
    const-string v3, "OpenCVLoader/BaseLoaderCallback"

    const-string v4, "Package installation failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/opencv/android/BaseLoaderCallback;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 33
    .local v2, "MarketErrorMessage":Landroid/app/AlertDialog;
    const-string v3, "OpenCV Manager"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const-string v3, "Package installation failed!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 36
    const-string v3, "OK"

    new-instance v4, Lorg/opencv/android/BaseLoaderCallback$1;

    invoke-direct {v4, p0}, Lorg/opencv/android/BaseLoaderCallback$1;-><init>(Lorg/opencv/android/BaseLoaderCallback;)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 41
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 46
    .end local v2    # "MarketErrorMessage":Landroid/app/AlertDialog;
    :pswitch_3
    const-string v3, "OpenCVLoader/BaseLoaderCallback"

    const-string v4, "OpenCV library installation was canceled by user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lorg/opencv/android/BaseLoaderCallback;->finish()V

    goto :goto_0

    .line 52
    :pswitch_4
    const-string v3, "OpenCVLoader/BaseLoaderCallback"

    const-string v4, "OpenCV Manager Service is uncompatible with this app!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/opencv/android/BaseLoaderCallback;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 54
    .local v0, "IncomatibilityMessage":Landroid/app/AlertDialog;
    const-string v3, "OpenCV Manager"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    const-string v3, "OpenCV Manager service is incompatible with this app. Try to update it via Google Play."

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 57
    const-string v3, "OK"

    new-instance v4, Lorg/opencv/android/BaseLoaderCallback$2;

    invoke-direct {v4, p0}, Lorg/opencv/android/BaseLoaderCallback$2;-><init>(Lorg/opencv/android/BaseLoaderCallback;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V
    .locals 7
    .param p1, "operation"    # I
    .param p2, "callback"    # Lorg/opencv/android/InstallCallbackInterface;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 90
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/opencv/android/BaseLoaderCallback;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 91
    .local v0, "InstallMessage":Landroid/app/AlertDialog;
    const-string v2, "Package not found"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/opencv/android/InstallCallbackInterface;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package was not found! Try to install it?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 94
    const-string v2, "Yes"

    new-instance v3, Lorg/opencv/android/BaseLoaderCallback$4;

    invoke-direct {v3, p0, p2}, Lorg/opencv/android/BaseLoaderCallback$4;-><init>(Lorg/opencv/android/BaseLoaderCallback;Lorg/opencv/android/InstallCallbackInterface;)V

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const-string v2, "No"

    new-instance v3, Lorg/opencv/android/BaseLoaderCallback$5;

    invoke-direct {v3, p0, p2}, Lorg/opencv/android/BaseLoaderCallback$5;-><init>(Lorg/opencv/android/BaseLoaderCallback;Lorg/opencv/android/InstallCallbackInterface;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 114
    .end local v0    # "InstallMessage":Landroid/app/AlertDialog;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/opencv/android/BaseLoaderCallback;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 115
    .local v1, "WaitMessage":Landroid/app/AlertDialog;
    const-string v2, "OpenCV is not ready"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    const-string v2, "Installation is in progress. Wait or exit?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 118
    const-string v2, "Wait"

    new-instance v3, Lorg/opencv/android/BaseLoaderCallback$6;

    invoke-direct {v3, p0, p2}, Lorg/opencv/android/BaseLoaderCallback$6;-><init>(Lorg/opencv/android/BaseLoaderCallback;Lorg/opencv/android/InstallCallbackInterface;)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    const-string v2, "Exit"

    new-instance v3, Lorg/opencv/android/BaseLoaderCallback$7;

    invoke-direct {v3, p0, p2}, Lorg/opencv/android/BaseLoaderCallback$7;-><init>(Lorg/opencv/android/BaseLoaderCallback;Lorg/opencv/android/InstallCallbackInterface;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
