.class Lcom/jieli/lib/stream/tools/ParseHelper$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/ParseHelper;->requestDeviceVersionText(Landroid/content/Context;Ljava/lang/String;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V
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

.field final synthetic c:Lcom/jieli/lib/stream/tools/ParseHelper;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/android/volley/RequestQueue;Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$10;->c:Lcom/jieli/lib/stream/tools/ParseHelper;

    iput-object p2, p0, Lcom/jieli/lib/stream/tools/ParseHelper$10;->a:Lcom/android/volley/RequestQueue;

    iput-object p3, p0, Lcom/jieli/lib/stream/tools/ParseHelper$10;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$10;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 945
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$10;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 947
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============deviceVersion message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-static {p1}, Lcom/jieli/lib/stream/tools/ParseHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 949
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$10;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    if-eqz v0, :cond_0

    .line 950
    invoke-static {p1}, Lcom/jieli/lib/stream/tools/ParseHelper;->parseDeviceVersionText(Ljava/lang/String;)Lcom/jieli/lib/stream/beans/DeviceVersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/lib/stream/tools/ParseHelper;->a(Lcom/jieli/lib/stream/beans/DeviceVersionInfo;)Lcom/jieli/lib/stream/beans/DeviceVersionInfo;

    .line 951
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$10;->b:Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jieli/lib/stream/tools/ParseHelper$ResponseListener;->onResponse(Z)V

    .line 953
    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 940
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jieli/lib/stream/tools/ParseHelper$10;->a(Ljava/lang/String;)V

    return-void
.end method
