.class Lcom/task/DebugHelper$3;
.super Ljava/lang/Object;
.source "DebugHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/DebugHelper;->notifyErrorEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/DebugHelper;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/task/DebugHelper;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/DebugHelper;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/task/DebugHelper$3;->this$0:Lcom/task/DebugHelper;

    iput p2, p0, Lcom/task/DebugHelper$3;->val$code:I

    iput-object p3, p0, Lcom/task/DebugHelper$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 152
    iget-object v2, p0, Lcom/task/DebugHelper$3;->this$0:Lcom/task/DebugHelper;

    invoke-static {v2}, Lcom/task/DebugHelper;->access$200(Lcom/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/task/DebugHelper$3;->this$0:Lcom/task/DebugHelper;

    invoke-static {v2}, Lcom/task/DebugHelper;->access$200(Lcom/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 154
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

    .line 155
    .local v0, "listener":Lcom/task/IDebugListener;
    iget v3, p0, Lcom/task/DebugHelper$3;->val$code:I

    iget-object v4, p0, Lcom/task/DebugHelper$3;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcom/task/IDebugListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v0    # "listener":Lcom/task/IDebugListener;
    .end local v1    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/task/IDebugListener;>;"
    :cond_0
    return-void
.end method
