.class public Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private handler:Landroid/os/Handler;

.field private interceptor:Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;

.field private postUI:Z

.field private subject:Ljava/lang/Object;

.field tag:Ljava/lang/String;

.field private weakRef:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;-><init>(Ljava/lang/Object;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;-><init>(Ljava/lang/Object;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;-><init>(Ljava/lang/Object;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;ZZ)V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-class v0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->tag:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->weakRef:Z

    .line 30
    iput-object p2, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->interceptor:Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;

    .line 31
    iput-boolean p4, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->postUI:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->getObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->subject:Ljava/lang/Object;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->weakRef:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->subject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 5
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->subject:Ljava/lang/Object;

    goto :goto_0
.end method

.method private getObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->weakRef:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method private postSafeInvoke(Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private safeInvoke(Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->safeInvoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;

    invoke-direct {v1, v0, p2, p3}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->postUI:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->postSafeInvoke(Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->safeInvoke(Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->interceptor:Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;->onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5
    :goto_0
    return v0

    .line 3
    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
