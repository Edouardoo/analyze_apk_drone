.class Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/KeyManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientKeyStore"
.end annotation


# instance fields
.field private final certChain:[Ljava/security/cert/X509Certificate;

.field private final key:Ljava/security/PrivateKey;

.field private final keyAlias:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    iput-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->key:Ljava/security/PrivateKey;

    .line 181
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 182
    array-length v0, v2

    new-array v3, v0, [Ljava/security/cert/X509Certificate;

    .line 183
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 184
    aget-object v0, v2, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v3, v1

    .line 183
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 186
    :cond_0
    iput-object v3, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->certChain:[Ljava/security/cert/X509Certificate;

    .line 187
    return-void
.end method


# virtual methods
.method final getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    return-object v0
.end method

.method final getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->certChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method final getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->key:Ljava/security/PrivateKey;

    return-object v0
.end method
