.class public Lorg/apache/commons/net/util/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final DECODE_TABLE:[B

.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private buffer:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private final encodeTable:[B

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/net/util/Base64;->EMPTY_BYTE_ARRAY:[B

    .line 82
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 95
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 119
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    return-void

    .line 71
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 82
    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 95
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 119
    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    .line 220
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[B)V

    .line 261
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    .line 287
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    if-nez p2, :cond_0

    .line 317
    sget-object p2, Lorg/apache/commons/net/util/Base64;->EMPTY_BYTE_ARRAY:[B

    move p1, v1

    .line 319
    :cond_0
    if-lez p1, :cond_1

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    .line 320
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    .line 321
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    if-lez p1, :cond_2

    .line 323
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    .line 327
    :goto_1
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    .line 328
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->containsBase64Byte([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v0, v1

    .line 319
    goto :goto_0

    .line 325
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    goto :goto_1

    .line 332
    :cond_3
    if-eqz p3, :cond_4

    sget-object v0, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    .line 333
    return-void

    .line 332
    :cond_4
    sget-object v0, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 238
    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    .line 239
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 624
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, p0, v1

    .line 626
    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    const/4 v0, 0x1

    .line 630
    :cond_0
    return v0

    .line 624
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 846
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    .prologue
    .line 857
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 974
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1

    .prologue
    .line 801
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 821
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-object p0

    .line 825
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x4c

    move v1, v0

    :goto_1
    if-eqz p1, :cond_3

    sget-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    :goto_2
    invoke-static {p0, v1, v0}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v0

    .line 826
    int-to-long v4, p3

    cmp-long v3, v0, v4

    if-lez v3, :cond_4

    .line 827
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") than the specified maxium size of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move v1, v2

    .line 825
    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/commons/net/util/Base64;->EMPTY_BYTE_ARRAY:[B

    goto :goto_2

    .line 833
    :cond_4
    if-eqz p1, :cond_5

    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0, p2}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    .line 834
    :goto_3
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0

    .line 833
    :cond_5
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v2, v1, p2}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    goto :goto_3
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([BZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    invoke-static {p0, p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64StringUnChunked([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2

    .prologue
    .line 695
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 708
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2

    .prologue
    .line 988
    if-nez p0, :cond_0

    .line 989
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private getBytesUtf8(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 736
    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getEncodeLength([BI[B)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x4

    const-wide/16 v6, 0x0

    .line 947
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v1, v0, 0x4

    .line 949
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    int-to-long v2, v0

    .line 950
    rem-long v4, v2, v8

    .line 951
    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 952
    sub-long v4, v8, v4

    add-long/2addr v2, v4

    .line 954
    :cond_0
    if-lez v1, :cond_2

    .line 955
    int-to-long v4, v1

    rem-long v4, v2, v4

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 956
    :goto_0
    int-to-long v4, v1

    div-long v4, v2, v4

    array-length v1, p2

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 957
    if-nez v0, :cond_2

    .line 958
    array-length v0, p2

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 961
    :goto_1
    return-wide v0

    .line 955
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static isArrayByteBase64([B)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 608
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 609
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 613
    :goto_1
    return v1

    .line 608
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isBase64(B)Z
    .locals 2

    .prologue
    .line 595
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1

    .prologue
    .line 870
    sparse-switch p0, :sswitch_data_0

    .line 877
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 875
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 870
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static newStringUtf8([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 894
    .line 896
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    return-object v0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    .line 1030
    iput v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    .line 1031
    iput v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    .line 1032
    iput v1, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    .line 1033
    iput v1, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    .line 1034
    iput-boolean v1, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    .line 1035
    return-void
.end method

.method private resizeBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-nez v0, :cond_0

    .line 366
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    .line 367
    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    .line 368
    iput v3, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 371
    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 5

    .prologue
    .line 1002
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 1004
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v3, v0, 0x3

    .line 1005
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 1007
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v3, 0x8

    if-ne v0, v1, :cond_0

    move-object v0, v2

    .line 1022
    :goto_0
    return-object v0

    .line 1011
    :cond_0
    const/4 v1, 0x0

    .line 1012
    array-length v0, v2

    .line 1015
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1016
    const/4 v1, 0x1

    .line 1017
    add-int/lit8 v0, v0, -0x1

    .line 1019
    :cond_1
    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v0

    .line 1020
    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 1021
    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 1022
    goto :goto_0
.end method


# virtual methods
.method avail()I
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method decode([BII)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 535
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    if-gez p3, :cond_2

    .line 539
    iput-boolean v5, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    .line 541
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_5

    .line 542
    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    if-ge v1, v2, :cond_4

    .line 543
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    .line 545
    :cond_4
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    .line 546
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_6

    .line 548
    iput-boolean v5, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    .line 569
    :cond_5
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-eqz v0, :cond_0

    .line 570
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    .line 571
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 573
    :pswitch_0
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    .line 574
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 551
    :cond_6
    if-ltz v2, :cond_7

    sget-object v3, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 552
    sget-object v3, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    aget-byte v2, v3, v2

    .line 553
    if-ltz v2, :cond_7

    .line 554
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    .line 555
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    .line 556
    iget v2, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-nez v2, :cond_7

    .line 557
    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 558
    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 559
    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 541
    :cond_7
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_1

    .line 577
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 578
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 731
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/Base64;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 750
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    .line 751
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-object p1

    .line 754
    :cond_1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    .line 755
    long-to-int v0, v0

    new-array v0, v0, [B

    .line 756
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    .line 757
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    .line 758
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    .line 766
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    new-array p1, v0, [B

    .line 767
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method encode([BII)V
    .locals 7

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 447
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    if-gez p3, :cond_5

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    .line 454
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge v0, v1, :cond_3

    .line 455
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    .line 457
    :cond_3
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    packed-switch v0, :pswitch_data_0

    .line 480
    :cond_4
    :goto_1
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lez v0, :cond_0

    .line 481
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    goto :goto_0

    .line 459
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 460
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 462
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_4

    .line 463
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v5, v0, v1

    .line 464
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v5, v0, v1

    goto :goto_1

    .line 469
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0xa

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 470
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 471
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 473
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_4

    .line 474
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v5, v0, v1

    goto/16 :goto_1

    :cond_5
    move v1, v2

    .line 485
    :goto_2
    if-ge v1, p3, :cond_0

    .line 486
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v0, v0

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v0, v3

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge v0, v3, :cond_7

    .line 487
    :cond_6
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    .line 489
    :cond_7
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    .line 490
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 491
    if-gez v0, :cond_8

    .line 492
    add-int/lit16 v0, v0, 0x100

    .line 494
    :cond_8
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    .line 495
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-nez v0, :cond_9

    .line 496
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 497
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 498
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 499
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 500
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    .line 501
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez v0, :cond_9

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    if-gt v0, v4, :cond_9

    .line 502
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v6, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    .line 504
    iput v2, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    .line 485
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_2

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encode([B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 911
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    .line 912
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 931
    :goto_0
    return-object v0

    .line 915
    :cond_1
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v0

    .line 916
    long-to-int v0, v0

    new-array v1, v0, [B

    .line 917
    array-length v0, v1

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    .line 918
    array-length v0, p1

    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    .line 919
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    .line 921
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eq v0, v1, :cond_2

    .line 922
    array-length v0, v1

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    .line 926
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->isUrlSafe()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 927
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    new-array v0, v0, [B

    .line 928
    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLineLength()I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    return v0
.end method

.method getLineSeparator()[B
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method hasData()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlSafe()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readResults([BII)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 389
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->avail()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 391
    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eq v1, p1, :cond_1

    .line 392
    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    .line 394
    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lt v1, v2, :cond_0

    .line 395
    iput-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 400
    :cond_1
    iput-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    goto :goto_0

    .line 404
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setInitialBuffer([BII)V
    .locals 1

    .prologue
    .line 421
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    .line 422
    iput-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    .line 423
    iput p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    .line 424
    iput p2, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    .line 426
    :cond_0
    return-void
.end method
