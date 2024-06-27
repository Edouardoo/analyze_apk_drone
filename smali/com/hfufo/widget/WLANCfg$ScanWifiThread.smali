.class Lcom/hfufo/widget/WLANCfg$ScanWifiThread;
.super Ljava/lang/Thread;
.source "WLANCfg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/WLANCfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanWifiThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/WLANCfg;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/WLANCfg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/WLANCfg;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/hfufo/widget/WLANCfg$ScanWifiThread;->this$0:Lcom/hfufo/widget/WLANCfg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 282
    :goto_0
    iget-object v1, p0, Lcom/hfufo/widget/WLANCfg$ScanWifiThread;->this$0:Lcom/hfufo/widget/WLANCfg;

    invoke-static {}, Lcom/hfufo/widget/WLANCfg;->access$100()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hfufo/widget/WLANCfg;->access$002(Lcom/hfufo/widget/WLANCfg;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 283
    invoke-static {}, Lcom/hfufo/widget/WLANCfg;->access$100()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 285
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/InterruptedException;
    return-void
.end method
