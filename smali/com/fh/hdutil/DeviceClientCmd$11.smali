.class Lcom/fh/hdutil/DeviceClientCmd$11;
.super Ljava/lang/Object;
.source "DeviceClientCmd.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/hdutil/DeviceClientCmd;->changeWifiOn5G(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/hdutil/DeviceClientCmd;


# direct methods
.method constructor <init>(Lcom/fh/hdutil/DeviceClientCmd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/hdutil/DeviceClientCmd;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/fh/hdutil/DeviceClientCmd$11;->this$0:Lcom/fh/hdutil/DeviceClientCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 220
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI_MODE-SEND_FAILED: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI_MODE-SEND_Success: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/fh/hdutil/DeviceClientCmd$11;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
