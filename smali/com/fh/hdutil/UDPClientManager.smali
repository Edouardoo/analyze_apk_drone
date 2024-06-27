.class public Lcom/fh/hdutil/UDPClientManager;
.super Ljava/lang/Object;
.source "UDPClientManager.java"


# static fields
.field private static instance:Lcom/jieli/lib/dv/control/DeviceClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient()Lcom/jieli/lib/dv/control/DeviceClient;
    .locals 4

    .prologue
    .line 13
    sget-object v0, Lcom/fh/hdutil/UDPClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    if-nez v0, :cond_1

    .line 14
    const-class v1, Lcom/fh/hdutil/UDPClientManager;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/fh/hdutil/UDPClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/jieli/lib/dv/control/DeviceClient;

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/jieli/lib/dv/control/DeviceClient;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/fh/hdutil/UDPClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcom/fh/hdutil/UDPClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/fh/hdutil/UDPClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/fh/hdutil/UDPClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->release()V

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/fh/hdutil/UDPClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    .line 29
    :cond_0
    return-void
.end method
