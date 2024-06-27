.class public Lcom/fh/util/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static instance:Lcom/fh/util/MyApplication;


# instance fields
.field public activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fh/util/MyApplication;->activityList:Ljava/util/List;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/fh/util/MyApplication;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/fh/util/MyApplication;->instance:Lcom/fh/util/MyApplication;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/fh/util/MyApplication;

    invoke-direct {v0}, Lcom/fh/util/MyApplication;-><init>()V

    sput-object v0, Lcom/fh/util/MyApplication;->instance:Lcom/fh/util/MyApplication;

    .line 23
    :cond_0
    sget-object v0, Lcom/fh/util/MyApplication;->instance:Lcom/fh/util/MyApplication;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/fh/util/MyApplication;->activityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 36
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 38
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 39
    return-void
.end method
