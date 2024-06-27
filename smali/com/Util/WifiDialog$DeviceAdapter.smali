.class Lcom/Util/WifiDialog$DeviceAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Util/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/Util/WifiDialog;

.field private wifiDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/Util/WifiDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/Util/WifiDialog;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/Util/WifiDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/Util/WifiDialog$DeviceAdapter;->this$0:Lcom/Util/WifiDialog;

    .line 297
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/Util/WifiDialog$DeviceAdapter;->wifiDevices:Ljava/util/ArrayList;

    .line 301
    return-void
.end method

.method public constructor <init>(Lcom/Util/WifiDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/Util/WifiDialog;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/Util/WifiDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p3, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/Util/WifiDevice;>;"
    iput-object p1, p0, Lcom/Util/WifiDialog$DeviceAdapter;->this$0:Lcom/Util/WifiDialog;

    .line 304
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 305
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/Util/WifiDialog$DeviceAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 306
    iput-object p3, p0, Lcom/Util/WifiDialog$DeviceAdapter;->wifiDevices:Ljava/util/ArrayList;

    .line 308
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/Util/WifiDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/Util/WifiDevice;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/Util/WifiDialog$DeviceAdapter;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/Util/WifiDialog$DeviceAdapter;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/Util/WifiDialog$DeviceAdapter;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/Util/WifiDialog$DeviceAdapter;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/Util/WifiDialog$DeviceAdapter;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 333
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 340
    if-eqz p2, :cond_1

    move-object v4, p2

    .line 341
    check-cast v4, Landroid/view/ViewGroup;

    .line 346
    .local v4, "vg":Landroid/view/ViewGroup;
    :goto_0
    iget-object v5, p0, Lcom/Util/WifiDialog$DeviceAdapter;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/Util/WifiDevice;

    .line 347
    .local v0, "device":Lcom/Util/WifiDevice;
    const v5, 0x7f0f0261

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 349
    .local v3, "tv_ssid":Landroid/widget/TextView;
    const v5, 0x7f0f0262

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 351
    .local v2, "tv_rssi":Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    invoke-virtual {v0}, Lcom/Util/WifiDevice;->getLevel()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "rssiValue":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/Util/WifiDevice;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/Util/WifiDevice;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v0}, Lcom/Util/WifiDevice;->getLevel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_0
    return-object v4

    .line 343
    .end local v0    # "device":Lcom/Util/WifiDevice;
    .end local v1    # "rssiValue":Ljava/lang/String;
    .end local v2    # "tv_rssi":Landroid/widget/TextView;
    .end local v3    # "tv_ssid":Landroid/widget/TextView;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_1
    iget-object v5, p0, Lcom/Util/WifiDialog$DeviceAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040076

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .restart local v4    # "vg":Landroid/view/ViewGroup;
    goto :goto_0
.end method
