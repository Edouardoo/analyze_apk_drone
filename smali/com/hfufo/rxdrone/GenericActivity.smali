.class public Lcom/hfufo/rxdrone/GenericActivity;
.super Lcom/hfufo/bean/BaseActivity;
.source "GenericActivity.java"


# instance fields
.field private connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/hfufo/bean/BaseActivity;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/GenericActivity;->tag:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/hfufo/rxdrone/GenericActivity$1;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/GenericActivity$1;-><init>(Lcom/hfufo/rxdrone/GenericActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/GenericActivity;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    return-void
.end method

.method private switchFragmentByTag(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0f0086

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "fragment":Lcom/hfufo/bean/BaseFragment;
    const/4 v1, 0x0

    .line 83
    .local v1, "fragmentTag":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {v0, p2}, Lcom/hfufo/bean/BaseFragment;->setBundle(Landroid/os/Bundle;)V

    .line 131
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    invoke-virtual {p0, v4, v0, v1}, Lcom/hfufo/rxdrone/GenericActivity;->changeFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 137
    :cond_1
    :goto_1
    return-void

    .line 106
    :pswitch_1
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/GenericActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/hfufo/fragment/PhotoViewFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcom/hfufo/bean/BaseFragment;
    check-cast v0, Lcom/hfufo/bean/BaseFragment;

    .line 107
    .restart local v0    # "fragment":Lcom/hfufo/bean/BaseFragment;
    if-nez v0, :cond_2

    .line 108
    new-instance v0, Lcom/hfufo/fragment/PhotoViewFragment;

    .end local v0    # "fragment":Lcom/hfufo/bean/BaseFragment;
    invoke-direct {v0}, Lcom/hfufo/fragment/PhotoViewFragment;-><init>()V

    .line 110
    .restart local v0    # "fragment":Lcom/hfufo/bean/BaseFragment;
    :cond_2
    const-class v2, Lcom/hfufo/fragment/PhotoViewFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 111
    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {p0, v4, v0}, Lcom/hfufo/rxdrone/GenericActivity;->changeFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 50
    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->isFactoryMode:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/hfufo/rxdrone/GenericActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const-string v1, "current_wifi_ssid"

    invoke-static {v0, v1}, Lcom/Util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_account_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/GenericActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/GenericActivity;->finish()V

    .line 57
    return-void

    .line 54
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/GenericActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/hfufo/bean/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v3, 0x7f04001c

    invoke-virtual {p0, v3}, Lcom/hfufo/rxdrone/GenericActivity;->setContentView(I)V

    .line 28
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/GenericActivity;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v3, v4}, Lcom/jieli/lib/dv/control/DeviceClient;->registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/GenericActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 30
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 31
    const-string v3, "key_fragment_tag"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 32
    .local v1, "fragmentTag":I
    const-string v3, "key_data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v1, v0}, Lcom/hfufo/rxdrone/GenericActivity;->switchFragmentByTag(ILandroid/os/Bundle;)V

    .line 35
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragmentTag":I
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/hfufo/bean/BaseActivity;->onDestroy()V

    .line 45
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/GenericActivity;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/hfufo/bean/BaseActivity;->onResume()V

    .line 40
    return-void
.end method
