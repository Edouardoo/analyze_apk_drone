.class public Lcom/jieli/lib/dv/control/utils/BufChangeHex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v3

    const/16 v1, 0x31

    aput-char v1, v0, v4

    const/16 v1, 0x32

    aput-char v1, v0, v5

    const/16 v1, 0x33

    aput-char v1, v0, v6

    const/16 v1, 0x34

    aput-char v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sput-object v0, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a:[C

    const/16 v0, 0x10

    .line 4
    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v3

    const/16 v1, 0x31

    aput-char v1, v0, v4

    const/16 v1, 0x32

    aput-char v1, v0, v5

    const/16 v1, 0x33

    aput-char v1, v0, v6

    const/16 v1, 0x34

    aput-char v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x46

    aput-char v2, v0, v1

    sput-object v0, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->b:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CI)I
    .locals 3

    .prologue
    const/16 v0, 0x10

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hexadecimal character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToInt([B)I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 1
    new-array v3, v5, [B

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    .line 4
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 5
    aget-byte v4, p0, v0

    aput-byte v4, v3, v2

    .line 7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aput-byte v1, v3, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    .line 9
    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v2, 0x2

    .line 10
    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    const/4 v4, 0x1

    .line 11
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 12
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    return v0
.end method

.method public static contructIntTo2B(I)[B
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 2
    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    .line 3
    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static convertIntToAscii(I)C
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    int-to-char v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeHex([C)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1
    array-length v3, p0

    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_0

    shr-int/lit8 v0, v3, 0x1

    .line 7
    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_1

    .line 11
    aget-char v1, p0, v0

    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a(CI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 13
    aget-char v5, p0, v0

    invoke-static {v5, v0}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a(CI)I

    move-result v5

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 15
    aput-byte v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Odd number of characters."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    return-object v4
.end method

.method public static encodeHex([B)[C
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->b:[C

    goto :goto_0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3
    array-length v3, p0

    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v3

    .line 4
    new-array v4, v0, [C

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 7
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v0

    add-int/lit8 v5, v1, 0x1

    .line 8
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0xf

    aget-char v0, p1, v0

    aput-char v0, v4, v1

    add-int/lit8 v0, v5, 0x1

    const/16 v1, 0x20

    .line 9
    aput-char v1, v4, v5

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method protected static encodeHex2([B[C)[C
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1
    array-length v3, p0

    shl-int/lit8 v0, v3, 0x1

    .line 2
    new-array v4, v0, [C

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 5
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v0

    add-int/lit8 v0, v1, 0x1

    .line 6
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v4, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public static encodeHexStr([B)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHexStr([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHexStr([BZ)Ljava/lang/String;
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->a:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHexStr([B[C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->b:[C

    goto :goto_0
.end method

.method protected static encodeHexStr([B[C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->encodeHex([B[C)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static intToByteArray(I)[B
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    .line 2
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 3
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 4
    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    .line 5
    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static str2HexStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const-string v0, "0123456789ABCDEF"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 6
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, v3, v0

    and-int/lit16 v6, v5, 0xf0

    shr-int/lit8 v6, v6, 0x4

    .line 8
    aget-char v6, v1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v5, 0xf

    .line 10
    aget-char v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
