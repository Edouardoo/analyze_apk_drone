.class Lcom/fh/hdutil/DeviceClientCmd$8;
.super Ljava/lang/Object;
.source "DeviceClientCmd.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/hdutil/DeviceClientCmd;->TryToGetCameraType()V
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
    .line 174
    iput-object p1, p0, Lcom/fh/hdutil/DeviceClientCmd$8;->this$0:Lcom/fh/hdutil/DeviceClientCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 178
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send failed!!!"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 174
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/fh/hdutil/DeviceClientCmd$8;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
