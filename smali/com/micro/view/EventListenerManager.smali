.class public Lcom/micro/view/EventListenerManager;
.super Ljava/lang/Object;
.source "EventListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micro/view/EventListenerManager$DynamicHandler;
    }
.end annotation


# static fields
.field private static final listenerCache:Lcom/micro/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/micro/util/DoubleKeyValueMap",
            "<",
            "Lcom/micro/view/ViewInjectInfo;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/micro/util/DoubleKeyValueMap;

    invoke-direct {v0}, Lcom/micro/util/DoubleKeyValueMap;-><init>()V

    sput-object v0, Lcom/micro/view/EventListenerManager;->listenerCache:Lcom/micro/util/DoubleKeyValueMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static addEventMethod(Lcom/micro/view/ViewFinder;Lcom/micro/view/ViewInjectInfo;Ljava/lang/annotation/Annotation;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 14
    .param p0, "finder"    # Lcom/micro/view/ViewFinder;
    .param p1, "info"    # Lcom/micro/view/ViewInjectInfo;
    .param p2, "eventAnnotation"    # Ljava/lang/annotation/Annotation;
    .param p3, "handler"    # Ljava/lang/Object;
    .param p4, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/micro/view/ViewFinder;->findViewByInfo(Lcom/micro/view/ViewInjectInfo;)Landroid/view/View;

    move-result-object v10

    .line 37
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_2

    .line 38
    invoke-interface/range {p2 .. p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lcom/micro/view/annotation/event/EventBase;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/micro/view/annotation/event/EventBase;

    .line 39
    .local v4, "eventBase":Lcom/micro/view/annotation/event/EventBase;
    invoke-interface {v4}, Lcom/micro/view/annotation/event/EventBase;->listenerType()Ljava/lang/Class;

    move-result-object v7

    .line 40
    .local v7, "listenerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v4}, Lcom/micro/view/annotation/event/EventBase;->listenerSetter()Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "listenerSetter":Ljava/lang/String;
    invoke-interface {v4}, Lcom/micro/view/annotation/event/EventBase;->methodName()Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "methodName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 44
    .local v1, "addNewMethod":Z
    sget-object v11, Lcom/micro/view/EventListenerManager;->listenerCache:Lcom/micro/util/DoubleKeyValueMap;

    invoke-virtual {v11, p1, v7}, Lcom/micro/util/DoubleKeyValueMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 45
    .local v5, "listener":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 46
    .local v2, "dynamicHandler":Lcom/micro/view/EventListenerManager$DynamicHandler;
    if-eqz v5, :cond_0

    .line 47
    invoke-static {v5}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    .end local v2    # "dynamicHandler":Lcom/micro/view/EventListenerManager$DynamicHandler;
    check-cast v2, Lcom/micro/view/EventListenerManager$DynamicHandler;

    .line 48
    .restart local v2    # "dynamicHandler":Lcom/micro/view/EventListenerManager$DynamicHandler;
    invoke-virtual {v2}, Lcom/micro/view/EventListenerManager$DynamicHandler;->getHandler()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    move-object/from16 v0, p4

    invoke-virtual {v2, v8, v0}, Lcom/micro/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 53
    :cond_0
    if-nez v1, :cond_1

    .line 54
    new-instance v2, Lcom/micro/view/EventListenerManager$DynamicHandler;

    .end local v2    # "dynamicHandler":Lcom/micro/view/EventListenerManager$DynamicHandler;
    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/micro/view/EventListenerManager$DynamicHandler;-><init>(Ljava/lang/Object;)V

    .line 55
    .restart local v2    # "dynamicHandler":Lcom/micro/view/EventListenerManager$DynamicHandler;
    move-object/from16 v0, p4

    invoke-virtual {v2, v8, v0}, Lcom/micro/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 57
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 56
    invoke-static {v11, v12, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    .line 61
    sget-object v11, Lcom/micro/view/EventListenerManager;->listenerCache:Lcom/micro/util/DoubleKeyValueMap;

    invoke-virtual {v11, p1, v7, v5}, Lcom/micro/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-virtual {v11, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 65
    .local v9, "setEventListenerMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "addNewMethod":Z
    .end local v2    # "dynamicHandler":Lcom/micro/view/EventListenerManager$DynamicHandler;
    .end local v4    # "eventBase":Lcom/micro/view/annotation/event/EventBase;
    .end local v5    # "listener":Ljava/lang/Object;
    .end local v6    # "listenerSetter":Ljava/lang/String;
    .end local v7    # "listenerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "setEventListenerMethod":Ljava/lang/reflect/Method;
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/micro/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
