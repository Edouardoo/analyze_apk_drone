.class Lcom/jieli/lib/stream/tools/ParseHelper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/ParseHelper;->requestCaptureText(Landroid/content/Context;ILcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/RequestQueue;

.field final synthetic b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

.field final synthetic c:I

.field final synthetic d:Lcom/jieli/lib/stream/tools/ParseHelper;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;I)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->d:Lcom/jieli/lib/stream/tools/ParseHelper;

    iput-object p2, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->a:Lcom/android/volley/RequestQueue;

    iput-object p3, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    iput p4, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 618
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 619
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 621
    const/4 v0, 0x0

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============Capture fileList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 625
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->d:Lcom/jieli/lib/stream/tools/ParseHelper;

    iget v2, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->c:I

    invoke-static {v1, v0, v2}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Lcom/jieli/lib/stream/tools/ParseHelper;Ljava/lang/String;I)V

    .line 629
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$8;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;->onResponse(Z)V

    .line 631
    :cond_1
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 614
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jieli/lib/stream/tools/ParseHelper$8;->a(Ljava/lang/String;)V

    return-void
.end method
