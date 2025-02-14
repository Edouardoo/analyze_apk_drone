.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;


# static fields
.field private static final BINARY:I = 0x5

.field private static final DIGIT:I = 0x3

.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER:I = 0x1

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED:I = 0x2

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final NB_BITS:[I

.field private static final NB_BITS_COMPACT:[I

.field private static final NB_DATABLOCK:[I

.field private static final NB_DATABLOCK_COMPACT:[I

.field private static final PUNCT:I = 0x4

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER:I

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private codewordSize:I

.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

.field private invertedBitCount:I

.field private numCodewords:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "A"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "C"

    aput-object v2, v0, v1

    const-string v1, "D"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "a"

    aput-object v1, v0, v6

    const-string v1, "b"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "c"

    aput-object v2, v0, v1

    const-string v1, "d"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "\u0001"

    aput-object v1, v0, v6

    const-string v1, "\u0002"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0003"

    aput-object v2, v0, v1

    const-string v1, "\u0004"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "\u0005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0006"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0007"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0008"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u000b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u000c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u001b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u001c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u001d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u001e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u001f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u007f"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\r\n"

    aput-object v1, v0, v6

    const-string v1, ". "

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, ", "

    aput-object v2, v0, v1

    const-string v1, ": "

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "2"

    aput-object v2, v0, v1

    const-string v1, "3"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x68
        0xf0
        0x198
        0x260
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x80
        0x120
        0x1e0
        0x2c0
        0x3c0
        0x4e0
        0x620
        0x780
        0x900
        0xaa0
        0xc60
        0xe40
        0x1040
        0x1260
        0x14a0
        0x1700
        0x1980
        0x1c20
        0x1ee0
        0x21c0
        0x24c0
        0x27e0
        0x2b20
        0x2e80
        0x3200
        0x35a0
        0x3960
        0x3d40
        0x4140
        0x4560
        0x49a0
        0x4e00
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x11
        0x28
        0x33
        0x4c
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x15
        0x30
        0x3c
        0x58
        0x78
        0x9c
        0xc4
        0xf0
        0xe6
        0x110
        0x13c
        0x16c
        0x1a0
        0x1d6
        0x210
        0x24c
        0x28c
        0x2d0
        0x316
        0x360
        0x3ac
        0x3fc
        0x398
        0x3e0
        0x42a
        0x478
        0x4c8
        0x51a
        0x570
        0x5c8
        0x622
        0x680
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private correctBits([Z)[Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v9

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iget v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    aget v2, v2, v3

    sub-int/2addr v2, v9

    :goto_1
    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    new-array v10, v3, [I

    move v3, v4

    :goto_2
    iget v5, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    if-ge v3, v5, :cond_6

    move v5, v6

    move v7, v6

    :goto_3
    iget v8, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    if-gt v5, v8, :cond_5

    iget v8, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int/2addr v8, v3

    iget v11, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    add-int/2addr v8, v11

    sub-int/2addr v8, v5

    add-int/2addr v8, v1

    aget-boolean v8, p1, v8

    if-eqz v8, :cond_0

    aget v8, v10, v3

    add-int/2addr v8, v7

    aput v8, v10, v3

    :cond_0
    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    if-gt v0, v2, :cond_2

    iput v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_3

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_3
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iget v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    aget v2, v2, v3

    sub-int/2addr v2, v9

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :try_start_0
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v1, v10, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    iput v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    iget v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int/2addr v0, v9

    new-array v11, v0, [Z

    move v8, v4

    move v5, v4

    :goto_4
    if-ge v8, v9, :cond_c

    iget v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    add-int/lit8 v0, v0, -0x1

    shl-int v1, v6, v0

    move v0, v4

    move v2, v4

    move v3, v4

    :goto_5
    iget v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    if-ge v0, v7, :cond_b

    aget v7, v10, v8

    and-int/2addr v7, v1

    if-ne v7, v1, :cond_7

    move v7, v6

    :goto_6
    iget v12, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    add-int/lit8 v12, v12, -0x1

    if-ne v2, v12, :cond_9

    if-ne v7, v3, :cond_8

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_7
    move v7, v4

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    iget v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    move v2, v4

    move v3, v4

    :goto_7
    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    if-ne v3, v7, :cond_a

    add-int/lit8 v2, v2, 0x1

    :goto_8
    iget v12, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int/2addr v12, v8

    add-int/2addr v12, v0

    sub-int/2addr v12, v5

    aput-boolean v7, v11, v12

    goto :goto_7

    :cond_a
    move v2, v6

    move v3, v7

    goto :goto_8

    :cond_b
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4

    :cond_c
    return-object v11
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    aget v0, v0, v1

    new-array v0, v0, [Z

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    iget v1, p1, Lcom/google/zxing/common/BitMatrix;->height:I

    move v4, v3

    move v5, v3

    move v6, v1

    move v7, v2

    :goto_1
    if-eqz v7, :cond_5

    move v1, v3

    move v2, v3

    :goto_2
    mul-int/lit8 v8, v6, 0x2

    add-int/lit8 v8, v8, -0x4

    if-ge v1, v8, :cond_3

    add-int v8, v5, v1

    add-int v9, v4, v2

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v10, v4

    invoke-virtual {p1, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x4

    add-int/2addr v8, v1

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v4

    add-int v10, v4, v6

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v2

    invoke-virtual {p1, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v1

    aget v0, v0, v1

    new-array v0, v0, [Z

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    goto :goto_0

    :cond_3
    mul-int/lit8 v1, v6, 0x2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    :goto_3
    const/4 v8, 0x5

    if-le v1, v8, :cond_4

    mul-int/lit8 v8, v6, 0x4

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x8

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v1

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    add-int v9, v4, v6

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v2

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    mul-int/lit8 v8, v6, 0x6

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, -0xc

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v1

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    add-int v10, v4, v2

    invoke-virtual {p1, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    aput-boolean v9, v0, v8

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v4, 0x2

    mul-int/lit8 v2, v6, 0x8

    add-int/lit8 v2, v2, -0x10

    add-int/2addr v2, v5

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x4

    move v4, v1

    move v5, v2

    goto/16 :goto_1

    :cond_5
    return-object v0
.end method

.method private static getCharacter(II)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getEncodedData([Z)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v13, 0x8

    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v10, 0x0

    iget v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v2

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    sub-int v11, v0, v2

    array-length v0, p1

    if-le v11, v0, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v12, Ljava/lang/StringBuffer;

    const/16 v0, 0x14

    invoke-direct {v12, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v5, v10

    move v0, v10

    move v2, v10

    move v3, v10

    move v4, v10

    move v9, v10

    :goto_0
    if-nez v2, :cond_6

    if-eqz v0, :cond_2

    move v7, v1

    move v8, v9

    :goto_1
    packed-switch v4, :pswitch_data_0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    const/4 v5, 0x4

    :goto_2
    sub-int v9, v11, v3

    if-ge v9, v5, :cond_4

    move v2, v1

    :cond_1
    :goto_3
    if-eqz v7, :cond_7

    move v5, v10

    move v0, v10

    move v4, v8

    move v9, v8

    goto :goto_0

    :cond_2
    move v7, v5

    move v8, v4

    goto :goto_1

    :pswitch_0
    sub-int v5, v11, v3

    if-ge v5, v13, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-static {p1, v3, v13}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v5

    add-int/lit8 v3, v3, 0x8

    int-to-char v5, v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    invoke-static {p1, v3, v5}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v9

    add-int/2addr v3, v5

    invoke-static {v4, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(II)Ljava/lang/String;

    move-result-object v5

    const-string v9, "CTRL_"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)I

    move-result v4

    const/4 v9, 0x6

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x53

    if-ne v5, v9, :cond_1

    move v0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    move v5, v7

    move v9, v8

    goto :goto_0

    :cond_8
    move v5, v6

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private static getTable(C)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x44 -> :sswitch_4
        0x4c -> :sswitch_1
        0x4d -> :sswitch_3
        0x50 -> :sswitch_2
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method private static readCode([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    sub-int v0, v3, v0

    invoke-direct {v5, v2, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v0, v3, :cond_4

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    rem-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    move v4, v1

    :goto_2
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v3, v6, :cond_3

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    rem-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v2, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v5
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-direct {v1, v2, v0, v2, v2}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V

    return-object v1
.end method
