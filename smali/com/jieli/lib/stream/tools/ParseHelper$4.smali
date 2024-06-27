.class Lcom/jieli/lib/stream/tools/ParseHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/stream/tools/ParseHelper;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/stream/beans/MenuInfo;

.field final synthetic b:Lcom/android/volley/RequestQueue;

.field final synthetic c:Lcom/jieli/lib/stream/tools/ParseHelper;


# direct methods
.method constructor <init>(Lcom/jieli/lib/stream/tools/ParseHelper;Lcom/jieli/lib/stream/beans/MenuInfo;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/ParseHelper$4;->c:Lcom/jieli/lib/stream/tools/ParseHelper;

    iput-object p2, p0, Lcom/jieli/lib/stream/tools/ParseHelper$4;->a:Lcom/jieli/lib/stream/beans/MenuInfo;

    iput-object p3, p0, Lcom/jieli/lib/stream/tools/ParseHelper$4;->b:Lcom/android/volley/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Lcom/jieli/lib/stream/tools/ParseHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "---onResponse() returned: test.png"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$4;->a:Lcom/jieli/lib/stream/beans/MenuInfo;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/stream/beans/MenuInfo;->setStateBitmap(Landroid/graphics/Bitmap;)V

    .line 328
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$4;->b:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 329
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/ParseHelper$4;->b:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 323
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/jieli/lib/stream/tools/ParseHelper$4;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
