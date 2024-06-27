.class public abstract Lcom/hfufo/bean/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;
.implements Lcom/fh/hdutil/IActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mApplication:Lcom/hfufo/rxdrone/MainApplication;

.field private mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

.field private mReceiver:Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field public mWifiHelper:Lcom/Util/WifiHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/bean/BaseActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/bean/BaseActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private registerBroadCastReceiver()V
    .locals 3

    .prologue
    .line 204
    iget-object v1, p0, Lcom/hfufo/bean/BaseActivity;->mReceiver:Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;-><init>(Lcom/hfufo/bean/BaseActivity;Lcom/hfufo/bean/BaseActivity$1;)V

    iput-object v1, p0, Lcom/hfufo/bean/BaseActivity;->mReceiver:Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;

    .line 207
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "baseFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "com.jieli.dv.running2_emergency_video_state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/bean/BaseActivity;->mReceiver:Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/hfufo/rxdrone/MainApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    return-void
.end method


# virtual methods
.method public changeFragment(ILandroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hfufo/bean/BaseActivity;->changeFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public changeFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 261
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/hfufo/bean/BaseActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/hfufo/bean/BaseActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/hfufo/bean/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 263
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 265
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v1, :cond_0

    .line 266
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 267
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 271
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 272
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 276
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void

    .line 269
    .restart local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .restart local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public dismissNotifyDialog()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hfufo/bean/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/NotifyDialog;->dismiss()V

    .line 299
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

    .line 301
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 177
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-static {v0}, Lcom/Util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/Util/WifiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mWifiHelper:Lcom/Util/WifiHelper;

    .line 178
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, p0}, Lcom/hfufo/rxdrone/MainApplication;->pushActivity(Lcom/hfufo/bean/BaseActivity;)V

    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 199
    invoke-virtual {p0}, Lcom/hfufo/bean/BaseActivity;->dismissNotifyDialog()V

    .line 200
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, p0}, Lcom/hfufo/rxdrone/MainApplication;->popActivity(Lcom/hfufo/bean/BaseActivity;)V

    .line 201
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 184
    invoke-direct {p0}, Lcom/hfufo/bean/BaseActivity;->registerBroadCastReceiver()V

    .line 185
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 190
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mReceiver:Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/bean/BaseActivity;->mReceiver:Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mReceiver:Lcom/hfufo/bean/BaseActivity$BaseWifiBroadcastReceiver;

    .line 194
    :cond_0
    return-void
.end method

.method public showNotifyDialog(Lcom/hfufo/bean/BaseActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/hfufo/bean/BaseActivity;

    .prologue
    .line 283
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hfufo/bean/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 285
    const v0, 0x7f080048

    const/4 v1, 0x1

    const v2, 0x7f0800b1

    invoke-static {v0, v1, v2}, Lcom/hfufo/dialog/NotifyDialog;->newInstance(IZI)Lcom/hfufo/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

    .line 286
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/NotifyDialog;->setCancelable(Z)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mNotifyDialog:Lcom/hfufo/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/hfufo/bean/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "notify_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/dialog/NotifyDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 292
    :cond_1
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hfufo/bean/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p2, :cond_0

    .line 226
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/hfufo/bean/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mToast:Landroid/widget/Toast;

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 233
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    :cond_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/hfufo/bean/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method public showToastLong(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/hfufo/bean/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hfufo/bean/BaseActivity;->showToastLong(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public showToastLong(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/hfufo/bean/BaseActivity;->showToast(Ljava/lang/String;I)V

    .line 247
    return-void
.end method

.method protected showToastShort(I)V
    .locals 1
    .param p1, "info"    # I

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/hfufo/bean/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hfufo/bean/BaseActivity;->showToastShort(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public showToastShort(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hfufo/bean/BaseActivity;->showToast(Ljava/lang/String;I)V

    .line 239
    return-void
.end method
