.class Lcom/task/UDPClientGPS$1;
.super Ljava/lang/Object;
.source "UDPClientGPS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/task/UDPClientGPS;->notifyGpsStart(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/task/UDPClientGPS;


# direct methods
.method constructor <init>(Lcom/task/UDPClientGPS;)V
    .locals 0
    .param p1, "this$0"    # Lcom/task/UDPClientGPS;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/task/UDPClientGPS$1;->this$0:Lcom/task/UDPClientGPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/task/UDPClientGPS$1;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v1}, Lcom/task/UDPClientGPS;->access$200(Lcom/task/UDPClientGPS;)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/task/UDPClientGPS$1;->this$0:Lcom/task/UDPClientGPS;

    invoke-static {v1}, Lcom/task/UDPClientGPS;->access$200(Lcom/task/UDPClientGPS;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 182
    .local v0, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/task/IGpsListener;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/task/IGpsListener;

    goto :goto_0

    .line 186
    .end local v0    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/task/IGpsListener;>;"
    :cond_0
    return-void
.end method
