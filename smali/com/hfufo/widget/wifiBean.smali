.class public Lcom/hfufo/widget/wifiBean;
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
        "Lcom/hfufo/widget/wifiBean;",
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
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/hfufo/widget/wifiBean;)I
    .locals 3
    .param p1, "wifi"    # Lcom/hfufo/widget/wifiBean;

    .prologue
    .line 33
    iget v0, p0, Lcom/hfufo/widget/wifiBean;->level:I

    .line 34
    .local v0, "level1":I
    iget v1, p1, Lcom/hfufo/widget/wifiBean;->level:I

    .line 35
    .local v1, "level2":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lcom/hfufo/widget/wifiBean;

    invoke-virtual {p0, p1}, Lcom/hfufo/widget/wifiBean;->compareTo(Lcom/hfufo/widget/wifiBean;)I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/hfufo/widget/wifiBean;->level:I

    return v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/hfufo/widget/wifiBean;->state:Z

    return v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/hfufo/widget/wifiBean;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "leve"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/hfufo/widget/wifiBean;->level:I

    .line 21
    return-void
.end method

.method public setState(Z)V
    .locals 0
    .param p1, "sta"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/hfufo/widget/wifiBean;->state:Z

    .line 27
    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifissid"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/hfufo/widget/wifiBean;->wifiSSID:Ljava/lang/String;

    .line 15
    return-void
.end method
