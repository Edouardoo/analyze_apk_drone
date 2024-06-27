.class Lcom/jieli/lib/stream/tools/ParseHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/ParseHelper;->requestDescriptionText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V
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

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/jieli/lib/stream/tools/ParseHelper;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->d:Lcom/jieli/lib/stream/tools/ParseHelper;

    iput-object p2, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->a:Lcom/android/volley/RequestQueue;

    iput-object p3, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    iput-object p4, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    invoke-static {p1}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 208
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->d:Lcom/jieli/lib/stream/tools/ParseHelper;

    iget-object v1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Lcom/jieli/lib/stream/tools/ParseHelper;Landroid/content/Context;)V

    .line 212
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$1;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;->onResponse(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 199
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jieli/lib/stream/tools/ParseHelper$1;->a(Ljava/lang/String;)V

    return-void
.end method
