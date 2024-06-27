.class Lcom/Util/WifiDialog$2;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Util/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Util/WifiDialog;


# direct methods
.method constructor <init>(Lcom/Util/WifiDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/Util/WifiDialog;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "onClick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    iget-object v0, v0, Lcom/Util/WifiDialog;->wifiDevices:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    iget-object v0, v0, Lcom/Util/WifiDialog;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    const-string v1, "ContentValues"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--wifi\u70b9\u51fb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    iget-object v0, v0, Lcom/Util/WifiDialog;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/Util/WifiDevice;

    invoke-virtual {v0}, Lcom/Util/WifiDevice;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    invoke-static {v0}, Lcom/Util/WifiDialog;->access$000(Lcom/Util/WifiDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 141
    iget-object v1, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    iget-object v0, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    invoke-static {v0}, Lcom/Util/WifiDialog;->access$100(Lcom/Util/WifiDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lcom/Util/WifiDialog;->access$002(Lcom/Util/WifiDialog;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    invoke-static {v0}, Lcom/Util/WifiDialog;->access$100(Lcom/Util/WifiDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connecting..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    iget-object v1, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    iget-object v0, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    invoke-static {v0}, Lcom/Util/WifiDialog;->access$000(Lcom/Util/WifiDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v0, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    iget-object v3, v0, Lcom/Util/WifiDialog;->wifiConfigurationList:Ljava/util/List;

    iget-object v0, p0, Lcom/Util/WifiDialog$2;->this$0:Lcom/Util/WifiDialog;

    iget-object v0, v0, Lcom/Util/WifiDialog;->wifiDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/Util/WifiDevice;

    invoke-virtual {v0}, Lcom/Util/WifiDevice;->getSsid()Ljava/lang/String;

    move-result-object v0

    const-string v4, "password"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/Util/WifiDialog;->addNetWorkAndConnectOnAndroidM(Landroid/net/wifi/WifiManager;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method
