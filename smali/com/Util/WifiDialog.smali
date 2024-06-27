.class public Lcom/Util/WifiDialog;
.super Landroid/app/Dialog;
.source "WifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Util/WifiDialog$DeviceAdapter;,
        Lcom/Util/WifiDialog$ScanWifiThread;
    }
.end annotation


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private btn_cancel:Landroid/widget/Button;

.field private btn_scan:Landroid/widget/Button;

.field private currentWifiInfo:Landroid/net/wifi/WifiInfo;

.field private devRssiValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deviceAdapter:Lcom/Util/WifiDialog$DeviceAdapter;

.field private listDevice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private listDeviceName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field onClick:Landroid/view/View$OnClickListener;

.field onItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private ssid:Ljava/lang/String;

.field wifiConfigurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field wifiDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/Util/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private wifiMgr:Landroid/net/wifi/WifiManager;

.field yourChoice:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/Util/WifiDialog;->ssid:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/Util/WifiDialog$1;

    invoke-direct {v0, p0}, Lcom/Util/WifiDialog$1;-><init>(Lcom/Util/WifiDialog;)V

    iput-object v0, p0, Lcom/Util/WifiDialog;->onClick:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v0, Lcom/Util/WifiDialog$2;

    invoke-direct {v0, p0}, Lcom/Util/WifiDialog$2;-><init>(Lcom/Util/WifiDialog;)V

    iput-object v0, p0, Lcom/Util/WifiDialog;->onItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/Util/WifiDialog;->wifiDevices:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/Util/WifiDialog;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/Util/WifiDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/Util/WifiDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/Util/WifiDialog;->wifiMgr:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/Util/WifiDialog;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/Util/WifiDialog;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/Util/WifiDialog;->wifiMgr:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/Util/WifiDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/Util/WifiDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/Util/WifiDialog;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/Util/WifiDialog;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/Util/WifiDialog;->currentWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/Util/WifiDialog;->listDevice:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/Util/WifiDialog;->listDeviceName:Ljava/util/List;

    .line 78
    const v0, 0x7f0f025e

    invoke-virtual {p0, v0}, Lcom/Util/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/Util/WifiDialog;->listView:Landroid/widget/ListView;

    .line 81
    const v0, 0x7f0f025f

    invoke-virtual {p0, v0}, Lcom/Util/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/Util/WifiDialog;->btn_scan:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/Util/WifiDialog;->btn_scan:Landroid/widget/Button;

    iget-object v1, p0, Lcom/Util/WifiDialog;->onClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0f0260

    invoke-virtual {p0, v0}, Lcom/Util/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/Util/WifiDialog;->btn_cancel:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/Util/WifiDialog;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/Util/WifiDialog;->onClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f040076

    iget-object v3, p0, Lcom/Util/WifiDialog;->listDeviceName:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/Util/WifiDialog;->adapter:Landroid/widget/ArrayAdapter;

    .line 97
    new-instance v0, Lcom/Util/WifiDialog$DeviceAdapter;

    iget-object v1, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/Util/WifiDialog;->wifiDevices:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/Util/WifiDialog$DeviceAdapter;-><init>(Lcom/Util/WifiDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/Util/WifiDialog;->deviceAdapter:Lcom/Util/WifiDialog$DeviceAdapter;

    .line 98
    iget-object v0, p0, Lcom/Util/WifiDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/Util/WifiDialog;->deviceAdapter:Lcom/Util/WifiDialog$DeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    return-void
.end method

.method private isWifiConfigurationSaved(Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p2, "SSID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "wifiConfigurationList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/Util/WifiDialog;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    .line 195
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 196
    .local v0, "temp":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    .end local v0    # "temp":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scanWifi(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method public addNetWorkAndConnectOnAndroidM(Landroid/net/wifi/WifiManager;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "mWifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "_ssid"    # Ljava/lang/String;
    .param p4, "_password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p2, "wifiConfigurationList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-direct {p0, p2, p3}, Lcom/Util/WifiDialog;->isWifiConfigurationSaved(Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 184
    .local v0, "temp":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 185
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v1

    .line 188
    .end local v0    # "temp":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method enableNework(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "cxt"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "state":Z
    const-string v5, "wifi"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 162
    .local v4, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 167
    .local v3, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v2

    .line 175
    .end local v3    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 177
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v1    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    return v2

    .line 172
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v1    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_0
.end method

.method public getWifiSSID()V
    .locals 9

    .prologue
    .line 210
    iget-object v6, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    const-string v7, "location"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 211
    .local v3, "locManager":Landroid/location/LocationManager;
    const-string v6, "gps"

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 214
    const v6, 0x7f0800e2

    invoke-static {v6}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 225
    :goto_0
    iget-object v6, p0, Lcom/Util/WifiDialog;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/Util/WifiDialog;->wifiConfigurationList:Ljava/util/List;

    .line 226
    iget-object v6, p0, Lcom/Util/WifiDialog;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "ScanResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/Util/WifiDialog;->wifiDevices:Ljava/util/ArrayList;

    .line 229
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 230
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    .line 232
    .local v4, "streng":I
    new-instance v5, Lcom/Util/WifiDevice;

    invoke-direct {v5}, Lcom/Util/WifiDevice;-><init>()V

    .line 234
    .local v5, "wifiDevice":Lcom/Util/WifiDevice;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/Util/WifiDevice;->setSsid(Ljava/lang/String;)V

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rssi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/Util/WifiDevice;->setLevel(Ljava/lang/String;)V

    .line 236
    const-string v7, "ContentValues"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u626b\u63cf\u7684wifi"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "--\u8fde\u63a5\u7684wifi"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/Util/WifiDialog;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v1, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 238
    .local v1, "_ssid":Ljava/lang/String;
    iget-object v6, p0, Lcom/Util/WifiDialog;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    :cond_0
    const-string v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 244
    iget-object v6, p0, Lcom/Util/WifiDialog;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v1    # "_ssid":Ljava/lang/String;
    .end local v4    # "streng":I
    .end local v5    # "wifiDevice":Lcom/Util/WifiDevice;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 216
    .end local v0    # "ScanResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v2    # "i":I
    :cond_2
    new-instance v6, Lcom/Util/WifiDialog$ScanWifiThread;

    invoke-direct {v6, p0}, Lcom/Util/WifiDialog$ScanWifiThread;-><init>(Lcom/Util/WifiDialog;)V

    invoke-virtual {v6}, Lcom/Util/WifiDialog$ScanWifiThread;->start()V

    goto/16 :goto_0

    .line 250
    .restart local v0    # "ScanResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v2    # "i":I
    :cond_3
    new-instance v6, Lcom/Util/WifiDialog$DeviceAdapter;

    iget-object v7, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/Util/WifiDialog;->wifiDevices:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7, v8}, Lcom/Util/WifiDialog$DeviceAdapter;-><init>(Lcom/Util/WifiDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/Util/WifiDialog;->deviceAdapter:Lcom/Util/WifiDialog$DeviceAdapter;

    .line 251
    iget-object v6, p0, Lcom/Util/WifiDialog;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/Util/WifiDialog;->deviceAdapter:Lcom/Util/WifiDialog$DeviceAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v6, p0, Lcom/Util/WifiDialog;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/Util/WifiDialog;->onItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v1, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f040075

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/Util/WifiDialog;->setContentView(Landroid/view/View;)V

    .line 66
    invoke-direct {p0}, Lcom/Util/WifiDialog;->initView()V

    .line 68
    new-instance v1, Lcom/Util/WifiDialog$DeviceAdapter;

    iget-object v2, p0, Lcom/Util/WifiDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/Util/WifiDialog$DeviceAdapter;-><init>(Lcom/Util/WifiDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/Util/WifiDialog;->deviceAdapter:Lcom/Util/WifiDialog$DeviceAdapter;

    .line 72
    return-void
.end method
