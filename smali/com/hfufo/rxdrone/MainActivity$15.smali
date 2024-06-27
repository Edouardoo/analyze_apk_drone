.class Lcom/hfufo/rxdrone/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 2241
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$15;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2244
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$15;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$2400(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->clearFlag1()V

    .line 2245
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$15;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$2400(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/Protocol1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->clearFlag2()V

    .line 2246
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$15;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$2500(Lcom/hfufo/rxdrone/MainActivity;)Lcom/fh/util/ProtocolOfQuanzhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fh/util/ProtocolOfQuanzhi;->clearFlag1()V

    .line 2247
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$15;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$700(Lcom/hfufo/rxdrone/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->is52(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2248
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$15;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$200(Lcom/hfufo/rxdrone/MainActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "068"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2249
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$15;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/MainActivity;->access$200(Lcom/hfufo/rxdrone/MainActivity;)Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "0129"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2253
    :cond_0
    return-void
.end method
