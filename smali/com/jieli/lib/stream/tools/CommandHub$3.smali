.class final Lcom/jieli/lib/stream/tools/CommandHub$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/CommandHub;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 824
    iput p1, p0, Lcom/jieli/lib/stream/tools/CommandHub$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 827
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->l()Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 828
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->l()Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/tools/CommandHub$3;->a:I

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/tools/CommandHub$OnDeviceListener;->onError(I)V

    .line 830
    :cond_0
    return-void
.end method
