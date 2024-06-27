.class final Lcom/jieli/lib/stream/tools/CommandHub$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/CommandHub;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 814
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->l()Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->l()Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;->onConnected()V

    .line 817
    :cond_0
    return-void
.end method
