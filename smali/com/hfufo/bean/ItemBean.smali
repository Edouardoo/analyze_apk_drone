.class public Lcom/hfufo/bean/ItemBean;
.super Ljava/lang/Object;
.source "ItemBean.java"


# instance fields
.field private data:Ljava/lang/String;

.field private infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/hfufo/bean/ItemBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hfufo/bean/ItemBean;->infoList:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/hfufo/bean/ItemBean;->data:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/hfufo/bean/FileInfo;>;"
    iput-object p1, p0, Lcom/hfufo/bean/ItemBean;->infoList:Ljava/util/List;

    .line 27
    return-void
.end method
