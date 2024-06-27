.class public Lcom/jieli/lib/dv/control/utils/ListenerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Ljava/lang/String; = "ListenerHelper"

.field private static d:Lcom/jieli/lib/dv/control/utils/ListenerHelper;


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->a:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Ljava/util/HashSet;

    return-void
.end method

.method public static getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;-><init>()V

    sput-object v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    .line 6
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public addNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public dispatchDeviceConnectState(I)V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->a:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->c:Ljava/lang/String;

    const-string v1, "OnConnectStateListener is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    .line 7
    new-instance v2, Lcom/jieli/lib/dv/control/utils/ListenerHelper$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper$a;-><init>(Lcom/jieli/lib/dv/control/utils/ListenerHelper;Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;I)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public dispatchNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 3
    new-instance v2, Lcom/jieli/lib/dv/control/utils/ListenerHelper$b;

    invoke-direct {v2, p0, v0, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper$b;-><init>(Lcom/jieli/lib/dv/control/utils/ListenerHelper;Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void
.end method

.method public removeConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public removeNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method
