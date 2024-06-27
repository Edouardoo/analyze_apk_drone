.class Lcom/task/DebugHelper$1;
.super Ljava/lang/Object;
.source "DebugHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/DebugHelper;->notifyDebugStart(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/DebugHelper;

.field final synthetic val$interval:I

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$len:I


# direct methods
.method constructor <init>(Lcom/task/DebugHelper;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/DebugHelper;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/task/DebugHelper$1;->this$0:Lcom/task/DebugHelper;

    iput-object p2, p0, Lcom/task/DebugHelper$1;->val$ip:Ljava/lang/String;

    iput p3, p0, Lcom/task/DebugHelper$1;->val$len:I

    iput p4, p0, Lcom/task/DebugHelper$1;->val$interval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 120
    iget-object v2, p0, Lcom/task/DebugHelper$1;->this$0:Lcom/task/DebugHelper;

    invoke-static {v2}, Lcom/task/DebugHelper;->access$200(Lcom/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/task/DebugHelper$1;->this$0:Lcom/task/DebugHelper;

    invoke-static {v2}, Lcom/task/DebugHelper;->access$200(Lcom/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 122
    .local v1, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/task/IDebugListener;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/task/IDebugListener;

    .line 123
    .local v0, "listener":Lcom/task/IDebugListener;
    iget-object v3, p0, Lcom/task/DebugHelper$1;->val$ip:Ljava/lang/String;

    iget v4, p0, Lcom/task/DebugHelper$1;->val$len:I

    iget v5, p0, Lcom/task/DebugHelper$1;->val$interval:I

    invoke-interface {v0, v3, v4, v5}, Lcom/task/IDebugListener;->onStartDebug(Ljava/lang/String;II)V

    goto :goto_0

    .line 126
    .end local v0    # "listener":Lcom/task/IDebugListener;
    .end local v1    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/task/IDebugListener;>;"
    :cond_0
    return-void
.end method
