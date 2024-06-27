.class public abstract Lcom/lzy/okhttputils/callback/AbsCallback;
.super Ljava/lang/Object;
.source "AbsCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CALLBACK_DEFAULT:Lcom/lzy/okhttputils/callback/AbsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/lzy/okhttputils/callback/AbsCallback$1;

    invoke-direct {v0}, Lcom/lzy/okhttputils/callback/AbsCallback$1;-><init>()V

    sput-object v0, Lcom/lzy/okhttputils/callback/AbsCallback;->CALLBACK_DEFAULT:Lcom/lzy/okhttputils/callback/AbsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lcom/lzy/okhttputils/callback/AbsCallback;, "Lcom/lzy/okhttputils/callback/AbsCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadProgress(JJFJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "progress"    # F
    .param p6, "networkSpeed"    # J

    .prologue
    .line 61
    .local p0, "this":Lcom/lzy/okhttputils/callback/AbsCallback;, "Lcom/lzy/okhttputils/callback/AbsCallback<TT;>;"
    return-void
.end method

.method public onAfter(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "isFromCache"    # Z
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "call"    # Lokhttp3/Call;
    .param p4, "response"    # Lokhttp3/Response;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/lzy/okhttputils/callback/AbsCallback;, "Lcom/lzy/okhttputils/callback/AbsCallback<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onBefore(Lcom/lzy/okhttputils/request/BaseRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/lzy/okhttputils/request/BaseRequest;

    .prologue
    .line 24
    .local p0, "this":Lcom/lzy/okhttputils/callback/AbsCallback;, "Lcom/lzy/okhttputils/callback/AbsCallback<TT;>;"
    return-void
.end method

.method public onError(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "isFromCache"    # Z
    .param p2, "call"    # Lokhttp3/Call;
    .param p3, "response"    # Lokhttp3/Response;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    .local p0, "this":Lcom/lzy/okhttputils/callback/AbsCallback;, "Lcom/lzy/okhttputils/callback/AbsCallback<TT;>;"
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_0
    return-void
.end method

.method public abstract onResponse(ZLjava/lang/Object;Lokhttp3/Request;Lokhttp3/Response;)V
    .param p4    # Lokhttp3/Response;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;",
            "Lokhttp3/Request;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public upProgress(JJFJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "progress"    # F
    .param p6, "networkSpeed"    # J

    .prologue
    .line 50
    .local p0, "this":Lcom/lzy/okhttputils/callback/AbsCallback;, "Lcom/lzy/okhttputils/callback/AbsCallback<TT;>;"
    return-void
.end method
