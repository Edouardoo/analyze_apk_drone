.class public Lcom/jieli/lib/dv/control/ClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/dv/control/IClient;
.implements Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;
.implements Ljava/lang/Runnable;


# static fields
.field public static final MSG_RECEIVED_CTP_DATA:I = 0x105

.field public static final MSG_SOCKET_STATE:I = 0x101

.field private static k:Ljava/lang/String;

.field private static l:Lcom/jieli/lib/dv/control/IClient;


# instance fields
.field private a:Ljava/net/Socket;

.field private volatile b:Ljava/io/OutputStream;

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->l:Lcom/jieli/lib/dv/control/IClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Ljava/io/OutputStream;

    .line 6
    iput-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->g:I

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/util/HashSet;

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)Ljava/lang/String;
    .locals 6

    .prologue
    if-eqz p0, :cond_4

    const-string v0, "{"

    .line 94
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getErrorType()I

    move-result v1

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"errno\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getErrorType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"op\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getOperation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getParams()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"param\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_3

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 130
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cmd info is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/ClientImpl;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .prologue
    .line 3
    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/net/Socket;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->b(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Ljava/lang/String;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/util/HashSet;

    if-nez v0, :cond_2

    .line 27
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    const-string v1, "OnConnectStateListener is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1
    return-void

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    .line 32
    new-instance v2, Lcom/jieli/lib/dv/control/ClientImpl$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/jieli/lib/dv/control/ClientImpl$a;-><init>(Lcom/jieli/lib/dv/control/ClientImpl;Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;I)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_2

    const/16 v1, 0x104

    if-eq v0, v1, :cond_1

    const/16 v1, 0x105

    if-eq v0, v1, :cond_0

    .line 17
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    return-void

    .line 18
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 20
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/ClientImpl;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(I)V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/jieli/lib/dv/control/ClientImpl$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/jieli/lib/dv/control/ClientImpl$d;-><init>(Lcom/jieli/lib/dv/control/ClientImpl;Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    .line 34
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 37
    new-instance v2, Lcom/jieli/lib/dv/control/ClientImpl$b;

    invoke-direct {v2, p0, v0, p1}, Lcom/jieli/lib/dv/control/ClientImpl$b;-><init>(Lcom/jieli/lib/dv/control/ClientImpl;Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 39
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    const-string v1, "It is connecting ..."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->stopRunning()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/lib/dv/control/ClientImpl$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/jieli/lib/dv/control/ClientImpl$c;-><init>(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/ClientImpl;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, v2}, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;-><init>(Ljava/net/Socket;Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    .line 38
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 2
    iput p1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->g:I

    return-void
.end method

.method private declared-synchronized b(Landroid/os/Message;)V
    .locals 5

    .prologue
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra.cmd.info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;

    if-eqz v1, :cond_3

    .line 9
    invoke-static {v1}, Lcom/jieli/lib/dv/control/ClientImpl;->getPackage(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    :try_start_1
    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    const/4 v1, 0x1

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_0
    monitor-exit p0

    return-void

    .line 22
    :cond_0
    :try_start_2
    sget-object v1, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    const-string v2, "OutputStream is null"

    invoke-static {v1, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, -0x1

    .line 25
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 27
    iget v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:I

    .line 28
    iget v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:I

    .line 30
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Error :retryNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jieli/lib/dv/control/ClientImpl;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 31
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 33
    :cond_1
    :try_start_4
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cmdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 2
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->d()V

    .line 4
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 11
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x106

    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->j:Z

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->l:Lcom/jieli/lib/dv/control/IClient;

    return-void

    .line 16
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/jieli/lib/dv/control/ClientImpl;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->b()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Ljava/io/OutputStream;

    .line 9
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/net/Socket;

    .line 10
    invoke-direct {p0, v2}, Lcom/jieli/lib/dv/control/ClientImpl;->b(I)V

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->stopRunning()V

    .line 24
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->f:Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    :cond_1
    return-void

    .line 11
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Ljava/io/OutputStream;

    .line 14
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/net/Socket;

    .line 15
    invoke-direct {p0, v2}, Lcom/jieli/lib/dv/control/ClientImpl;->b(I)V

    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 16
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->b:Ljava/io/OutputStream;

    .line 17
    iput-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/net/Socket;

    .line 18
    invoke-direct {p0, v2}, Lcom/jieli/lib/dv/control/ClientImpl;->b(I)V

    .line 19
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jieli/lib/dv/control/IClient;
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->l:Lcom/jieli/lib/dv/control/IClient;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/jieli/lib/dv/control/ClientImpl;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->l:Lcom/jieli/lib/dv/control/IClient;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-direct {v0, p0}, Lcom/jieli/lib/dv/control/ClientImpl;-><init>(Landroid/content/Context;)V

    .line 5
    const-class v2, Lcom/jieli/lib/dv/control/IClient;

    invoke-static {v0, v2, v0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/IClient;

    sput-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->l:Lcom/jieli/lib/dv/control/IClient;

    .line 7
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->l:Lcom/jieli/lib/dv/control/IClient;

    return-object v0

    .line 7
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getPackage(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)[B
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v2, 0x0

    const-string v0, "CTP:"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 3
    array-length v0, v5

    int-to-short v6, v0

    const/4 v3, 0x0

    add-int/lit8 v0, v6, 0x6

    add-int/lit8 v0, v0, 0x4

    .line 7
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->getOperation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 9
    array-length v1, v3

    add-int/2addr v0, v1

    .line 15
    :goto_0
    new-array v0, v0, [B

    .line 18
    array-length v7, v4

    invoke-static {v4, v2, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    array-length v4, v4

    add-int/lit8 v4, v4, 0x0

    .line 22
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 23
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-static {v8, v2, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v4, v4, 0x2

    .line 31
    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    .line 35
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 36
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-static {v6, v2, v0, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v4, v4, 0x4

    if-eqz v3, :cond_0

    .line 46
    invoke-static {v3, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->d()V

    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1
    iget v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->g:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->c()V

    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->j:Z

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->j:Z

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 5
    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x106

    if-ne v1, v2, :cond_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 12
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    const-string v1, "ClientImpl is stop..."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0, p2, v1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 2
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    const-string v1, "cmdInfo is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p2, v1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V

    .line 7
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/ClientImpl;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.cmd.info"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 15
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x104

    .line 16
    iput v0, v1, Landroid/os/Message;->what:I

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->c:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
