.class public Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, v0, v0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;",
            "ZZ)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2, p3, p4}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;",
            "ZZ)TT;"
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyInvocationHandler;-><init>(Ljava/lang/Object;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;ZZ)V

    invoke-static {v0, p1, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getUIProxy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getUIProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getUIProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-static {p0, p1, p2, v0, v1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;[Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getWeakUIProxy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, v1}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/jieli/lib/dv/control/utils/proxy/ProxyInterceptor;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
