.class public Lcom/jieli/lib/stream/beans/DeviceVersionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidVersions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getAppTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getLocalAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getProductTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getServerAndroidVersions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public getServerFirmwareVersions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidVersions([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->f:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setAppTypes([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->e:[Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setFirmwareVersions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->g:Ljava/util/Map;

    .line 61
    return-void
.end method

.method public setLocalAndroidVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setProductTypes([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->d:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setServerAndroidVersions([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->i:[Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setServerFirmwareVersions([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/DeviceVersionInfo;->h:[Ljava/lang/String;

    .line 77
    return-void
.end method
