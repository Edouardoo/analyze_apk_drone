.class public Lcom/fh/util/Protocol1;
.super Ljava/lang/Object;
.source "Protocol1.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final PKG_LEN:I = 0xd

.field private static final head:B = 0x66t

.field private static final tail:B = -0x5bt


# instance fields
.field private channel1:B

.field private channel2:B

.field private channel3:B

.field private channel4:B

.field private checkSum1:B

.field private checkSum2:B

.field private data_h:B

.field private data_l:B

.field private flag1:B

.field private flag2:B

.field private speed:I

.field private final tail1:B

.field private trim1:I

.field private trim2:I

.field private trim4:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    const/16 v0, -0x80

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 32
    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 33
    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel3:B

    .line 34
    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 35
    iput-byte v1, p0, Lcom/fh/util/Protocol1;->flag1:B

    .line 36
    iput-byte v1, p0, Lcom/fh/util/Protocol1;->checkSum1:B

    .line 37
    const/16 v0, -0x67

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->tail1:B

    .line 38
    iput-byte v1, p0, Lcom/fh/util/Protocol1;->data_h:B

    .line 39
    iput-byte v1, p0, Lcom/fh/util/Protocol1;->data_l:B

    .line 40
    iput-byte v1, p0, Lcom/fh/util/Protocol1;->flag2:B

    .line 41
    iput-byte v1, p0, Lcom/fh/util/Protocol1;->checkSum2:B

    .line 44
    iput v2, p0, Lcom/fh/util/Protocol1;->trim1:I

    .line 45
    iput v2, p0, Lcom/fh/util/Protocol1;->trim2:I

    .line 46
    iput v2, p0, Lcom/fh/util/Protocol1;->trim4:I

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 244
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 245
    return-void
.end method

.method private changeXonSpeed(ID)B
    .locals 10
    .param p1, "x"    # I
    .param p2, "speed"    # D

    .prologue
    .line 516
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 518
    .local v0, "count":D
    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpl-double v3, p2, v4

    if-lez v3, :cond_0

    .line 519
    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    .line 526
    :goto_0
    const/16 v3, 0x80

    if-ge p1, v3, :cond_2

    if-lez p1, :cond_2

    .line 527
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double v6, v0, v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double v6, v0, v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 537
    .local v2, "vy":I
    :goto_1
    const-string v3, "changeXonSpeed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double v6, v0, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    int-to-byte v3, v2

    return v3

    .line 520
    .end local v2    # "vy":I
    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v3, p2, v4

    if-gez v3, :cond_1

    .line 521
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 523
    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v0, p2, v4

    goto :goto_0

    .line 528
    :cond_2
    if-gtz p1, :cond_3

    .line 529
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double v6, v0, v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .restart local v2    # "vy":I
    goto :goto_1

    .line 530
    .end local v2    # "vy":I
    :cond_3
    const/16 v3, 0xff

    if-lt p1, v3, :cond_4

    .line 531
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double v4, v0, v4

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    mul-double/2addr v4, v6

    const-wide v6, 0x405fc00000000000L    # 127.0

    add-double/2addr v4, v6

    double-to-int v2, v4

    .restart local v2    # "vy":I
    goto :goto_1

    .line 532
    .end local v2    # "vy":I
    :cond_4
    const/16 v3, 0x80

    if-le p1, v3, :cond_5

    const/16 v3, 0xff

    if-ge p1, v3, :cond_5

    .line 533
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double v4, v0, v4

    add-int/lit8 v3, p1, -0x80

    int-to-double v6, v3

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    add-double/2addr v4, v6

    double-to-int v2, v4

    .restart local v2    # "vy":I
    goto :goto_1

    .line 535
    .end local v2    # "vy":I
    :cond_5
    const/16 v2, 0x80

    .restart local v2    # "vy":I
    goto :goto_1
.end method

