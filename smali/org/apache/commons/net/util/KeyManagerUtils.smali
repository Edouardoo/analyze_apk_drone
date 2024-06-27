.class public final Lorg/apache/commons/net/util/KeyManagerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;,
        Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;
    }
.end annotation


# static fields
.field private static final DEFAULT_STORE_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/KeyManagerUtils;->DEFAULT_STORE_TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static createClientKeyManager(Ljava/io/File;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lorg/apache/commons/net/util/KeyManagerUtils;->DEFAULT_STORE_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p1}, Lorg/apache/commons/net/util/KeyManagerUtils;->createClientKeyManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public static createClientKeyManager(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lorg/apache/commons/net/util/KeyManagerUtils;->DEFAULT_STORE_TYPE:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, p1}, Lorg/apache/commons/net/util/KeyManagerUtils;->createClientKeyManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public static createClientKeyManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p0, p1, p2}, Lorg/apache/commons/net/util/KeyManagerUtils;->loadStore(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 108
    invoke-static {v0, p3, p4}, Lorg/apache/commons/net/util/KeyManagerUtils;->createClientKeyManager(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public static createClientKeyManager(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;-><init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v1, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;-><init>(Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;)V

    return-object v1

    .line 86
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/net/util/KeyManagerUtils;->findAlias(Ljava/security/KeyStore;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static findAlias(Ljava/security/KeyStore;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 162
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    return-object v0

    .line 168
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Cannot find a private key entry"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadStore(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 150
    const/4 v2, 0x0

    .line 152
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 157
    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
