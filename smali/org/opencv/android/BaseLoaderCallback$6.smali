.class Lorg/opencv/android/BaseLoaderCallback$6;
.super Ljava/lang/Object;
.source "BaseLoaderCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/BaseLoaderCallback;->onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/opencv/android/BaseLoaderCallback;

.field final synthetic val$callback:Lorg/opencv/android/InstallCallbackInterface;


# direct methods
.method constructor <init>(Lorg/opencv/android/BaseLoaderCallback;Lorg/opencv/android/InstallCallbackInterface;)V
    .locals 0
    .param p1, "this$0"    # Lorg/opencv/android/BaseLoaderCallback;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/opencv/android/BaseLoaderCallback$6;->this$0:Lorg/opencv/android/BaseLoaderCallback;

    iput-object p2, p0, Lorg/opencv/android/BaseLoaderCallback$6;->val$callback:Lorg/opencv/android/InstallCallbackInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lorg/opencv/android/BaseLoaderCallback$6;->val$callback:Lorg/opencv/android/InstallCallbackInterface;

    invoke-interface {v0}, Lorg/opencv/android/InstallCallbackInterface;->wait_install()V

    .line 121
    return-void
.end method