.method private check1Or0(B)B
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 506
    if-lez p1, :cond_0

    .line 507
    const/4 v0, 0x1

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 234
    const-string v2, ""

    .line 240
    :goto_0
    return-object v2

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 236
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 238
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/fh/util/Protocol1;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public calibration()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 399
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 400
    .local v9, "fas":[B
    aput-byte v2, v9, v1

    .line 401
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    const/4 v0, 0x2

    aget-byte v3, v9, v0

    const/4 v0, 0x3

    aget-byte v4, v9, v0

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd1(BBBBBBBB)V

    .line 402
    return-void
.end method

.method public clearFlag1()V
    .locals 10

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 342
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 343
    .local v9, "fas":[B
    aput-byte v1, v9, v1

    .line 344
    aput-byte v1, v9, v2

    .line 345
    aput-byte v1, v9, v3

    .line 346
    aput-byte v1, v9, v5

    .line 347
    aput-byte v1, v9, v6

    .line 348
    const/4 v0, 0x6

    aput-byte v1, v9, v0

    .line 349
    const/4 v0, 0x7

    aput-byte v1, v9, v0

    .line 350
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    const/4 v0, 0x3

    aget-byte v4, v9, v0

    aget-byte v5, v9, v5

    aget-byte v6, v9, v6

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd1(BBBBBBBB)V

    .line 351
    return-void
.end method

.method public clearFlag2()V
    .locals 10

    .prologue
    const/4 v8, 0x7

    const/4 v1, 0x0

    .line 354
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 355
    .local v9, "fas":[B
    aput-byte v1, v9, v8

    .line 356
    aget-byte v1, v9, v1

    const/4 v0, 0x1

    aget-byte v2, v9, v0

    const/4 v0, 0x2

    aget-byte v3, v9, v0

    const/4 v0, 0x3

    aget-byte v4, v9, v0

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    aget-byte v8, v9, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd(BBBBBBBB)V

    .line 357
    return-void
.end method

.method public getChannel1()B
    .locals 1

    .prologue
    .line 542
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->channel1:B

    return v0
.end method

.method public getChannel2()B
    .locals 1

    .prologue
    .line 546
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->channel2:B

    return v0
.end method

.method public getChannel3()B
    .locals 1

    .prologue
    .line 550
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->channel3:B

    return v0
.end method

.method public getChannel4()B
    .locals 1

    .prologue
    .line 554
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->channel4:B

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0xd

    return v0
.end method

.method public noHead(Z)V
    .locals 10
    .param p1, "onhead"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 417
    if-eqz p1, :cond_0

    .line 418
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 419
    .local v9, "fas":[B
    aput-byte v2, v9, v3

    .line 420
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    aget-byte v5, v9, v5

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd1(BBBBBBBB)V

    .line 426
    :goto_0
    return-void

    .line 422
    .end local v9    # "fas":[B
    :cond_0
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 423
    .restart local v9    # "fas":[B
    aput-byte v1, v9, v3

    .line 424
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    aget-byte v5, v9, v5

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd1(BBBBBBBB)V

    goto :goto_0
.end method

.method public packageOf8()[B
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 77
    .local v0, "buf":[B
    const/16 v1, 0x66

    aput-byte v1, v0, v3

    .line 78
    iget-byte v1, p0, Lcom/fh/util/Protocol1;->channel1:B

    aput-byte v1, v0, v4

    .line 79
    iget-byte v1, p0, Lcom/fh/util/Protocol1;->channel2:B

    aput-byte v1, v0, v5

    .line 80
    iget-byte v1, p0, Lcom/fh/util/Protocol1;->channel3:B

    aput-byte v1, v0, v6

    .line 81
    iget-byte v1, p0, Lcom/fh/util/Protocol1;->channel4:B

    aput-byte v1, v0, v7

    .line 82
    const/4 v1, 0x5

    iget-byte v2, p0, Lcom/fh/util/Protocol1;->flag1:B

    aput-byte v2, v0, v1

    .line 83
    iput-byte v3, p0, Lcom/fh/util/Protocol1;->checkSum1:B

    .line 85
    aget-byte v1, v0, v4

    aget-byte v2, v0, v5

    xor-int/2addr v1, v2

    aget-byte v2, v0, v6

    xor-int/2addr v1, v2

    aget-byte v2, v0, v7

    xor-int/2addr v1, v2

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/fh/util/Protocol1;->checkSum1:B

    .line 87
    const/4 v1, 0x6

    iget-byte v2, p0, Lcom/fh/util/Protocol1;->checkSum1:B

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 88
    const/4 v1, 0x7

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    .line 90
    return-object v0
.end method

.method public packaging()[B
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    const/16 v1, 0xd

    new-array v0, v1, [B

    .line 51
    .local v0, "buf":[B
    const/16 v1, 0x66

    aput-byte v1, v0, v3

    .line 52
    iget-byte v1, p0, Lcom/fh/util/Protocol1;->channel1:B

    aput-byte v1, v0, v4

    .line 53
    iget-byte v1, p0, Lcom/fh/util/Protocol1;->channel2:B

    aput-byte v1, v0, v5

    .line 54
    iget-byte v1, p0, Lcom/fh/util/Protocol1;->channel3:B

    aput-byte v1, v0, v6

    .line 55
    iget-byte v1, p0, Lcom/fh/util/Protocol1;->channel4:B

    aput-byte v1, v0, v7

    .line 56
    const/4 v1, 0x5

    iget-byte v2, p0, Lcom/fh/util/Protocol1;->flag1:B

    aput-byte v2, v0, v1

    .line 57
    iput-byte v3, p0, Lcom/fh/util/Protocol1;->checkSum1:B

    .line 59
    aget-byte v1, v0, v4

    aget-byte v2, v0, v5

    xor-int/2addr v1, v2

    aget-byte v2, v0, v6

    xor-int/2addr v1, v2

    aget-byte v2, v0, v7

    xor-int/2addr v1, v2

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/fh/util/Protocol1;->checkSum1:B

    .line 61
    const/4 v1, 0x6

    iget-byte v2, p0, Lcom/fh/util/Protocol1;->checkSum1:B

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 62
    const/4 v1, 0x7

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    .line 63
    const/16 v1, 0x8

    iget-byte v2, p0, Lcom/fh/util/Protocol1;->data_h:B

    aput-byte v2, v0, v1

    .line 64
    const/16 v1, 0x9

    iget-byte v2, p0, Lcom/fh/util/Protocol1;->data_l:B

    aput-byte v2, v0, v1

    .line 65
    const/16 v1, 0xa

    iget-byte v2, p0, Lcom/fh/util/Protocol1;->flag2:B

    aput-byte v2, v0, v1

    .line 66
    iput-byte v3, p0, Lcom/fh/util/Protocol1;->checkSum2:B

    .line 68
    const/16 v1, 0x8

    aget-byte v1, v0, v1

    const/16 v2, 0x9

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/fh/util/Protocol1;->checkSum2:B

    .line 69
    const/16 v1, 0xb

    iget-byte v2, p0, Lcom/fh/util/Protocol1;->checkSum2:B

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 70
    const/16 v1, 0xc

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    .line 72
    return-object v0
.end method

.method public roll()V
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    .line 411
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 412
    .local v9, "fas":[B
    aput-byte v2, v9, v5

    .line 413
    const/4 v0, 0x0

    aget-byte v1, v9, v0

    aget-byte v2, v9, v2

    const/4 v0, 0x2

    aget-byte v3, v9, v0

    const/4 v0, 0x3

    aget-byte v4, v9, v0

    aget-byte v5, v9, v5

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd1(BBBBBBBB)V

    .line 414
    return-void
.end method

.method public rth()V
    .locals 10

    .prologue
    const/4 v8, 0x7

    const/4 v2, 0x1

    .line 335
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 336
    .local v9, "fas":[B
    aput-byte v2, v9, v8

    .line 337
    const/4 v0, 0x0

    aget-byte v1, v9, v0

    aget-byte v2, v9, v2

    const/4 v0, 0x2

    aget-byte v3, v9, v0

    const/4 v0, 0x3

    aget-byte v4, v9, v0

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    aget-byte v8, v9, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd(BBBBBBBB)V

    .line 338
    return-void
.end method

.method public setChannel1(B)V
    .locals 5
    .param p1, "channel1"    # B

    .prologue
    const/16 v4, 0x5a

    const/16 v3, 0x32

    const/4 v2, 0x2

    .line 126
    iget v0, p0, Lcom/fh/util/Protocol1;->trim2:I

    add-int/lit8 v0, v0, -0x80

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 127
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    if-ne v0, v2, :cond_0

    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim2:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 128
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 131
    :cond_0
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    if-ne v0, v2, :cond_1

    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim2:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 132
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 135
    :cond_1
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 136
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim2:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    const/16 v1, 0xce

    if-le v0, v1, :cond_2

    .line 137
    const/16 v0, -0x32

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 139
    :cond_2
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim2:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    if-ge v0, v3, :cond_3

    .line 140
    iput-byte v3, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 143
    :cond_3
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    if-nez v0, :cond_5

    .line 144
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim2:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    const/16 v1, 0xa6

    if-le v0, v1, :cond_4

    .line 145
    const/16 v0, -0x5a

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 147
    :cond_4
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim2:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_5

    .line 148
    iput-byte v4, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 152
    :cond_5
    return-void
.end method

.method public setChannel1(ID)V
    .locals 2
    .param p1, "channel1"    # I
    .param p2, "speed"    # D

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/fh/util/Protocol1;->changeXonSpeed(ID)B

    move-result v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 105
    return-void
.end method

.method public setChannel2(B)V
    .locals 5
    .param p1, "channel2"    # B

    .prologue
    const/16 v4, 0x5a

    const/16 v3, 0x32

    const/4 v2, 0x2

    .line 156
    iget v0, p0, Lcom/fh/util/Protocol1;->trim4:I

    add-int/lit8 v0, v0, -0x80

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 157
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    if-ne v0, v2, :cond_0

    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim4:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 158
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 161
    :cond_0
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    if-ne v0, v2, :cond_1

    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim4:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    if-gtz v0, :cond_1

    .line 162
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 166
    :cond_1
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 167
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim4:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    const/16 v1, 0xce

    if-le v0, v1, :cond_2

    .line 168
    const/16 v0, -0x32

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 170
    :cond_2
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim4:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    if-ge v0, v3, :cond_3

    .line 171
    iput-byte v3, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 174
    :cond_3
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    if-nez v0, :cond_5

    .line 175
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim4:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    const/16 v1, 0xa6

    if-le v0, v1, :cond_4

    .line 176
    const/16 v0, -0x5a

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 178
    :cond_4
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim4:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_5

    .line 179
    iput-byte v4, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 182
    :cond_5
    return-void
.end method

.method public setChannel2(ID)V
    .locals 2
    .param p1, "channel2"    # I
    .param p2, "speed"    # D

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/fh/util/Protocol1;->changeXonSpeed(ID)B

    move-result v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 111
    return-void
.end method

.method public setChannel3(B)V
    .locals 0
    .param p1, "channel3"    # B

    .prologue
    .line 186
    iput-byte p1, p0, Lcom/fh/util/Protocol1;->channel3:B

    .line 187
    return-void
.end method

.method public setChannel3(ID)V
    .locals 2
    .param p1, "channel3"    # I
    .param p2, "speed"    # D

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/fh/util/Protocol1;->changeXonSpeed(ID)B

    move-result v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel3:B

    .line 116
    return-void
.end method

.method public setChannel4(B)V
    .locals 5
    .param p1, "channel4"    # B

    .prologue
    const/16 v4, 0x5a

    const/16 v3, 0x32

    const/4 v2, 0x2

    .line 191
    iget v0, p0, Lcom/fh/util/Protocol1;->trim1:I

    add-int/lit8 v0, v0, -0x80

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 192
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    if-ne v0, v2, :cond_0

    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim1:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 193
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 196
    :cond_0
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    if-ne v0, v2, :cond_1

    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim1:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 197
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 201
    :cond_1
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 202
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim1:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    const/16 v1, 0xce

    if-le v0, v1, :cond_2

    .line 203
    const/16 v0, -0x32

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 205
    :cond_2
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim1:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    if-ge v0, v3, :cond_3

    .line 206
    iput-byte v3, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 209
    :cond_3
    iget v0, p0, Lcom/fh/util/Protocol1;->speed:I

    if-nez v0, :cond_5

    .line 210
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim1:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    const/16 v1, 0xa6

    if-le v0, v1, :cond_4

    .line 211
    const/16 v0, -0x5a

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 213
    :cond_4
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/fh/util/Protocol1;->trim1:I

    add-int/lit8 v1, v1, -0x80

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_5

    .line 214
    iput-byte v4, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 218
    :cond_5
    return-void
.end method

.method public setChannel4(ID)V
    .locals 2
    .param p1, "channel4"    # I
    .param p2, "speed"    # D

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/fh/util/Protocol1;->changeXonSpeed(ID)B

    move-result v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 121
    return-void
.end method

.method public setCmd(B)V
    .locals 0
    .param p1, "cmd"    # B

    .prologue
    .line 99
    iput-byte p1, p0, Lcom/fh/util/Protocol1;->flag1:B

    .line 100
    return-void
.end method

.method public setCmd(BBBBBBBB)V
    .locals 2
    .param p1, "bit7"    # B
    .param p2, "bit6"    # B
    .param p3, "bit5"    # B
    .param p4, "bit4"    # B
    .param p5, "bit3"    # B
    .param p6, "bit2"    # B
    .param p7, "bit1"    # B
    .param p8, "bit0"    # B

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v0, "bitStr":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    invoke-direct {p0, p2}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    invoke-direct {p0, p3}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    invoke-direct {p0, p4}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    invoke-direct {p0, p5}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    invoke-direct {p0, p6}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    invoke-direct {p0, p7}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    invoke-direct {p0, p8}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fh/util/BufChangeHex;->bitsToByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Lcom/fh/util/Protocol1;->flag2:B

    .line 462
    return-void
.end method

.method public setCmd1(BBBBBBBB)V
    .locals 2
    .param p1, "bit7"    # B
    .param p2, "bit6"    # B
    .param p3, "bit5"    # B
    .param p4, "bit4"    # B
    .param p5, "bit3"    # B
    .param p6, "bit2"    # B
    .param p7, "bit1"    # B
    .param p8, "bit0"    # B

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v0, "bitStr":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    invoke-direct {p0, p2}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-direct {p0, p3}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    invoke-direct {p0, p4}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    invoke-direct {p0, p5}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    invoke-direct {p0, p6}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    invoke-direct {p0, p7}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    invoke-direct {p0, p8}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fh/util/BufChangeHex;->bitsToByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Lcom/fh/util/Protocol1;->flag1:B

    .line 475
    return-void
.end method

.method public setData(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 222
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->data_h:B

    .line 223
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->data_l:B

    .line 227
    return-void
.end method

.method public setFollow(Z)V
    .locals 10
    .param p1, "follow"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 271
    if-eqz p1, :cond_0

    .line 272
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 274
    .local v9, "fas":[B
    aput-byte v2, v9, v3

    .line 275
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    aget-byte v5, v9, v5

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd(BBBBBBBB)V

    .line 283
    :goto_0
    return-void

    .line 278
    .end local v9    # "fas":[B
    :cond_0
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 280
    .restart local v9    # "fas":[B
    aput-byte v1, v9, v3

    .line 281
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    aget-byte v5, v9, v5

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd(BBBBBBBB)V

    goto :goto_0
.end method

.method public setFunction1(BBBB)V
    .locals 3
    .param p1, "bit7"    # B
    .param p2, "bit6"    # B
    .param p3, "bit5"    # B
    .param p4, "bit4"    # B

    .prologue
    const/4 v2, 0x0

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v0, "bitStr":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    invoke-direct {p0, p1}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    invoke-direct {p0, p2}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    invoke-direct {p0, p3}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 494
    invoke-direct {p0, p4}, Lcom/fh/util/Protocol1;->check1Or0(B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/BufChangeHex;->bitsToByte(Ljava/lang/String;)B

    move-result v1

    .line 502
    .local v1, "fun1":B
    iput-byte v1, p0, Lcom/fh/util/Protocol1;->flag1:B

    .line 503
    return-void
.end method

.method public setLock(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 266
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fh/util/Protocol1;->setCmd(B)V

    .line 268
    return-void
.end method

.method public setOneKeyDown(Z)V
    .locals 10
    .param p1, "on"    # Z

    .prologue
    const/4 v7, 0x6

    const/4 v2, 0x1

    .line 393
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 394
    .local v9, "fas":[B
    aput-byte v2, v9, v7

    .line 395
    const/4 v0, 0x0

    aget-byte v1, v9, v0

    aget-byte v2, v9, v2

    const/4 v0, 0x2

    aget-byte v3, v9, v0

    const/4 v0, 0x3

    aget-byte v4, v9, v0

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    aget-byte v7, v9, v7

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd1(BBBBBBBB)V

    .line 396
    return-void
.end method

.method public setOneKeyFly(Z)V
    .locals 10
    .param p1, "on"    # Z

    .prologue
    const/4 v8, 0x7

    const/4 v2, 0x1

    .line 328
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 329
    .local v9, "fas":[B
    aput-byte v2, v9, v8

    .line 330
    const/4 v0, 0x0

    aget-byte v1, v9, v0

    aget-byte v2, v9, v2

    const/4 v0, 0x2

    aget-byte v3, v9, v0

    const/4 v0, 0x3

    aget-byte v4, v9, v0

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    aget-byte v8, v9, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd1(BBBBBBBB)V

    .line 331
    return-void
.end method

.method public setPalmFollow(Z)V
    .locals 10
    .param p1, "follow"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 289
    .local v9, "fas":[B
    aput-byte v2, v9, v4

    .line 290
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    aget-byte v5, v9, v5

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd(BBBBBBBB)V

    .line 298
    :goto_0
    return-void

    .line 293
    .end local v9    # "fas":[B
    :cond_0
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 295
    .restart local v9    # "fas":[B
    aput-byte v1, v9, v4

    .line 296
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    aget-byte v5, v9, v5

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd(BBBBBBBB)V

    goto :goto_0
.end method

.method public setSpeed(I)V
    .locals 10
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x1

    .line 361
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 362
    .local v9, "fas":[B
    iput p1, p0, Lcom/fh/util/Protocol1;->speed:I

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 379
    :goto_0
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    const/4 v0, 0x2

    aget-byte v3, v9, v0

    const/4 v0, 0x3

    aget-byte v4, v9, v0

    aget-byte v5, v9, v5

    aget-byte v6, v9, v6

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd(BBBBBBBB)V

    .line 381
    return-void

    .line 365
    :pswitch_0
    aput-byte v1, v9, v6

    .line 366
    aput-byte v2, v9, v5

    goto :goto_0

    .line 370
    :pswitch_1
    aput-byte v2, v9, v6

    .line 371
    aput-byte v1, v9, v5

    goto :goto_0

    .line 375
    :pswitch_2
    aput-byte v2, v9, v6

    .line 376
    aput-byte v2, v9, v5

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTrim1(I)V
    .locals 6
    .param p1, "trim1"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/fh/util/Protocol1;->trim1:I

    .line 430
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    add-int/lit8 v2, p1, -0x80

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel4:B

    .line 431
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chan4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/fh/util/Protocol1;->channel4:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public setTrim2(I)V
    .locals 6
    .param p1, "trim2"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/fh/util/Protocol1;->trim2:I

    .line 439
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    add-int/lit8 v2, p1, -0x80

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel1:B

    .line 442
    return-void
.end method

.method public setTrim4(I)V
    .locals 6
    .param p1, "trim4"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/fh/util/Protocol1;->trim4:I

    .line 446
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    add-int/lit8 v2, p1, -0x80

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/Protocol1;->channel2:B

    .line 448
    return-void
.end method

.method public stop()V
    .locals 10

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    .line 405
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 406
    .local v9, "fas":[B
    aput-byte v2, v9, v6

    .line 407
    const/4 v0, 0x0

    aget-byte v1, v9, v0

    aget-byte v2, v9, v2

    const/4 v0, 0x2

    aget-byte v3, v9, v0

    const/4 v0, 0x3

    aget-byte v4, v9, v0

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    aget-byte v6, v9, v6

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd1(BBBBBBBB)V

    .line 408
    return-void
.end method

.method public stop(Z)V
    .locals 10
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 306
    iget-byte v0, p0, Lcom/fh/util/Protocol1;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 307
    .local v9, "fas":[B
    if-eqz p1, :cond_0

    move v0, v2

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v9, v4

    .line 308
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    const/4 v0, 0x2

    aget-byte v3, v9, v0

    aget-byte v4, v9, v4

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/Protocol1;->setCmd(BBBBBBBB)V

    .line 309
    return-void

    :cond_0
    move v0, v1

    .line 307
    goto :goto_0
.end method
