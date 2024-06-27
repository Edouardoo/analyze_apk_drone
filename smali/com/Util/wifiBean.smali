.class public Lcom/Util/wifiBean;
.super Ljava/lang/Object;
.source "wifiBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/Util/wifiBean;",
        ">;"
    }
.end annotation


# instance fields
.field private level:I

.field private state:Z

.field private wifiName:Ljava/lang/String;

.field private wifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/Util/wifiBean;)I
    .locals 3
    .param p1, "wifi"    # Lcom/Util/wifiBean;

    .prologue
    .line 32
    iget v0, p0, Lcom/Util/wifiBean;->level:I

    .line 33
    .local v0, "level1":I
    iget v1, p1, Lcom/Util/wifiBean;->level:I

    .line 34
    .local v1, "level2":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/Util/wifiBean;

    invoke-virtual {p0, p1}, Lcom/Util/wifiBean;->compareTo(Lcom/Util/wifiBean;)I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/Util/wifiBean;->level:I

    return v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/Util/wifiBean;->state:Z

    return v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/Util/wifiBean;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "leve"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/Util/wifiBean;->level:I

    .line 20
    return-void
.end method

.method public setState(Z)V
    .locals 0
    .param p1, "sta"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/Util/wifiBean;->state:Z

    .line 26
    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifissid"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/Util/wifiBean;->wifiSSID:Ljava/lang/String;

    .line 14
    return-void
.end method
