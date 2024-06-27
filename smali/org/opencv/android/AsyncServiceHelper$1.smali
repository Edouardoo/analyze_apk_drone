.class final Lorg/opencv/android/AsyncServiceHelper$1;
.super Ljava/lang/Object;
.source "AsyncServiceHelper.java"

# interfaces
.implements Lorg/opencv/android/InstallCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/AsyncServiceHelper;->InstallService(Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

.field final synthetic val$AppContext:Landroid/content/Context;

.field final synthetic val$Callback:Lorg/opencv/android/LoaderCallbackInterface;


# direct methods
.method constructor <init>(Lorg/opencv/android/LoaderCallbackInterface;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$Callback:Lorg/opencv/android/LoaderCallbackInterface;

    iput-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$AppContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$Callback:Lorg/opencv/android/LoaderCallbackInterface;

    iput-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$1;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 104
    const-string v1, "OpenCVManager/Helper"

    const-string v2, "OpenCV library installation was canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x3

    .line 106
    .local v0, "Status":I
    const-string v1, "OpenCVManager/Helper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init finished with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v1, "OpenCVManager/Helper"

    const-string v2, "Calling using callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lorg/opencv/android/AsyncServiceHelper$1;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v1, v0}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    .line 109
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "OpenCV Manager"

    return-object v0
.end method

.method public install()V
    .locals 5

    .prologue
    .line 83
    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Trying to install OpenCV Manager via Google Play"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$AppContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/opencv/android/AsyncServiceHelper;->InstallServiceQuiet(Landroid/content/Context;)Z

    move-result v1

    .line 86
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 88
    const/4 v2, 0x1

    sput-boolean v2, Lorg/opencv/android/AsyncServiceHelper;->mServiceInstallationProgress:Z

    .line 89
    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Package installation started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v2, "OpenCVManager/Helper"

    const-string v3, "OpenCV package was not installed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x2

    .line 95
    .local v0, "Status":I
    const-string v2, "OpenCVManager/Helper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init finished with status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Unbind from service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Calling using callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$1;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v2, v0}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    goto :goto_0
.end method

.method public wait_install()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "OpenCVManager/Helper"

    const-string v1, "Instalation was not started! Nothing to wait!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method
