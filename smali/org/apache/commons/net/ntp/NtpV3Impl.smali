.class public Lorg/apache/commons/net/ntp/NtpV3Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/ntp/NtpV3Packet;


# static fields
.field private static final LI_INDEX:I = 0x0

.field private static final LI_SHIFT:I = 0x6

.field private static final MODE_INDEX:I = 0x0

.field private static final MODE_SHIFT:I = 0x0

.field private static final ORIGINATE_TIMESTAMP_INDEX:I = 0x18

.field private static final POLL_INDEX:I = 0x2

.field private static final PRECISION_INDEX:I = 0x3

.field private static final RECEIVE_TIMESTAMP_INDEX:I = 0x20

.field private static final REFERENCE_ID_INDEX:I = 0xc

.field private static final REFERENCE_TIMESTAMP_INDEX:I = 0x10

.field private static final ROOT_DELAY_INDEX:I = 0x4

.field private static final ROOT_DISPERSION_INDEX:I = 0x8

.field private static final STRATUM_INDEX:I = 0x1

.field private static final TRANSMIT_TIMESTAMP_INDEX:I = 0x28

.field private static final VERSION_INDEX:I = 0x0

.field private static final VERSION_SHIFT:I = 0x3


# instance fields
.field private final buf:[B

.field private volatile dp:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 62
    return-void
.end method

.method private getInt(I)I
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v2, p1, 0x3

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    or-int/2addr v0, v1

    .line 510
    return v0
.end method

.method private getLong(I)J
    .locals 5

    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x2

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x4

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x5

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x6

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x7

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 553
    return-wide v0
.end method

.method private getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 4

    .prologue
    .line 535
    new-instance v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-direct {p0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/net/ntp/TimeStamp;-><init>(J)V

    return-object v0
.end method

.method private idAsHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getReferenceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private idAsIPAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/16 v2, 0xc

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/16 v2, 0xf

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private idAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 378
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, v0, 0xc

    aget-byte v2, v2, v3

    int-to-char v2, v2

    .line 379
    if-nez v2, :cond_1

    .line 384
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setInt(II)V
    .locals 4

    .prologue
    .line 521
    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_0

    .line 522
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int v2, p1, v0

    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 523
    ushr-int/lit8 p2, p2, 0x8

    .line 521
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 525
    :cond_0
    return-void
.end method

.method private setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 8

    .prologue
    .line 564
    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    .line 567
    :goto_0
    const/4 v2, 0x7

    move-wide v4, v0

    :goto_1
    if-ltz v2, :cond_1

    .line 568
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int v1, p1, v2

    const-wide/16 v6, 0xff

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 569
    const/16 v0, 0x8

    ushr-long/2addr v4, v0

    .line 567
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 564
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v0

    goto :goto_0

    .line 572
    :cond_1
    return-void
.end method

.method protected static final ui(B)I
    .locals 1

    .prologue
    .line 661
    and-int/lit16 v0, p0, 0xff

    .line 662
    return v0
.end method

.method protected static final ul(B)J
    .locals 2

    .prologue
    .line 675
    and-int/lit16 v0, p0, 0xff

    int-to-long v0, v0

    .line 676
    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 628
    if-ne p0, p1, :cond_0

    .line 629
    const/4 v0, 0x1

    .line 635
    :goto_0
    return v0

    .line 631
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 632
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 634
    :cond_2
    check-cast p1, Lorg/apache/commons/net/ntp/NtpV3Impl;

    .line 635
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    iget-object v1, p1, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getDatagramPacket()Ljava/net/DatagramPacket;
    .locals 3

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;

    .line 584
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLeapIndicator()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getMode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpUtils;->getModeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginateTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 1

    .prologue
    .line 437
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public getPoll()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public getPrecision()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    return v0
.end method

.method public getReceiveTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 1

    .prologue
    .line 473
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceId()I
    .locals 1

    .prologue
    .line 328
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getReferenceIdString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 342
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getVersion()I

    move-result v0

    .line 343
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getStratum()I

    move-result v1

    .line 344
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_3

    .line 345
    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 346
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsString()Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    .line 349
    :cond_2
    if-ne v0, v3, :cond_3

    .line 350
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsHex()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_3
    const/4 v0, 0x2

    if-lt v1, v0, :cond_4

    .line 357
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsHex()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getReferenceTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 1

    .prologue
    .line 449
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public getRootDelay()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getRootDelayInMillisDouble()D
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDelay()I

    move-result v0

    int-to-double v0, v0

    .line 257
    const-wide v2, 0x4050624dd2f1a9fcL    # 65.536

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getRootDispersion()I
    .locals 1

    .prologue
    .line 267
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getRootDispersionInMillis()J
    .locals 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDispersion()I

    move-result v0

    int-to-long v0, v0

    .line 291
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x10000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getRootDispersionInMillisDouble()D
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDispersion()I

    move-result v0

    int-to-double v0, v0

    .line 304
    const-wide v2, 0x4050624dd2f1a9fcL    # 65.536

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getStratum()I
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    return v0
.end method

.method public getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 1

    .prologue
    .line 401
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    const-string v0, "NTP"

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public setDatagramPacket(Ljava/net/DatagramPacket;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 599
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 601
    :cond_1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 602
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    .line 603
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    array-length v2, v2

    if-le v0, v2, :cond_2

    .line 604
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    array-length v0, v0

    .line 606
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v1

    .line 608
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 609
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    .line 610
    if-lez v0, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 611
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    invoke-virtual {v1, v0}, Ljava/net/DatagramPacket;->setData([B)V

    .line 612
    return-void

    .line 610
    :cond_3
    const/16 v0, 0x7b

    goto :goto_0
.end method

.method public setLeapIndicator(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0x3f

    and-int/lit8 v2, p1, 0x3

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 122
    return-void
.end method

.method public setMode(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xf8

    and-int/lit8 v2, p1, 0x7

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 96
    return-void
.end method

.method public setOriginateTimeStamp(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 1

    .prologue
    .line 425
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 426
    return-void
.end method

.method public setPoll(I)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 148
    return-void
.end method

.method public setPrecision(I)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 172
    return-void
.end method

.method public setReceiveTimeStamp(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 1

    .prologue
    .line 485
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 486
    return-void
.end method

.method public setReferenceId(I)V
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setInt(II)V

    .line 317
    return-void
.end method

.method public setReferenceTime(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 1

    .prologue
    .line 461
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 462
    return-void
.end method

.method public setRootDelay(I)V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setInt(II)V

    .line 243
    return-void
.end method

.method public setRootDispersion(I)V
    .locals 1

    .prologue
    .line 279
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setInt(II)V

    .line 280
    return-void
.end method

.method public setStratum(I)V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 218
    return-void
.end method

.method public setTransmitTime(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 1

    .prologue
    .line 413
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 414
    return-void
.end method

.method public setVersion(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xc7

    and-int/lit8 v2, p1, 0x7

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 194
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getPoll()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", precision:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getPrecision()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDelay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dispersion(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDispersionInMillisDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getReferenceIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xmitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->toDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
