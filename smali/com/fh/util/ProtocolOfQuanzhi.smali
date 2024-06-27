.class public Lcom/fh/util/ProtocolOfQuanzhi;
.super Ljava/lang/Object;
.source "ProtocolOfQuanzhi.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final PKG_LEN:I = 0x14

.field private static final head:B = 0x66t

.field private static final tail:B = -0x5bt


# instance fields
.field private DistanceH:B

.field private DistanceL:B

.field private Reserve1:B

.field private Reserve2:B

.field private Reserve3:B

.field private Reserve4:B

.field private XpointH:B

.field private XpointL:B

.field private YpointH:B

.field private YpointL:B

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

.field private length:B

.field private speed:I

.field private final tail1:B

.field private trim1:I

.field private trim2:I

.field private trim4:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/16 v2, -0x80

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->length:B

    .line 32
    iput-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel1:B

    .line 33
    iput-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel2:B

    .line 34
    iput-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel3:B

    .line 35
    iput-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel4:B

    .line 36
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    .line 37
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    .line 39
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->DistanceH:B

    .line 40
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->DistanceL:B

    .line 41
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->XpointH:B

    .line 42
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->XpointL:B

    .line 43
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->YpointH:B

    .line 44
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->YpointL:B

    .line 45
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->Reserve1:B

    .line 46
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->Reserve2:B

    .line 47
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->Reserve3:B

    .line 48
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->Reserve4:B

    .line 50
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->checkSum1:B

    .line 51
    const/16 v0, -0x67

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->tail1:B

    .line 53
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->data_h:B

    .line 54
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->data_l:B

    .line 56
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->checkSum2:B

    .line 59
    iput v3, p0, Lcom/fh/util/ProtocolOfQuanzhi;->trim1:I

    .line 60
    iput v3, p0, Lcom/fh/util/ProtocolOfQuanzhi;->trim2:I

    .line 61
    iput v3, p0, Lcom/fh/util/ProtocolOfQuanzhi;->trim4:I

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 165
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

    .line 166
    return-void
.end method

