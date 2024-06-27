.class Lorg/opencv/android/CameraBridgeViewBase$1;
.super Ljava/lang/Object;
.source "CameraBridgeViewBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/CameraBridgeViewBase;->onEnterStartedState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/opencv/android/CameraBridgeViewBase;


# direct methods
.method constructor <init>(Lorg/opencv/android/CameraBridgeViewBase;)V
    .locals 0
    .param p1, "this$0"    # Lorg/opencv/android/CameraBridgeViewBase;

    .prologue
    .line 364
    iput-object p1, p0, Lorg/opencv/android/CameraBridgeViewBase$1;->this$0:Lorg/opencv/android/CameraBridgeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 366
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 367
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase$1;->this$0:Lorg/opencv/android/CameraBridgeViewBase;

    invoke-virtual {v0}, Lorg/opencv/android/CameraBridgeViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 368
    return-void
.end method
