.class public final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 11

    const/4 v10, 0x5

    const/4 v6, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    move v8, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v9

    move v7, v6

    move v4, v6

    :goto_2
    if-ge v7, v8, :cond_6

    move v5, v6

    move v3, v6

    :goto_3
    if-ge v5, v0, :cond_5

    if-eqz p1, :cond_2

    aget-object v2, v9, v7

    aget-byte v2, v2, v5

    :goto_4
    if-ne v2, v1, :cond_4

    add-int/lit8 v2, v3, 0x1

    if-ne v2, v10, :cond_3

    add-int/lit8 v4, v4, 0x3

    move v3, v2

    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    aget-object v2, v9, v5

    aget-byte v2, v2, v7

    goto :goto_4

    :cond_3
    if-le v2, v10, :cond_7

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_5

    :cond_4
    const/4 v3, 0x1

    move v1, v2

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_2

    :cond_6
    return v4

    :cond_7
    move v3, v2

    goto :goto_5
.end method

.method public static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_0
    add-int/lit8 v1, v6, -0x1

    if-ge v3, v1, :cond_2

    move v1, v2

    :goto_1
    add-int/lit8 v7, v5, -0x1

    if-ge v1, v7, :cond_1

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    aget-object v8, v4, v3

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v4, v8

    aget-byte v8, v8, v1

    if-ne v7, v8, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v4, v8

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_0

    add-int/lit8 v0, v0, 0x3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_7

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_6

    add-int/lit8 v7, v1, 0x6

    if-ge v7, v5, :cond_2

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x1

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x2

    aget-byte v7, v7, v8

    if-ne v7, v9, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x3

    aget-byte v7, v7, v8

    if-ne v7, v9, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x4

    aget-byte v7, v7, v8

    if-ne v7, v9, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x5

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x6

    aget-byte v7, v7, v8

    if-ne v7, v9, :cond_2

    add-int/lit8 v7, v1, 0xa

    if-ge v7, v5, :cond_0

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x7

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x8

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x9

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0xa

    aget-byte v7, v7, v8

    if-eqz v7, :cond_1

    :cond_0
    add-int/lit8 v7, v1, -0x4

    if-ltz v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, -0x1

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, -0x2

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, -0x3

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, -0x4

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x28

    :cond_2
    add-int/lit8 v7, v3, 0x6

    if-ge v7, v6, :cond_5

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, 0x2

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0x3

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0x4

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0x5

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, 0x6

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0xa

    if-ge v7, v6, :cond_3

    add-int/lit8 v7, v3, 0x7

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_3

    add-int/lit8 v7, v3, 0x8

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_3

    add-int/lit8 v7, v3, 0x9

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_3

    add-int/lit8 v7, v3, 0xa

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-eqz v7, :cond_4

    :cond_3
    add-int/lit8 v7, v3, -0x4

    if-ltz v7, :cond_5

    add-int/lit8 v7, v3, -0x1

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, -0x2

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, -0x3

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, -0x4

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x28

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_7
    return v0
.end method

.method public static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_2

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-double v2, v0

    int-to-double v0, v1

    div-double v0, v2, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    sub-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static getDataMaskBit(III)Z
    .locals 3

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid mask pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int v0, p2, p1

    and-int/lit8 v0, v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    and-int/lit8 v0, p2, 0x1

    goto :goto_0

    :pswitch_2
    rem-int/lit8 v0, p1, 0x3

    goto :goto_0

    :pswitch_3
    add-int v0, p2, p1

    rem-int/lit8 v0, v0, 0x3

    goto :goto_0

    :pswitch_4
    ushr-int/lit8 v0, p2, 0x1

    div-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_5
    mul-int v0, p2, p1

    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    goto :goto_0

    :pswitch_6
    mul-int v0, p2, p1

    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_7
    mul-int v0, p2, p1

    rem-int/lit8 v0, v0, 0x3

    add-int v1, p2, p1

    and-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
