.class Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$1;
.super Ljava/lang/Object;
.source "OuterCheckerImpl.java"

# interfaces
.implements Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->realCheck(Ljava/util/List;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;


# direct methods
.method constructor <init>(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$1;->this$0:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 1
    .param p1, "ok"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$1;->this$0:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;

    invoke-static {v0, p1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->access$002(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;Z)Z

    .line 77
    return-void
.end method
