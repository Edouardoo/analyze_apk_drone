.class public Lorg/opencv/core/TermCriteria;
.super Ljava/lang/Object;
.source "TermCriteria.java"


# static fields
.field public static final COUNT:I = 0x1

.field public static final EPS:I = 0x2

.field public static final MAX_ITER:I = 0x1


# instance fields
.field public epsilon:D

.field public maxCount:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lorg/opencv/core/TermCriteria;-><init>(IID)V

    .line 44
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "maxCount"    # I
    .param p3, "epsilon"    # D

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/opencv/core/TermCriteria;->type:I

    .line 35
    iput p2, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    .line 36
    iput-wide p3, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    .line 37
    return-void
.end method

.method public constructor <init>([D)V
    .locals 0
    .param p1, "vals"    # [D

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lorg/opencv/core/TermCriteria;->set([D)V

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4
    invoke-virtual {p0}, Lorg/opencv/core/TermCriteria;->clone()Lorg/opencv/core/TermCriteria;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/TermCriteria;
    .locals 6

    .prologue
    .line 63
    new-instance v0, Lorg/opencv/core/TermCriteria;

    iget v1, p0, Lorg/opencv/core/TermCriteria;->type:I

    iget v2, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/opencv/core/TermCriteria;-><init>(IID)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    instance-of v3, p1, Lorg/opencv/core/TermCriteria;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 84
    check-cast v0, Lorg/opencv/core/TermCriteria;

    .line 85
    .local v0, "it":Lorg/opencv/core/TermCriteria;
    iget v3, p0, Lorg/opencv/core/TermCriteria;->type:I

    iget v4, v0, Lorg/opencv/core/TermCriteria;->type:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget v4, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    iget-wide v6, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    .line 68
    const/16 v0, 0x1f

    .line 69
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 71
    .local v1, "result":I
    iget v4, p0, Lorg/opencv/core/TermCriteria;->type:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 72
    .local v2, "temp":J
    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/lit8 v1, v4, 0x1f

    .line 73
    iget v4, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 74
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 75
    iget-wide v4, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 76
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 77
    return v1
.end method

.method public set([D)V
    .locals 8
    .param p1, "vals"    # [D

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 51
    if-eqz p1, :cond_3

    .line 52
    array-length v0, p1

    if-lez v0, :cond_1

    aget-wide v4, p1, v1

    double-to-int v0, v4

    :goto_0
    iput v0, p0, Lorg/opencv/core/TermCriteria;->type:I

    .line 53
    array-length v0, p1

    if-le v0, v6, :cond_0

    aget-wide v0, p1, v6

    double-to-int v1, v0

    :cond_0
    iput v1, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    .line 54
    array-length v0, p1

    if-le v0, v7, :cond_2

    aget-wide v0, p1, v7

    :goto_1
    iput-wide v0, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    .line 60
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 52
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 54
    goto :goto_1

    .line 56
    :cond_3
    iput v1, p0, Lorg/opencv/core/TermCriteria;->type:I

    .line 57
    iput v1, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    .line 58
    iput-wide v2, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/core/TermCriteria;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", epsilon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
