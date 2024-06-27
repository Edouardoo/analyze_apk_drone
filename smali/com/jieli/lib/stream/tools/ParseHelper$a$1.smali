.class Lcom/jieli/lib/stream/tools/ParseHelper$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/ParseHelper$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/stream/tools/ParseHelper$a;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/ParseHelper$a;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a$1;->a:Lcom/jieli/lib/stream/tools/ParseHelper$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$a$1;->a:Lcom/jieli/lib/stream/tools/ParseHelper$a;

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/ParseHelper$a;->a(Lcom/jieli/lib/stream/tools/ParseHelper$a;)Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;->onResponse(Z)V

    .line 441
    return-void
.end method
