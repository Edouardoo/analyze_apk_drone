.class public Lcom/hfufo/bean/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;
.implements Lcom/fh/hdutil/IActions;


# instance fields
.field public TAG:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field public mApplication:Lcom/hfufo/rxdrone/MainApplication;

.field public mWifiHelper:Lcom/Util/WifiHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/BaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hfufo/bean/BaseFragment;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/hfufo/bean/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/BaseFragment;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 30
    iget-object v0, p0, Lcom/hfufo/bean/BaseFragment;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-static {v0}, Lcom/Util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/Util/WifiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/BaseFragment;->mWifiHelper:Lcom/Util/WifiHelper;

    goto :goto_0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hfufo/bean/BaseFragment;->bundle:Landroid/os/Bundle;

    .line 40
    return-void
.end method
