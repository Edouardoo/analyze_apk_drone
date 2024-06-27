.class public Lcom/jieli/lib/stream/beans/AVFrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[B

.field private c:I

.field private transient d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrame()[B
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/AVFrameInfo;->b:[B

    return-object v0
.end method

.method public getMilliseconds()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/jieli/lib/stream/beans/AVFrameInfo;->d:J

    return-wide v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/jieli/lib/stream/beans/AVFrameInfo;->c:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/jieli/lib/stream/beans/AVFrameInfo;->a:I

    return v0
.end method

.method public setFrame([B)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/AVFrameInfo;->b:[B

    .line 26
    return-void
.end method

.method public setMilliseconds(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/jieli/lib/stream/beans/AVFrameInfo;->d:J

    .line 42
    return-void
.end method

.method public setSequence(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/jieli/lib/stream/beans/AVFrameInfo;->c:I

    .line 34
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/jieli/lib/stream/beans/AVFrameInfo;->a:I

    .line 18
    return-void
.end method
