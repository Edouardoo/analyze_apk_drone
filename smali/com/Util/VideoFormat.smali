.class public Lcom/Util/VideoFormat;
.super Ljava/lang/Object;
.source "VideoFormat.java"


# instance fields
.field private data:[B

.field private type:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "_type"    # I
    .param p2, "_data"    # [B

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/Util/VideoFormat;->type:I

    .line 9
    iput-object p2, p0, Lcom/Util/VideoFormat;->data:[B

    .line 10
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/Util/VideoFormat;->data:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/Util/VideoFormat;->type:I

    return v0
.end method

.method public getVideoFormat()Lcom/Util/VideoFormat;
    .locals 0

    .prologue
    .line 31
    return-object p0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "_data"    # [B

    .prologue
    .line 17
    iput-object p1, p0, Lcom/Util/VideoFormat;->data:[B

    .line 18
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "_type"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/Util/VideoFormat;->type:I

    .line 15
    return-void
.end method

.method public setVideoFormat(I[B)V
    .locals 0
    .param p1, "_type"    # I
    .param p2, "_data"    # [B

    .prologue
    .line 27
    iput p1, p0, Lcom/Util/VideoFormat;->type:I

    .line 28
    iput-object p2, p0, Lcom/Util/VideoFormat;->data:[B

    .line 29
    return-void
.end method
