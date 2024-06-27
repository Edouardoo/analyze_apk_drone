.class Lcom/Util/WifiDialog$ScanWifiThread;
.super Ljava/lang/Thread;
.source "WifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Util/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanWifiThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Util/WifiDialog;


# direct methods
.method constructor <init>(Lcom/Util/WifiDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/Util/WifiDialog;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/Util/WifiDialog$ScanWifiThread;->this$0:Lcom/Util/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 276
    :goto_0
    iget-object v1, p0, Lcom/Util/WifiDialog$ScanWifiThread;->this$0:Lcom/Util/WifiDialog;

    iget-object v2, p0, Lcom/Util/WifiDialog$ScanWifiThread;->this$0:Lcom/Util/WifiDialog;

    invoke-static {v2}, Lcom/Util/WifiDialog;->access$000(Lcom/Util/WifiDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/Util/WifiDialog;->access$202(Lcom/Util/WifiDialog;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 277
    iget-object v1, p0, Lcom/Util/WifiDialog$ScanWifiThread;->this$0:Lcom/Util/WifiDialog;

    invoke-static {v1}, Lcom/Util/WifiDialog;->access$000(Lcom/Util/WifiDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 279
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/InterruptedException;
    return-void
.end method
