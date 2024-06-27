.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string v0, "SJIS"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Hashtable;)Ljava/lang/String;
    .locals 14

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, -0x11

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/16 v1, -0x45

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v1, -0x41

    if-ne v0, v1, :cond_1

    const-string v0, "UTF8"

    goto :goto_0

    :cond_1
    array-length v13, p0

    const/4 v6, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v11, v1

    move v12, v2

    :goto_1
    if-ge v11, v13, :cond_15

    if-nez v6, :cond_2

    if-nez v4, :cond_2

    if-eqz v3, :cond_15

    :cond_2
    aget-byte v1, p0, v11

    and-int/lit16 v10, v1, 0xff

    const/16 v1, 0x80

    if-lt v10, v1, :cond_e

    const/16 v1, 0xbf

    if-gt v10, v1, :cond_e

    if-lez v9, :cond_3

    add-int/lit8 v1, v9, -0x1

    move v9, v1

    :cond_3
    :goto_2
    const/16 v1, 0xc2

    if-eq v10, v1, :cond_4

    const/16 v1, 0xc3

    if-ne v10, v1, :cond_7

    :cond_4
    add-int/lit8 v1, v13, -0x1

    if-ge v11, v1, :cond_7

    add-int/lit8 v1, v11, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xbf

    if-gt v1, v2, :cond_7

    const/16 v2, 0xc2

    if-ne v10, v2, :cond_5

    const/16 v2, 0xa0

    if-ge v1, v2, :cond_6

    :cond_5
    const/16 v2, 0xc3

    if-ne v10, v2, :cond_7

    const/16 v2, 0x80

    if-lt v1, v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    move v7, v1

    :cond_7
    const/16 v1, 0x7f

    if-lt v10, v1, :cond_8

    const/16 v1, 0x9f

    if-gt v10, v1, :cond_8

    const/4 v1, 0x0

    move v6, v1

    :cond_8
    const/16 v1, 0xa1

    if-lt v10, v1, :cond_9

    const/16 v1, 0xdf

    if-gt v10, v1, :cond_9

    if-nez v12, :cond_9

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    :cond_9
    if-nez v12, :cond_1c

    const/16 v1, 0xf0

    if-lt v10, v1, :cond_a

    const/16 v1, 0xff

    if-le v10, v1, :cond_b

    :cond_a
    const/16 v1, 0x80

    if-eq v10, v1, :cond_b

    const/16 v1, 0xa0

    if-ne v10, v1, :cond_1c

    :cond_b
    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x81

    if-lt v10, v2, :cond_c

    const/16 v2, 0x9f

    if-le v10, v2, :cond_d

    :cond_c
    const/16 v2, 0xe0

    if-lt v10, v2, :cond_14

    const/16 v2, 0xef

    if-gt v10, v2, :cond_14

    :cond_d
    if-eqz v12, :cond_10

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    move v12, v2

    move v4, v1

    goto/16 :goto_1

    :cond_e
    if-lez v9, :cond_f

    const/4 v3, 0x0

    :cond_f
    const/16 v1, 0xc0

    if-lt v10, v1, :cond_3

    const/16 v1, 0xfd

    if-gt v10, v1, :cond_3

    const/4 v1, 0x1

    move v8, v10

    move v2, v9

    :goto_5
    and-int/lit8 v9, v8, 0x40

    if-eqz v9, :cond_1d

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_10
    const/4 v2, 0x1

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-lt v11, v4, :cond_11

    const/4 v1, 0x0

    goto :goto_4

    :cond_11
    add-int/lit8 v4, v11, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v10, 0x40

    if-lt v4, v10, :cond_12

    const/16 v10, 0xfc

    if-le v4, v10, :cond_13

    :cond_12
    const/4 v1, 0x0

    goto :goto_4

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    const/4 v2, 0x0

    goto :goto_4

    :cond_15
    if-lez v9, :cond_1b

    const/4 v1, 0x0

    :goto_6
    if-eqz v4, :cond_16

    sget-boolean v2, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-eqz v2, :cond_16

    const-string v0, "SJIS"

    goto/16 :goto_0

    :cond_16
    if-eqz v1, :cond_17

    if-eqz v8, :cond_17

    const-string v0, "UTF8"

    goto/16 :goto_0

    :cond_17
    if-eqz v4, :cond_19

    const/4 v1, 0x3

    if-ge v0, v1, :cond_18

    mul-int/lit8 v0, v5, 0x14

    if-le v0, v13, :cond_19

    :cond_18
    const-string v0, "SJIS"

    goto/16 :goto_0

    :cond_19
    if-nez v7, :cond_1a

    if-eqz v6, :cond_1a

    const-string v0, "ISO8859_1"

    goto/16 :goto_0

    :cond_1a
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1b
    move v1, v3

    goto :goto_6

    :cond_1c
    move v1, v4

    goto :goto_3

    :cond_1d
    move v8, v1

    move v9, v2

    goto/16 :goto_2
.end method
