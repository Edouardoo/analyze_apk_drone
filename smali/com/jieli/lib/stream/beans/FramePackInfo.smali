.class public Lcom/jieli/lib/stream/beans/FramePackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->g:[B

    return-object v0
.end method

.method public getDate()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->d:I

    return v0
.end method

.method public getFrameSize()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->b:I

    return v0
.end method

.method public getPackOffset()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->c:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->a:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->e:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->f:I

    return v0
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->g:[B

    .line 69
    return-void
.end method

.method public setDate(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->d:I

    .line 45
    return-void
.end method

.method public setFrameSize(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->b:I

    .line 29
    return-void
.end method

.method public setPackOffset(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->c:I

    .line 37
    return-void
.end method

.method public setSequence(I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->a:I

    .line 21
    return-void
.end method

.method public setTime(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->e:I

    .line 53
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->f:I

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frameSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/lib/stream/beans/FramePackInfo;->g:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
