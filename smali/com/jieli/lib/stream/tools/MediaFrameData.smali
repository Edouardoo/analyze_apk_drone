.class public Lcom/jieli/lib/stream/tools/MediaFrameData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J

.field private e:Z

.field private f:[B


# direct methods
.method public constructor <init>(ZJJII[B)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p2, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->d:J

    .line 16
    iput-wide p4, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->c:J

    .line 17
    iput p6, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->b:I

    .line 18
    iput p7, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->a:I

    .line 19
    iput-object p8, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->f:[B

    .line 20
    iput-boolean p1, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->e:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getBufferTs()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->d:J

    return-wide v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->f:[B

    return-object v0
.end method

.method public getCurrentTs()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->c:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->b:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->a:I

    return v0
.end method

.method public hasSecMoreBytes(J)Z
    .locals 5

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->d:J

    iget-wide v2, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->c:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEof()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->e:Z

    return v0
.end method

.method public setBufferTs(J)V
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->d:J

    .line 37
    return-void
.end method

.method public setBytes([B)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->f:[B

    .line 41
    return-void
.end method

.method public setCurrentTs(J)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->c:J

    .line 33
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->b:I

    .line 29
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/jieli/lib/stream/tools/MediaFrameData;->a:I

    .line 25
    return-void
.end method
