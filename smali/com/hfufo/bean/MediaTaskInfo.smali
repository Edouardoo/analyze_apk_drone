.class public Lcom/hfufo/bean/MediaTaskInfo;
.super Ljava/lang/Object;
.source "MediaTaskInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private info:Lcom/hfufo/bean/FileInfo;

.field private op:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/hfufo/bean/FileInfo;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/hfufo/bean/MediaTaskInfo;->info:Lcom/hfufo/bean/FileInfo;

    return-object v0
.end method

.method public getOp()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/hfufo/bean/MediaTaskInfo;->op:I

    return v0
.end method

.method public setInfo(Lcom/hfufo/bean/FileInfo;)Lcom/hfufo/bean/MediaTaskInfo;
    .locals 0
    .param p1, "info"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/hfufo/bean/MediaTaskInfo;->info:Lcom/hfufo/bean/FileInfo;

    .line 20
    return-object p0
.end method

.method public setOp(I)Lcom/hfufo/bean/MediaTaskInfo;
    .locals 0
    .param p1, "op"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/hfufo/bean/MediaTaskInfo;->op:I

    .line 29
    return-object p0
.end method
