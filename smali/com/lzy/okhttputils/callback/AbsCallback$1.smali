.class final Lcom/lzy/okhttputils/callback/AbsCallback$1;
.super Lcom/lzy/okhttputils/callback/AbsCallback;
.source "AbsCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttputils/callback/AbsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lzy/okhttputils/callback/AbsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ZLjava/lang/Object;Lokhttp3/Request;Lokhttp3/Response;)V
    .locals 0
    .param p1, "isFromCache"    # Z
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "request"    # Lokhttp3/Request;
    .param p4, "response"    # Lokhttp3/Response;

    .prologue
    .line 72
    return-void
.end method

.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/callback/AbsCallback$1;->parseNetworkResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public parseNetworkResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    return-object p1
.end method
