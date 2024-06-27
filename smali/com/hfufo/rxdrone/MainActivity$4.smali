.class Lcom/hfufo/rxdrone/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/hfufo/widget/wifiRecyclerAdatper$OnItemClickLitener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$1300(Lcom/hfufo/rxdrone/MainActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$1400(Lcom/hfufo/rxdrone/MainActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1122
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainActivity;->access$1402(Lcom/hfufo/rxdrone/MainActivity;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$400(Lcom/hfufo/rxdrone/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1125
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$1400(Lcom/hfufo/rxdrone/MainActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    iget-object v3, v0, Lcom/hfufo/rxdrone/MainActivity;->wifiConfigurationList:Ljava/util/List;

    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$1300(Lcom/hfufo/rxdrone/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/wifiBean;

    invoke-virtual {v0}, Lcom/hfufo/widget/wifiBean;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    const-string v4, "password"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/hfufo/rxdrone/MainActivity;->addNetWorkAndConnectOnAndroidM(Landroid/net/wifi/WifiManager;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1126
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hfufo/rxdrone/MainActivity;->access$600(Lcom/hfufo/rxdrone/MainActivity;Z)V

    goto :goto_0

    .line 1128
    :cond_2
    const v0, 0x7f080034

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 1129
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$4;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$400(Lcom/hfufo/rxdrone/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "WIFI Disconnect"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
