.class final Lcom/Util/WifiHelper$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Util/WifiHelper;->bindNetwork(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connMgr:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/Util/WifiHelper$1;->val$connMgr:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1028
    invoke-static {}, Lcom/Util/WifiHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAvailable.... "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/Util/WifiHelper$1;->val$connMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/Util/WifiHelper$1;->val$connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1031
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/Util/WifiHelper$1;->val$connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    goto :goto_0
.end method