.method private changeXonSpeed(ID)B
    .locals 10
    .param p1, "x"    # I
    .param p2, "speed"    # D

    .prologue
    .line 439
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 441
    .local v0, "count":D
    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpl-double v3, p2, v4

    if-lez v3, :cond_0

    .line 442
    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    .line 450
    :goto_0
    const/16 v3, 0x80

    if-ge p1, v3, :cond_2

    if-lez p1, :cond_2

    .line 451
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

    .line 461
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

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    int-to-byte v3, v2

    return v3

    .line 443
    .end local v2    # "vy":I
    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v3, p2, v4

    if-gez v3, :cond_1

    .line 444
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 447
    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v0, p2, v4

    goto :goto_0

    .line 452
    :cond_2
    if-gtz p1, :cond_3

    .line 453
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double v6, v0, v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .restart local v2    # "vy":I
    goto :goto_1

    .line 454
    .end local v2    # "vy":I
    :cond_3
    const/16 v3, 0xff

    if-lt p1, v3, :cond_4

    .line 455
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double v4, v0, v4

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    mul-double/2addr v4, v6

    const-wide v6, 0x405fc00000000000L    # 127.0

    add-double/2addr v4, v6

    double-to-int v2, v4

    .restart local v2    # "vy":I
    goto :goto_1

    .line 456
    .end local v2    # "vy":I
    :cond_4
    const/16 v3, 0x80

    if-le p1, v3, :cond_5

    const/16 v3, 0xff

    if-ge p1, v3, :cond_5

    .line 457
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

    .line 459
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
    .line 429
    if-lez p1, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 432
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
    .line 154
    if-nez p0, :cond_0

    .line 155
    const-string v2, ""

    .line 161
    :goto_0
    return-object v2

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 157
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 159
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/fh/util/ProtocolOfQuanzhi;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public calibration()V
    .locals 10

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    .line 299
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 300
    .local v9, "fas":[B
    aput-byte v2, v9, v6

    .line 302
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

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd1(BBBBBBBB)V

    .line 303
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

    .line 217
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 218
    .local v9, "fas":[B
    aput-byte v1, v9, v1

    .line 219
    aput-byte v1, v9, v2

    .line 220
    aput-byte v1, v9, v3

    .line 221
    aput-byte v1, v9, v5

    .line 222
    aput-byte v1, v9, v6

    .line 223
    const/4 v0, 0x6

    aput-byte v1, v9, v0

    .line 224
    const/4 v0, 0x7

    aput-byte v1, v9, v0

    .line 225
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

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd1(BBBBBBBB)V

    .line 226
    return-void
.end method

.method public clearFlag2()V
    .locals 10

    .prologue
    .line 229
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 231
    .local v9, "fas":[B
    const/4 v0, 0x0

    aget-byte v1, v9, v0

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

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd(BBBBBBBB)V

    .line 232
    return-void
.end method

.method public hold(Z)V
    .locals 10
    .param p1, "onHold"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x6

    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 336
    .local v9, "fas":[B
    aput-byte v2, v9, v7

    .line 337
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    aget-byte v7, v9, v7

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd(BBBBBBBB)V

    .line 344
    :goto_0
    return-void

    .line 339
    .end local v9    # "fas":[B
    :cond_0
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 341
    .restart local v9    # "fas":[B
    aput-byte v1, v9, v7

    .line 342
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    aget-byte v7, v9, v7

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd(BBBBBBBB)V

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x14

    return v0
.end method

.method public noHead(Z)V
    .locals 10
    .param p1, "onhead"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x7

    .line 319
    if-eqz p1, :cond_0

    .line 320
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 322
    .local v9, "fas":[B
    aput-byte v2, v9, v8

    .line 323
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    aget-byte v8, v9, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd(BBBBBBBB)V

    .line 330
    :goto_0
    return-void

    .line 325
    .end local v9    # "fas":[B
    :cond_0
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 327
    .restart local v9    # "fas":[B
    aput-byte v1, v9, v8

    .line 328
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    const/4 v0, 0x5

    aget-byte v6, v9, v0

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    aget-byte v8, v9, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd(BBBBBBBB)V

    goto :goto_0
.end method

.method public packaging()[B
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 65
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 66
    .local v0, "buf":[B
    const/16 v1, 0x66

    aput-byte v1, v0, v3

    .line 67
    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->length:B

    aput-byte v2, v0, v1

    .line 68
    iget-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel1:B

    aput-byte v1, v0, v4

    .line 69
    iget-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel2:B

    aput-byte v1, v0, v5

    .line 70
    iget-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel3:B

    aput-byte v1, v0, v6

    .line 71
    iget-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel4:B

    aput-byte v1, v0, v7

    .line 73
    const/4 v1, 0x6

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    aput-byte v2, v0, v1

    .line 74
    const/4 v1, 0x7

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    aput-byte v2, v0, v1

    .line 76
    const/16 v1, 0x8

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->DistanceH:B

    aput-byte v2, v0, v1

    .line 77
    const/16 v1, 0x9

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->DistanceL:B

    aput-byte v2, v0, v1

    .line 78
    const/16 v1, 0xa

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->XpointH:B

    aput-byte v2, v0, v1

    .line 79
    const/16 v1, 0xb

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->XpointL:B

    aput-byte v2, v0, v1

    .line 80
    const/16 v1, 0xc

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->YpointH:B

    aput-byte v2, v0, v1

    .line 81
    const/16 v1, 0xd

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->YpointL:B

    aput-byte v2, v0, v1

    .line 82
    const/16 v1, 0xe

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->Reserve1:B

    aput-byte v2, v0, v1

    .line 83
    const/16 v1, 0xf

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->Reserve2:B

    aput-byte v2, v0, v1

    .line 84
    const/16 v1, 0x10

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->Reserve3:B

    aput-byte v2, v0, v1

    .line 85
    const/16 v1, 0x11

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->Reserve4:B

    aput-byte v2, v0, v1

    .line 87
    iput-byte v3, p0, Lcom/fh/util/ProtocolOfQuanzhi;->checkSum1:B

    .line 88
    aget-byte v1, v0, v4

    aget-byte v2, v0, v5

    xor-int/2addr v1, v2

    aget-byte v2, v0, v6

    xor-int/2addr v1, v2

    aget-byte v2, v0, v7

    xor-int/2addr v1, v2

    const/4 v2, 0x6

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/4 v2, 0x7

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x8

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x9

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xc

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xf

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x10

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x11

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->checkSum1:B

    .line 91
    const/16 v1, 0x12

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->checkSum1:B

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 92
    const/16 v1, 0x13

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    .line 94
    return-object v0
.end method

.method public roll()V
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    .line 313
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 314
    .local v9, "fas":[B
    aput-byte v2, v9, v5

    .line 315
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

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd1(BBBBBBBB)V

    .line 316
    return-void
.end method

.method public setChannel1(B)V
    .locals 0
    .param p1, "channel1"    # B

    .prologue
    .line 126
    iput-byte p1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel1:B

    .line 127
    return-void
.end method

.method public setChannel1(ID)V
    .locals 2
    .param p1, "channel1"    # I
    .param p2, "speed"    # D

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/fh/util/ProtocolOfQuanzhi;->changeXonSpeed(ID)B

    move-result v0

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel1:B

    .line 110
    return-void
.end method

.method public setChannel2(B)V
    .locals 0
    .param p1, "channel2"    # B

    .prologue
    .line 131
    iput-byte p1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel2:B

    .line 132
    return-void
.end method

.method public setChannel2(ID)V
    .locals 2
    .param p1, "channel2"    # I
    .param p2, "speed"    # D

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/fh/util/ProtocolOfQuanzhi;->changeXonSpeed(ID)B

    move-result v0

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel2:B

    .line 114
    return-void
.end method

.method public setChannel3(B)V
    .locals 0
    .param p1, "channel3"    # B

    .prologue
    .line 135
    iput-byte p1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel3:B

    .line 136
    return-void
.end method

.method public setChannel3(ID)V
    .locals 2
    .param p1, "channel3"    # I
    .param p2, "speed"    # D

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/fh/util/ProtocolOfQuanzhi;->changeXonSpeed(ID)B

    move-result v0

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel3:B

    .line 118
    return-void
.end method

.method public setChannel4(B)V
    .locals 0
    .param p1, "channel4"    # B

    .prologue
    .line 140
    iput-byte p1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel4:B

    .line 141
    return-void
.end method

.method public setChannel4(ID)V
    .locals 2
    .param p1, "channel4"    # I
    .param p2, "speed"    # D

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/fh/util/ProtocolOfQuanzhi;->changeXonSpeed(ID)B

    move-result v0

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel4:B

    .line 122
    return-void
.end method

.method public setCmd(B)V
    .locals 0
    .param p1, "cmd"    # B

    .prologue
    .line 104
    iput-byte p1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    .line 105
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
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, "bitStr":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    invoke-direct {p0, p2}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    invoke-direct {p0, p3}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    invoke-direct {p0, p4}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    invoke-direct {p0, p5}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    invoke-direct {p0, p6}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    invoke-direct {p0, p7}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    invoke-direct {p0, p8}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fh/util/BufChangeHex;->bitsToByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    .line 375
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
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v0, "bitStr":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    invoke-direct {p0, p2}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    invoke-direct {p0, p3}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {p0, p4}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {p0, p5}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    invoke-direct {p0, p6}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    invoke-direct {p0, p7}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    invoke-direct {p0, p8}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fh/util/BufChangeHex;->bitsToByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    .line 388
    return-void
.end method

.method public setData(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 145
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->data_h:B

    .line 146
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->data_l:B

    .line 150
    return-void
.end method

.method public setFollow(Z)V
    .locals 10
    .param p1, "follow"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x5

    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 193
    .local v9, "fas":[B
    aput-byte v2, v9, v6

    .line 194
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    aget-byte v6, v9, v6

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd(BBBBBBBB)V

    .line 201
    :goto_0
    return-void

    .line 197
    .end local v9    # "fas":[B
    :cond_0
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 198
    .restart local v9    # "fas":[B
    aput-byte v1, v9, v6

    .line 199
    aget-byte v1, v9, v1

    aget-byte v2, v9, v2

    aget-byte v3, v9, v3

    aget-byte v4, v9, v4

    const/4 v0, 0x4

    aget-byte v5, v9, v0

    aget-byte v6, v9, v6

    const/4 v0, 0x6

    aget-byte v7, v9, v0

    const/4 v0, 0x7

    aget-byte v8, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd(BBBBBBBB)V

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

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v0, "bitStr":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    invoke-direct {p0, p1}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    invoke-direct {p0, p2}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    invoke-direct {p0, p3}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    invoke-direct {p0, p4}, Lcom/fh/util/ProtocolOfQuanzhi;->check1Or0(B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/BufChangeHex;->bitsToByte(Ljava/lang/String;)B

    move-result v1

    .line 419
    .local v1, "fun1":B
    iput-byte v1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    .line 420
    return-void
.end method

.method public setLock(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 188
    return-void
.end method

.method public setOneKeyDown(Z)V
    .locals 10
    .param p1, "on"    # Z

    .prologue
    const/4 v8, 0x7

    const/4 v2, 0x1

    .line 292
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 294
    .local v9, "fas":[B
    aput-byte v2, v9, v8

    .line 295
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

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd1(BBBBBBBB)V

    .line 296
    return-void
.end method

.method public setOneKeyFly(Z)V
    .locals 10
    .param p1, "on"    # Z

    .prologue
    const/4 v8, 0x7

    const/4 v2, 0x1

    .line 244
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 245
    .local v9, "fas":[B
    aput-byte v2, v9, v8

    .line 246
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

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd1(BBBBBBBB)V

    .line 247
    return-void
.end method

.method public setPalmFollow(Z)V
    .locals 10
    .param p1, "follow"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 206
    .local v9, "fas":[B
    aput-byte v2, v9, v3

    .line 207
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

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd(BBBBBBBB)V

    .line 214
    :goto_0
    return-void

    .line 210
    .end local v9    # "fas":[B
    :cond_0
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag2:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 211
    .restart local v9    # "fas":[B
    aput-byte v1, v9, v3

    .line 212
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

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd(BBBBBBBB)V

    goto :goto_0
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 280
    return-void
.end method

.method public setTrim1(I)V
    .locals 6
    .param p1, "trim1"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->trim1:I

    .line 348
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    add-int/lit8 v2, p1, -0x80

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel4:B

    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chan4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel4:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public setTrim2(I)V
    .locals 6
    .param p1, "trim2"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->trim2:I

    .line 354
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    add-int/lit8 v2, p1, -0x80

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel1:B

    .line 355
    return-void
.end method

.method public setTrim4(I)V
    .locals 6
    .param p1, "trim4"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/fh/util/ProtocolOfQuanzhi;->trim4:I

    .line 359
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    add-int/lit8 v2, p1, -0x80

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->channel2:B

    .line 361
    return-void
.end method

.method public stop()V
    .locals 10

    .prologue
    const/4 v7, 0x6

    const/4 v2, 0x1

    .line 306
    iget-byte v0, p0, Lcom/fh/util/ProtocolOfQuanzhi;->flag1:B

    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->getBooleanArray(B)[B

    move-result-object v9

    .line 308
    .local v9, "fas":[B
    aput-byte v2, v9, v7

    .line 309
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

    invoke-virtual/range {v0 .. v8}, Lcom/fh/util/ProtocolOfQuanzhi;->setCmd1(BBBBBBBB)V

    .line 310
    return-void
.end method
