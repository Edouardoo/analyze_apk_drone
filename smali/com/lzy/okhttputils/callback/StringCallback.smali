.class public abstract Lcom/lzy/okhttputils/callback/StringCallback;
.super Lcom/lzy/okhttputils/callback/AbsCallback;
.source "StringCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/callback/AbsCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lzy/okhttputils/callback/AbsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/callback/StringCallback;->parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
