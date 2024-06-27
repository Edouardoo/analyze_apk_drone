.class public Lcom/hfufo/bean/DeviceDesc$AppListBean;
.super Ljava/lang/Object;
.source "DeviceDesc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/bean/DeviceDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListBean"
.end annotation


# instance fields
.field private match_android_ver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private match_ios_ver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatch_android_ver()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc$AppListBean;->match_android_ver:Ljava/util/List;

    return-object v0
.end method

.method public getMatch_ios_ver()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/hfufo/bean/DeviceDesc$AppListBean;->match_ios_ver:Ljava/util/List;

    return-object v0
.end method

.method public setMatch_android_ver(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "match_android_ver":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc$AppListBean;->match_android_ver:Ljava/util/List;

    .line 257
    return-void
.end method

.method public setMatch_ios_ver(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "match_ios_ver":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/hfufo/bean/DeviceDesc$AppListBean;->match_ios_ver:Ljava/util/List;

    .line 265
    return-void
.end method
