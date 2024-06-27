.class Lcom/jieli/lib/stream/tools/ParseHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/ParseHelper;->requestVideoInfoText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V
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

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/jieli/lib/stream/tools/ParseHelper;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->d:Lcom/jieli/lib/stream/tools/ParseHelper;

    iput-object p2, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->a:Lcom/android/volley/RequestQueue;

    iput-object p3, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    iput-object p4, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 378
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 380
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================== fileList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->c:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_0
    new-instance v1, Lcom/jieli/lib/stream/tools/ParseHelper$a;

    iget-object v2, p0, Lcom/jieli/lib/stream/tools/ParseHelper$6;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    invoke-direct {v1, v2, p1, v0}, Lcom/jieli/lib/stream/tools/ParseHelper$a;-><init>(Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/ParseHelper$a;->start()V

    .line 393
    :cond_1
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 373
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jieli/lib/stream/tools/ParseHelper$6;->a(Ljava/lang/String;)V

    return-void
.end method
