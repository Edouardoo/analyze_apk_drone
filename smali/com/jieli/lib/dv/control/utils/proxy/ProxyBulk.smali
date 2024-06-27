.class public Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Method;

.field public object:Ljava/lang/Object;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->tag:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->object:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->method:Ljava/lang/reflect/Method;

    .line 10
    iput-object p3, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->args:[Ljava/lang/Object;

    return-void
.end method

.method public static safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    check-cast p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;

    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->safeInvoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public safeInvoke()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->object:Ljava/lang/Object;

    iget-object v3, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    return-object v0

    .line 1
    :catchall_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
