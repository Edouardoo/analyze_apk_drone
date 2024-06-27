.class public Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;
.super Ljava/lang/Object;
.source "SerializableHttpCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58765a0a7f563d0cL


# instance fields
.field private transient clientCookie:Lokhttp3/Cookie;

.field private final transient cookie:Lokhttp3/Cookie;


# direct methods
.method public constructor <init>(Lokhttp3/Cookie;)V
    .locals 0
    .param p1, "cookie"    # Lokhttp3/Cookie;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    .line 18
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 12
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 42
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 43
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    .line 44
    .local v2, "expiresAt":J
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 46
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v9

    .line 47
    .local v9, "secure":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    .line 48
    .local v5, "httpOnly":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v4

    .line 49
    .local v4, "hostOnly":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v8

    .line 50
    .local v8, "persistent":Z
    new-instance v0, Lokhttp3/Cookie$Builder;

    invoke-direct {v0}, Lokhttp3/Cookie$Builder;-><init>()V

    .line 51
    .local v0, "builder":Lokhttp3/Cookie$Builder;
    invoke-virtual {v0, v6}, Lokhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v10}, Lokhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v2, v3}, Lokhttp3/Cookie$Builder;->expiresAt(J)Lokhttp3/Cookie$Builder;

    move-result-object v0

    .line 54
    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Lokhttp3/Cookie$Builder;->hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v0

    .line 55
    :goto_0
    invoke-virtual {v0, v7}, Lokhttp3/Cookie$Builder;->path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v0

    .line 56
    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lokhttp3/Cookie$Builder;->secure()Lokhttp3/Cookie$Builder;

    move-result-object v0

    .line 57
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lokhttp3/Cookie$Builder;->httpOnly()Lokhttp3/Cookie$Builder;

    move-result-object v0

    .line 58
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Cookie$Builder;->build()Lokhttp3/Cookie;

    move-result-object v11

    iput-object v11, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->clientCookie:Lokhttp3/Cookie;

    .line 59
    return-void

    .line 54
    :cond_2
    invoke-virtual {v0, v1}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 32
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->secure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 35
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->httpOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 36
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 37
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->persistent()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCookie()Lokhttp3/Cookie;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->cookie:Lokhttp3/Cookie;

    .line 22
    .local v0, "bestCookie":Lokhttp3/Cookie;
    iget-object v1, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->clientCookie:Lokhttp3/Cookie;

    if-eqz v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/store/SerializableHttpCookie;->clientCookie:Lokhttp3/Cookie;

    .line 25
    :cond_0
    return-object v0
.end method
