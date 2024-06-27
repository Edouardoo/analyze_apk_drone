.class public Lcom/micro/util/CommandManager;
.super Ljava/lang/Object;
.source "CommandManager.java"


# static fields
.field private static instance:Lcom/micro/util/CommandManager;

.field private static final mDeviceStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/micro/util/CommandManager;->instance:Lcom/micro/util/CommandManager;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/micro/util/CommandManager;->mDeviceStatus:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/micro/util/CommandManager;->tag:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/micro/util/CommandManager;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/micro/util/CommandManager;->instance:Lcom/micro/util/CommandManager;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/micro/util/CommandManager;

    invoke-direct {v0}, Lcom/micro/util/CommandManager;-><init>()V

    sput-object v0, Lcom/micro/util/CommandManager;->instance:Lcom/micro/util/CommandManager;

    .line 16
    :cond_0
    sget-object v0, Lcom/micro/util/CommandManager;->instance:Lcom/micro/util/CommandManager;

    return-object v0
.end method


# virtual methods
.method public clearDeviceStatus()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/micro/util/CommandManager;->mDeviceStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 34
    return-void
.end method

.method public getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cmdNumber"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lcom/micro/util/CommandManager;->mDeviceStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "-3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/micro/util/CommandManager;->mDeviceStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
