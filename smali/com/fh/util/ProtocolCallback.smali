.class public Lcom/fh/util/ProtocolCallback;
.super Ljava/lang/Object;
.source "ProtocolCallback.java"


# static fields
.field private static final PKG_LEN:I = 0x1a

.field private static final head:B = 0x77t

.field private static final keep1:B = 0x0t

.field private static final keep2:B = 0x0t

.field private static final tail:B = -0x67t


# instance fields
.field private ack:B

.field private check:I

.field private height:S

.field private lat:J

.field private lng:J

.field private speed:S

.field private voltage:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-byte v0, p0, Lcom/fh/util/ProtocolCallback;->ack:B

    .line 15
    iput-byte v0, p0, Lcom/fh/util/ProtocolCallback;->voltage:B

    .line 16
    iput-short v0, p0, Lcom/fh/util/ProtocolCallback;->height:S

    .line 17
    iput-short v0, p0, Lcom/fh/util/ProtocolCallback;->speed:S

    .line 18
    iput-wide v2, p0, Lcom/fh/util/ProtocolCallback;->lng:J

    .line 19
    iput-wide v2, p0, Lcom/fh/util/ProtocolCallback;->lat:J

    .line 22
    iput v0, p0, Lcom/fh/util/ProtocolCallback;->check:I

    return-void
.end method


# virtual methods
.method public getAck()B
    .locals 1

    .prologue
    .line 44
    iget-byte v0, p0, Lcom/fh/util/ProtocolCallback;->ack:B

    return v0
.end method

.method public getHeight()S
    .locals 1

    .prologue
    .line 52
    iget-short v0, p0, Lcom/fh/util/ProtocolCallback;->height:S

    return v0
.end method

.method public getLat()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/fh/util/ProtocolCallback;->lat:J

    return-wide v0
.end method

.method public getLng()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/fh/util/ProtocolCallback;->lng:J

    return-wide v0
.end method

.method public getSpeed()S
    .locals 1

    .prologue
    .line 56
    iget-short v0, p0, Lcom/fh/util/ProtocolCallback;->speed:S

    return v0
.end method

.method public getVoltage()B
    .locals 1

    .prologue
    .line 48
    iget-byte v0, p0, Lcom/fh/util/ProtocolCallback;->voltage:B

    return v0
.end method

.method public unPackag([B)V
    .locals 5
    .param p1, "buf"    # [B

    .prologue
    const/16 v4, 0xf

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 28
    const-string v1, "buf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buf["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    array-length v1, p1

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    .line 42
    :goto_1
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/fh/util/ProtocolCallback;->ack:B

    .line 35
    const/16 v1, 0x64

    iput-byte v1, p0, Lcom/fh/util/ProtocolCallback;->voltage:B

    .line 36
    const/16 v1, -0x19

    iput-short v1, p0, Lcom/fh/util/ProtocolCallback;->height:S

    .line 37
    const/16 v1, 0x504

    iput-short v1, p0, Lcom/fh/util/ProtocolCallback;->speed:S

    .line 38
    const/4 v1, 0x7

    invoke-static {p1, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/fh/util/MathUtils;->getLong([B)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fh/util/ProtocolCallback;->lng:J

    .line 39
    const/16 v1, 0x17

    invoke-static {p1, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/fh/util/MathUtils;->getLong([B)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fh/util/ProtocolCallback;->lat:J

    .line 40
    const-string v1, "CB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/fh/util/ProtocolCallback;->voltage:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/fh/util/ProtocolCallback;->height:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/fh/util/ProtocolCallback;->speed:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
