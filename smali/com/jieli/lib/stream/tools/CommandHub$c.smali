.class Lcom/jieli/lib/stream/tools/CommandHub$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/stream/tools/CommandHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$c;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/lib/stream/tools/CommandHub$1;)V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/jieli/lib/stream/tools/CommandHub$c;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 673
    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$c;->a:Z

    .line 674
    invoke-static {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->b(I)I

    .line 675
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 679
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$c;->a:Z

    .line 682
    invoke-static {v3}, Lcom/jieli/lib/stream/tools/CommandHub;->b(I)I

    .line 684
    const-string v0, "CTP:9999 9993 0000 "

    .line 685
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/CommandHub$c;->a:Z

    if-eqz v0, :cond_1

    .line 686
    const-string v0, "9993"

    const-string v1, "CTP:9999 9993 0000 "

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 688
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 689
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeartbeatTask: mTimeoutCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->h()I

    .line 691
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->g()I

    move-result v0

    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->i()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 692
    iput-boolean v3, p0, Lcom/jieli/lib/stream/tools/CommandHub$c;->a:Z

    .line 693
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/CommandHub;->a(I)V

    .line 697
    :cond_1
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeartbeatTask ending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-void
.end method
