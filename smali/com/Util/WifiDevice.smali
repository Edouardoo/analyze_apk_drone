.class public Lcom/Util/WifiDevice;
.super Ljava/lang/Object;
.source "WifiDevice.java"


# instance fields
.field private level:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/Util/WifiDevice;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/Util/WifiDevice;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "_level"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/Util/WifiDevice;->level:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "_ssid"    # Ljava/lang/String;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/Util/WifiDevice;->ssid:Ljava/lang/String;

    .line 10
    return-void
.end method
