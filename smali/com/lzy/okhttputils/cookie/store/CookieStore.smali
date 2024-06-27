.class public interface abstract Lcom/lzy/okhttputils/cookie/store/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"


# virtual methods
.method public abstract getAllCookie()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadCookies(Lokhttp3/HttpUrl;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAllCookie()Z
.end method

.method public abstract removeCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z
.end method

.method public abstract removeCookies(Lokhttp3/HttpUrl;)Z
.end method

.method public abstract saveCookies(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation
.end method
