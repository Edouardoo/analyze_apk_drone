.class public Lcom/Util/WifiHelper;
.super Ljava/lang/Object;
.source "WifiHelper.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Util/WifiHelper$NetState;,
        Lcom/Util/WifiHelper$WifiCipherType;
    }
.end annotation


# static fields
.field private static instance:Lcom/Util/WifiHelper;

.field private static otherWifiSSID:Ljava/lang/String;

.field private static tag:Ljava/lang/String;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private wifiCallBackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fh/listener/OnWifiCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-string v0, "WifiHelper"

    sput-object v0, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/Util/WifiHelper;->instance:Lcom/Util/WifiHelper;

    .line 44
    sput-object v1, Lcom/Util/WifiHelper;->otherWifiSSID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    .line 61
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->startScan()V

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public static bindNetwork(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1014
    sget-object v4, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDK_INT="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 1016
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1017
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1018
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1019
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1020
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->removeTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1022
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 1024
    .local v3, "request":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/Util/WifiHelper$1;

    invoke-direct {v1, v2}, Lcom/Util/WifiHelper$1;-><init>(Landroid/net/ConnectivityManager;)V

    .line 1040
    .local v1, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v2, :cond_0

    .line 1041
    sget-object v4, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    const-string v5, "registerNetworkCallback"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v2, v3, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1045
    .end local v0    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v3    # "request":Landroid/net/NetworkRequest;
    :cond_0
    return-void
.end method

.method private configurationNetWorkIdCheck(I)Z
    .locals 5
    .param p1, "netWorkId"    # I

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object v1

    .line 313
    .local v1, "wifiConfigurationList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v2

    .line 316
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 317
    .local v0, "temp":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, p1, :cond_2

    .line 318
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createWifiConfiguration(Ljava/lang/String;Ljava/lang/String;Lcom/Util/WifiHelper$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/Util/WifiHelper$WifiCipherType;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 547
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 548
    .local v0, "newWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 549
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 550
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 551
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 552
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 555
    sget-object v1, Lcom/Util/WifiHelper$2;->$SwitchMap$com$Util$WifiHelper$WifiCipherType:[I

    invoke-virtual {p3}, Lcom/Util/WifiHelper$WifiCipherType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 610
    const/4 v0, 0x0

    .line 612
    .end local v0    # "newWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    :pswitch_0
    return-object v0

    .line 557
    .restart local v0    # "newWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 562
    :pswitch_2
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 563
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 564
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 565
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 566
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 567
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 568
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 569
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 570
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 573
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 574
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 575
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 576
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 577
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 578
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 579
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 580
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 581
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 582
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 584
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 585
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 586
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 587
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 588
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_0

    .line 592
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 593
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 594
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 595
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 596
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 597
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 598
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 599
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 600
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 601
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 602
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 603
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 604
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 605
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 606
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 607
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static formatIpAddress(I)Ljava/lang/String;
    .locals 2
    .param p0, "ipAddress"    # I

    .prologue
    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 890
    :cond_0
    :goto_0
    return-object p0

    .line 884
    :cond_1
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 887
    :cond_2
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getConnectedType(Landroid/content/Context;)Lcom/Util/WifiHelper$NetState;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 676
    sget-object v2, Lcom/Util/WifiHelper$NetState;->NET_NO:Lcom/Util/WifiHelper$NetState;

    .line 677
    .local v2, "stateCode":Lcom/Util/WifiHelper$NetState;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 678
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 679
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 680
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 721
    sget-object v2, Lcom/Util/WifiHelper$NetState;->NET_UNKNOWN:Lcom/Util/WifiHelper$NetState;

    .line 725
    :cond_0
    :goto_0
    :pswitch_0
    return-object v2

    .line 682
    :pswitch_1
    sget-object v2, Lcom/Util/WifiHelper$NetState;->NET_WIFI:Lcom/Util/WifiHelper$NetState;

    .line 683
    goto :goto_0

    .line 685
    :pswitch_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 710
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TD-SCDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 711
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WCDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 712
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDMA2000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 713
    :cond_1
    sget-object v2, Lcom/Util/WifiHelper$NetState;->NET_3G:Lcom/Util/WifiHelper$NetState;

    goto :goto_0

    .line 703
    :pswitch_3
    sget-object v2, Lcom/Util/WifiHelper$NetState;->NET_3G:Lcom/Util/WifiHelper$NetState;

    .line 704
    goto :goto_0

    .line 706
    :pswitch_4
    sget-object v2, Lcom/Util/WifiHelper$NetState;->NET_4G:Lcom/Util/WifiHelper$NetState;

    .line 707
    goto :goto_0

    .line 715
    :cond_2
    sget-object v2, Lcom/Util/WifiHelper$NetState;->NET_UNKNOWN:Lcom/Util/WifiHelper$NetState;

    .line 719
    goto :goto_0

    .line 680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 685
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/Util/WifiHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-class v1, Lcom/Util/WifiHelper;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/Util/WifiHelper;->instance:Lcom/Util/WifiHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/Util/WifiHelper;

    invoke-direct {v0, p0}, Lcom/Util/WifiHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/Util/WifiHelper;->instance:Lcom/Util/WifiHelper;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    sget-object v0, Lcom/Util/WifiHelper;->instance:Lcom/Util/WifiHelper;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getLocalIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 752
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    .line 753
    .local v5, "nilist":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 754
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 755
    .local v2, "ialist":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 756
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "ipv4":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_1

    instance-of v8, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_1

    .line 766
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "ialist":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "ipv4":Ljava/lang/String;
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    :goto_0
    return-object v3

    .line 763
    :catch_0
    move-exception v1

    .line 764
    .local v1, "ex":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 766
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_2
    const-string v3, "0.0.0.0"

    goto :goto_0
.end method

.method public static getNetWorkType(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 620
    invoke-static {p0, v5}, Lcom/Util/WifiHelper;->isNetWorkConnectedType(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v4

    .line 624
    :cond_1
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 625
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 626
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, "type":Ljava/lang/String;
    const-string v6, "WIFI"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 629
    goto :goto_0

    .line 630
    :cond_2
    const-string v6, "MOBILE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 631
    const-string v6, "phone"

    .line 632
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 633
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v4, v5

    .line 641
    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-string v1, "connectivity"

    .line 114
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 115
    .local v0, "manager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getWifiIP(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 734
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 735
    .local v3, "wifiinfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Lcom/Util/WifiHelper;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "ip":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move-object v1, v0

    .line 743
    .end local v0    # "ip":Ljava/lang/String;
    .local v1, "ip":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 737
    .end local v1    # "ip":Ljava/lang/String;
    .restart local v0    # "ip":Ljava/lang/String;
    :cond_0
    const-string v4, "0.0.0.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 738
    invoke-static {}, Lcom/Util/WifiHelper;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 739
    const-string v4, "0.0.0.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 740
    sget-object v4, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    const-string v5, "WIFI IP Error"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    .end local v0    # "ip":Ljava/lang/String;
    .restart local v1    # "ip":Ljava/lang/String;
    move-object v4, v0

    .line 743
    goto :goto_0
.end method

.method public static getWifiIP(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "ip":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 788
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 789
    .local v1, "ipAddress":I
    invoke-static {v1}, Lcom/Util/WifiHelper;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 791
    .end local v1    # "ipAddress":I
    :cond_0
    return-object v0
.end method

.method public static interceptChar0Before(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    if-nez p0, :cond_0

    .line 184
    const/4 v4, 0x0

    .line 196
    :goto_0
    return-object v4

    .line 186
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 187
    .local v2, "chars":[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-char v0, v2, v4

    .line 189
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 190
    .local v1, "ch":Ljava/lang/Character;
    invoke-virtual {v1}, Ljava/lang/Character;->hashCode()I

    move-result v6

    if-nez v6, :cond_2

    .line 196
    .end local v0    # "c":C
    .end local v1    # "ch":Ljava/lang/Character;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 193
    .restart local v0    # "c":C
    .restart local v1    # "ch":Ljava/lang/Character;
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static isNetWorkConnectedType(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 126
    if-nez p0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v4

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 130
    .local v3, "mContext":Landroid/content/Context;
    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 131
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 133
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 134
    array-length v6, v2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    .line 135
    .local v0, "anInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_2

    .line 136
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 134
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private isWifiConfigurationSaved(Ljava/lang/String;Lcom/Util/WifiHelper$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;
    .locals 11
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "wifiCipherType"    # Lcom/Util/WifiHelper$WifiCipherType;

    .prologue
    const/4 v6, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object v5

    .line 510
    .local v5, "wifiConfigurationList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v5, :cond_0

    move-object v3, v6

    .line 537
    :goto_0
    return-object v3

    .line 513
    :cond_0
    invoke-static {p1}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "tagetSSID":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 515
    .local v3, "temp":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_1

    .line 516
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 517
    .local v4, "tempSSID":Ljava/lang/String;
    invoke-static {v4}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 519
    const/4 v1, 0x0

    .line 520
    .local v1, "keyMgmt":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_1
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 521
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 522
    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_2

    .line 523
    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v8, v0

    .line 520
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    :cond_3
    sget-object v8, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWifiConfigurationSaved  keyMgmt = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , wifiCipherType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sget-object v8, Lcom/Util/WifiHelper$WifiCipherType;->WPA:Lcom/Util/WifiHelper$WifiCipherType;

    if-ne p2, v8, :cond_4

    const-string v8, "WPA_PSK"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    sget-object v8, Lcom/Util/WifiHelper$WifiCipherType;->NONE:Lcom/Util/WifiHelper$WifiCipherType;

    if-ne p2, v8, :cond_1

    const-string v8, "NONE"

    .line 529
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 530
    :cond_5
    sget-object v6, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiConfigurationSaved return object, network id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "k":I
    .end local v1    # "keyMgmt":Ljava/lang/String;
    .end local v3    # "temp":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "tempSSID":Ljava/lang/String;
    :cond_6
    move-object v3, v6

    .line 537
    goto/16 :goto_0
.end method


# virtual methods
.method public acquireWifiLock()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const-string v0, "wifiLock"

    invoke-virtual {p0, v0}, Lcom/Util/WifiHelper;->createWifiLock(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0
.end method

.method public addNetWork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "_wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 373
    const/16 v0, -0xff

    .line 374
    .local v0, "netWorkId":I
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 377
    :cond_0
    return v0
.end method

.method public addNetWorkAndConnect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "_wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/Util/WifiHelper;->addNetWork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 387
    .local v0, "netWorkId":I
    iget-object v1, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    const/16 v1, -0xff

    if-eq v0, v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 389
    iget-object v1, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 391
    :cond_0
    return-void
.end method

.method public addNetWorkAndConnect(Ljava/lang/String;Ljava/lang/String;Lcom/Util/WifiHelper$WifiCipherType;)V
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "wifiCipherType"    # Lcom/Util/WifiHelper$WifiCipherType;

    .prologue
    .line 474
    iget-object v5, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    if-eqz p3, :cond_0

    .line 475
    invoke-direct {p0, p1, p3}, Lcom/Util/WifiHelper;->isWifiConfigurationSaved(Ljava/lang/String;Lcom/Util/WifiHelper$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 476
    .local v2, "temp":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1

    .line 478
    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v5}, Lcom/Util/WifiHelper;->connectionConfiguration(I)V

    .line 501
    .end local v2    # "temp":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 480
    .restart local v2    # "temp":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/Util/WifiHelper;->createWifiConfiguration(Ljava/lang/String;Ljava/lang/String;Lcom/Util/WifiHelper$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 482
    .local v4, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v4}, Lcom/Util/WifiHelper;->addNetWork(Landroid/net/wifi/WifiConfiguration;)I

    .line 483
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object v1

    .line 484
    .local v1, "configurationList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    .line 485
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 486
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 487
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 488
    .local v3, "tempSSID":Ljava/lang/String;
    invoke-static {v3}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-static {p1}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 491
    iget-object v5, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 492
    iget-object v5, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0
.end method

.method public clearAllOnWifiCallback()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 81
    :cond_0
    return-void
.end method

.method public closeWifi()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/Util/WifiHelper;->isWifiOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 237
    :cond_0
    return-void
.end method

.method public connectOtherWifi(Ljava/lang/String;)V
    .locals 11
    .param p1, "exceptSpecified"    # Ljava/lang/String;

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->startScan()V

    .line 833
    const/4 v7, 0x0

    sput-object v7, Lcom/Util/WifiHelper;->otherWifiSSID:Ljava/lang/String;

    .line 834
    const/4 v1, 0x0

    .line 835
    .local v1, "isConnect":Z
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object v4

    .line 836
    .local v4, "saveWifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getWifiScanResult()Ljava/util/List;

    move-result-object v6

    .line 837
    .local v6, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v6, :cond_0

    if-nez v4, :cond_2

    .line 838
    :cond_0
    sget-object v7, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    const-string v8, "scanResultList or saveWifiList is null"

    invoke-static {v7, v8}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_1
    :goto_0
    return-void

    .line 842
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 843
    .local v5, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v3, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 844
    .local v3, "saveNetWorkName":Ljava/lang/String;
    invoke-static {v3}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 845
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 849
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 850
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 851
    .local v2, "networkName":Ljava/lang/String;
    invoke-static {v2}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 852
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 855
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 856
    sget-object v8, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save networkName-> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " network_id -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networkName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v8, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v8, :cond_5

    .line 858
    iget-object v8, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 859
    iget-object v8, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v1

    .line 861
    :cond_5
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sput-object v8, Lcom/Util/WifiHelper;->otherWifiSSID:Ljava/lang/String;

    .line 865
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "networkName":Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_3

    goto/16 :goto_0
.end method

.method public connectWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "SSID"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 948
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 949
    sget-object v4, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    const-string v5, "parameter is empty!"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    invoke-static {p2}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 954
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 955
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    .line 956
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 957
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 959
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 960
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    .line 961
    .local v2, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 962
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 963
    invoke-static {v2}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 965
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 966
    const v4, 0xeef5

    invoke-virtual {p0, v4}, Lcom/Util/WifiHelper;->notifyWifiError(I)V

    goto :goto_0

    .line 968
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 969
    const-string v4, "0"

    sget-object v5, Lcom/Util/WifiHelper$WifiCipherType;->NONE:Lcom/Util/WifiHelper$WifiCipherType;

    invoke-virtual {p0, p2, v4, v5}, Lcom/Util/WifiHelper;->addNetWorkAndConnect(Ljava/lang/String;Ljava/lang/String;Lcom/Util/WifiHelper$WifiCipherType;)V

    goto :goto_0

    .line 971
    :cond_4
    sget-object v4, Lcom/Util/WifiHelper$WifiCipherType;->WPA:Lcom/Util/WifiHelper$WifiCipherType;

    invoke-virtual {p0, p2, p3, v4}, Lcom/Util/WifiHelper;->addNetWorkAndConnect(Ljava/lang/String;Ljava/lang/String;Lcom/Util/WifiHelper$WifiCipherType;)V

    goto :goto_0
.end method

.method public connectionConfiguration(I)V
    .locals 2
    .param p1, "netWorkId"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 290
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 293
    :cond_0
    return-void
.end method

.method public createWifiLock(Ljava/lang/String;)V
    .locals 1
    .param p1, "lockName"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "wifiLock"

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/Util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 340
    :cond_1
    return-void
.end method

.method public disconnectionConfiguration(I)V
    .locals 1
    .param p1, "netWorkId"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 301
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 303
    :cond_0
    return-void
.end method

.method public getBroadcastAddress(Landroid/content/Context;)Ljava/net/InetAddress;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 923
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->isWifiApEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 924
    const-string v5, "192.168.43.255"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 938
    :goto_0
    return-object v5

    .line 926
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 927
    .local v4, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_1

    .line 928
    const-string v5, "255.255.255.255"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_0

    .line 929
    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 930
    .local v1, "dhcp":Landroid/net/DhcpInfo;
    if-nez v1, :cond_2

    .line 931
    const-string v5, "255.255.255.255"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_0

    .line 933
    :cond_2
    iget v5, v1, Landroid/net/DhcpInfo;->ipAddress:I

    iget v6, v1, Landroid/net/DhcpInfo;->netmask:I

    and-int/2addr v5, v6

    iget v6, v1, Landroid/net/DhcpInfo;->netmask:I

    xor-int/lit8 v6, v6, -0x1

    or-int v0, v5, v6

    .line 934
    .local v0, "broadcast":I
    new-array v3, v7, [B

    .line 935
    .local v3, "quads":[B
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 936
    mul-int/lit8 v5, v2, 0x8

    shr-int v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 938
    :cond_3
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_0
.end method

.method public getConnectedWifiLevel()I
    .locals 7

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 403
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_1

    .line 404
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "connectedWifiSSID":Ljava/lang/String;
    invoke-static {v0}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getWifiScanResult()Ljava/util/List;

    move-result-object v1

    .line 407
    .local v1, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_1

    .line 408
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 409
    .local v2, "temp":Landroid/net/wifi/ScanResult;
    if-eqz v2, :cond_0

    .line 410
    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "tempSSID":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 412
    iget v5, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 418
    .end local v0    # "connectedWifiSSID":Ljava/lang/String;
    .end local v1    # "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v2    # "temp":Landroid/net/wifi/ScanResult;
    .end local v3    # "tempSSID":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getCurrentConnectedSsid()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x22

    .line 1001
    iget-object v2, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1003
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 1004
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1006
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1010
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getGateWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 774
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 775
    .local v1, "wifiService":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 778
    :goto_0
    return-object v2

    .line 777
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 778
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getOtherWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    sget-object v0, Lcom/Util/WifiHelper;->otherWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedWifiConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpecifiedSSIDList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "specified"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->startScan()V

    .line 812
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getWifiScanResult()Ljava/util/List;

    move-result-object v2

    .line 813
    .local v2, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v2, :cond_1

    .line 814
    sget-object v4, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    const-string v5, "scanResultList is null"

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/4 v0, 0x0

    .line 824
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    return-object v0

    .line 817
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 819
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 820
    .local v3, "ssid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 821
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWifiState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 165
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    invoke-static {p1}, Lcom/Util/WifiHelper;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 167
    .local v0, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_2

    .line 169
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_3

    .line 170
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_4

    .line 172
    const/4 v1, 0x1

    goto :goto_0

    .line 174
    :cond_4
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public isOutSideWifi(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 150
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "ssid":Ljava/lang/String;
    invoke-static {v1}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/4 v2, 0x1

    .line 157
    .end local v1    # "ssid":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWifiApEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 909
    :try_start_0
    iget-object v2, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "isWifiApEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 910
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 911
    iget-object v2, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 919
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    move v2, v3

    .line 919
    goto :goto_0

    .line 914
    :catch_1
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 916
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 917
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public isWifiClosed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 205
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getWifiState()I

    move-result v0

    .line 206
    .local v0, "wifiState":I
    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiOpen()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiOpened()Z
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getWifiState()I

    move-result v0

    .line 217
    .local v0, "wifiState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyWifiConnect(Landroid/net/wifi/WifiInfo;)V
    .locals 3
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fh/listener/OnWifiCallBack;

    .line 86
    .local v0, "listener":Lcom/fh/listener/OnWifiCallBack;
    invoke-interface {v0, p1}, Lcom/fh/listener/OnWifiCallBack;->onConnected(Landroid/net/wifi/WifiInfo;)V

    goto :goto_0

    .line 89
    .end local v0    # "listener":Lcom/fh/listener/OnWifiCallBack;
    :cond_0
    return-void
.end method

.method public notifyWifiError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 92
    iget-object v1, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fh/listener/OnWifiCallBack;

    .line 94
    .local v0, "listener":Lcom/fh/listener/OnWifiCallBack;
    invoke-interface {v0, p1}, Lcom/fh/listener/OnWifiCallBack;->onError(I)V

    goto :goto_0

    .line 97
    .end local v0    # "listener":Lcom/fh/listener/OnWifiCallBack;
    :cond_0
    return-void
.end method

.method public openWifi()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/Util/WifiHelper;->isWifiClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 228
    :cond_0
    return-void
.end method

.method public registerOnWifiCallback(Lcom/fh/listener/OnWifiCallBack;)V
    .locals 1
    .param p1, "onWifiCallBack"    # Lcom/fh/listener/OnWifiCallBack;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 897
    sput-object v0, Lcom/Util/WifiHelper;->instance:Lcom/Util/WifiHelper;

    .line 898
    sput-object v0, Lcom/Util/WifiHelper;->otherWifiSSID:Ljava/lang/String;

    .line 899
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->releaseWifiLock()V

    .line 900
    iput-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 901
    return-void
.end method

.method public releaseWifiLock()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 365
    :cond_0
    return-void
.end method

.method public removeCurrentNetwork(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 982
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 983
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_1

    .line 984
    sget-object v3, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    const-string v4, "WifiManager is null"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 988
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 989
    :cond_2
    sget-object v3, Lcom/Util/WifiHelper;->tag:Ljava/lang/String;

    const-string v4, "-=-=-=wifiInfo is null or  wifiInfo.getSSID() is null"

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "mSSID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "wifi_camera_ac54_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 995
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/Util/WifiHelper;->removeNetWork(I)V

    .line 996
    const-string v3, "wifi_camera_ac54_"

    invoke-virtual {p0, v3}, Lcom/Util/WifiHelper;->connectOtherWifi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeNetWork(I)V
    .locals 1
    .param p1, "netWorkId"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 458
    :cond_0
    return-void
.end method

.method public removeSavedNetWork(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_3

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/Util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object v2

    .line 430
    .local v2, "saveWifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v2, :cond_1

    move v0, v4

    .line 446
    .end local v0    # "result":Z
    .end local v2    # "saveWifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    :goto_0
    return v0

    .line 433
    .restart local v0    # "result":Z
    .restart local v2    # "saveWifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 434
    .local v3, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_2

    .line 435
    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 436
    .local v1, "saveSSID":Ljava/lang/String;
    invoke-static {v1}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {p1}, Lcom/Util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 439
    iget-object v4, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v0

    .line 440
    goto :goto_0

    .end local v0    # "result":Z
    .end local v1    # "saveSSID":Ljava/lang/String;
    .end local v2    # "saveWifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    move v0, v4

    .line 446
    goto :goto_0
.end method

.method public declared-synchronized startScan()V
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/Util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_0
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterOnWifiCallback(Lcom/fh/listener/OnWifiCallBack;)V
    .locals 1
    .param p1, "onWifiCallBack"    # Lcom/fh/listener/OnWifiCallBack;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/Util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    return-void
.end method
