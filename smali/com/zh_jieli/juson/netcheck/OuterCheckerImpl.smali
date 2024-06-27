.class public Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;
.super Ljava/lang/Object;
.source "OuterCheckerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;,
        Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;
    }
.end annotation


# instance fields
.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private result:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1bb

    const/16 v3, 0x50

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->result:Z

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "name"

    const-string v2, "qq.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "host"

    const-string v2, "125.39.240.113"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "port"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "name"

    const-string v2, "qq.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "host"

    const-string v2, "125.39.240.113"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "port"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "name"

    const-string v2, "qq.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "host"

    const-string v2, "61.135.157.156"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "port"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "name"

    const-string v2, "qq.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "host"

    const-string v2, "61.135.157.156"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "port"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->result:Z

    return p1
.end method

.method public static check(J)Z
    .locals 4
    .param p0, "timeout"    # J

    .prologue
    .line 64
    :try_start_0
    new-instance v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;

    invoke-direct {v1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;-><init>()V

    .line 65
    .local v1, "outerChecker":Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;
    iget-object v2, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-virtual {v1, v2, p0, p1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->realCheck(Ljava/util/List;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 67
    .end local v1    # "outerChecker":Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;
    :goto_0
    return v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static check(Ljava/util/List;J)Z
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap;>;"
    :try_start_0
    new-instance v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;

    invoke-direct {v1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->realCheck(Ljava/util/List;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 58
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public realCheck(Ljava/util/List;J)Z
    .locals 8
    .param p1, "list"    # Ljava/util/List;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->result:Z

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;

    new-instance v6, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$1;

    invoke-direct {v6, p0}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$1;-><init>(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;)V

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;-><init>(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;Ljava/util/List;JLcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 81
    iget-boolean v1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->result:Z

    return v1
.end method
