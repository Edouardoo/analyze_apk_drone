.class public Lcom/fh/util/BufChangeHex;
.super Ljava/lang/Object;
.source "BufChangeHex.java"


# static fields
.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 16
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fh/util/BufChangeHex;->DIGITS_LOWER:[C

    .line 17
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/fh/util/BufChangeHex;->DIGITS_UPPER:[C

    return-void

    .line 16
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 17
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static ArryToDouble([BI)D
    .locals 5
    .param p0, "Array"    # [B
    .param p1, "Pos"    # I

    .prologue
    .line 445
    const-wide/16 v0, 0x0

    .line 446
    .local v0, "accum":J
    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v0, v2

    .line 447
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 448
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 449
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 450
    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 451
    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 452
    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 453
    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 454
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static ArryToFloat([BI)F
    .locals 6
    .param p0, "Array"    # [B
    .param p1, "Pos"    # I

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "accum":I
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0xff

    .line 476
    int-to-long v2, v0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 477
    int-to-long v2, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 478
    int-to-long v2, v0

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 479
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static DoubleToArray(D)[B
    .locals 10
    .param p0, "Value"    # D

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 459
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 460
    .local v0, "accum":J
    new-array v2, v8, [B

    .line 461
    .local v2, "byteRet":[B
    const/4 v3, 0x0

    and-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 462
    const/4 v3, 0x1

    shr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 463
    const/4 v3, 0x2

    const/16 v4, 0x10

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 464
    const/4 v3, 0x3

    const/16 v4, 0x18

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 465
    const/4 v3, 0x4

    const/16 v4, 0x20

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 466
    const/4 v3, 0x5

    const/16 v4, 0x28

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 467
    const/4 v3, 0x6

    const/16 v4, 0x30

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 468
    const/4 v3, 0x7

    const/16 v4, 0x38

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 469
    return-object v2
.end method

.method public static FloatToArray(F)[B
    .locals 4
    .param p0, "Value"    # F

    .prologue
    .line 484
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 485
    .local v0, "accum":I
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 486
    .local v1, "byteRet":[B
    const/4 v2, 0x0

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 487
    const/4 v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 488
    const/4 v2, 0x2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 489
    const/4 v2, 0x3

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 490
    return-object v1
.end method

.method public static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 507
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

    .line 508
    return-void
.end method

.method public static bitsToByte(Ljava/lang/String;)B
    .locals 6
    .param p0, "byteStr"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 536
    if-nez p0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v2

    .line 539
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 540
    .local v0, "len":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-ne v0, v5, :cond_0

    .line 543
    :cond_2
    if-ne v0, v5, :cond_4

    .line 544
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    .line 545
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 552
    .local v1, "re":I
    :goto_1
    int-to-byte v2, v1

    goto :goto_0

    .line 547
    .end local v1    # "re":I
    :cond_3
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit16 v1, v2, -0x100

    .restart local v1    # "re":I
    goto :goto_1

    .line 550
    .end local v1    # "re":I
    :cond_4
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "re":I
    goto :goto_1
.end method

.method public static byte2File([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "buf"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 198
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 200
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 202
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v4, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    const/4 v7, 0x1

    .line 211
    if-eqz v1, :cond_1

    .line 213
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 218
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 220
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 209
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_3
    :goto_2
    return v7

    .line 214
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 222
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 208
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    const/4 v7, 0x0

    .line 211
    if-eqz v0, :cond_4

    .line 213
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 218
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 220
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 221
    :catch_3
    move-exception v3

    .line 222
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 214
    .local v3, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 215
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 211
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_5

    .line 213
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 218
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 220
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 223
    :cond_6
    :goto_7
    throw v7

    .line 214
    :catch_5
    move-exception v3

    .line 215
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 221
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 222
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 211
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 207
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3
.end method

.method public static byteToBit(B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x7

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x1

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p0, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToFile([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "buf"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 233
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 237
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v4, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 241
    const/4 v7, 0x1

    .line 246
    if-eqz v1, :cond_1

    .line 248
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 253
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 255
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 244
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_3
    :goto_2
    return v7

    .line 249
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 250
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 257
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 243
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 244
    const/4 v7, 0x0

    .line 246
    if-eqz v0, :cond_4

    .line 248
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 253
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 255
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 256
    :catch_3
    move-exception v3

    .line 257
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 249
    .local v3, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 250
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_5

    .line 248
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 253
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 255
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 258
    :cond_6
    :goto_7
    throw v7

    .line 249
    :catch_5
    move-exception v3

    .line 250
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 256
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 257
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 242
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3
.end method

.method public static byteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 91
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static byteToInt(BB)I
    .locals 2
    .param p0, "byte0"    # B
    .param p1, "byte1"    # B

    .prologue
    .line 105
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 106
    .local v0, "a":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 107
    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 108
    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->bytesToInt([B)I

    move-result v1

    return v1
.end method

.method public static byteToInt(BBBB)I
    .locals 2
    .param p0, "byte0"    # B
    .param p1, "byte1"    # B
    .param p2, "byte2"    # B
    .param p3, "byte3"    # B

    .prologue
    .line 112
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 113
    .local v0, "a":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 114
    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 115
    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 116
    const/4 v1, 0x3

    aput-byte p3, v0, v1

    .line 117
    invoke-static {v0}, Lcom/fh/util/BufChangeHex;->bytesToInt([B)I

    move-result v1

    return v1
.end method

.method public static byteToInt2([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 413
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static byteToShort(B)S
    .locals 4
    .param p0, "b"    # B

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "s":S
    and-int/lit16 v3, p0, 0xff

    int-to-short v1, v3

    .line 98
    .local v1, "s0":S
    const/4 v2, 0x0

    .line 99
    .local v2, "s1":S
    const/4 v3, 0x0

    int-to-short v2, v3

    .line 100
    or-int v3, v1, v2

    int-to-short v0, v3

    .line 101
    return v0
.end method

.method public static bytesToInt([B)I
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const v5, 0xff00

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    array-length v1, p0

    if-ne v1, v2, :cond_0

    .line 123
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v4

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v5

    or-int v0, v1, v2

    .line 130
    .local v0, "addr":I
    :goto_0
    return v0

    .line 125
    .end local v0    # "addr":I
    :cond_0
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    aget-byte v2, p0, v3

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aget-byte v2, p0, v4

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .restart local v0    # "addr":I
    goto :goto_0
.end method

.method public static bytesToInt2([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 379
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 380
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static combinDataStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "drs"    # Ljava/lang/String;
    .param p1, "newstr"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v1, ""

    .line 309
    .local v1, "newFileName":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v2, v1

    .end local v1    # "newFileName":Ljava/lang/String;
    .local v2, "newFileName":Ljava/lang/String;
    move-object v3, v1

    .line 321
    .end local v2    # "newFileName":Ljava/lang/String;
    .local v3, "newFileName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 311
    .end local v3    # "newFileName":Ljava/lang/String;
    .restart local v1    # "newFileName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 312
    :cond_2
    move-object v1, p0

    move-object v2, v1

    .end local v1    # "newFileName":Ljava/lang/String;
    .restart local v2    # "newFileName":Ljava/lang/String;
    move-object v3, v1

    .line 313
    .end local v2    # "newFileName":Ljava/lang/String;
    .restart local v3    # "newFileName":Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v3    # "newFileName":Ljava/lang/String;
    .restart local v1    # "newFileName":Ljava/lang/String;
    :cond_3
    :try_start_0
    const-string v5, "\\."

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "strs":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v4    # "strs":[Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .end local v1    # "newFileName":Ljava/lang/String;
    .restart local v2    # "newFileName":Ljava/lang/String;
    move-object v3, v1

    .line 321
    .end local v2    # "newFileName":Ljava/lang/String;
    .restart local v3    # "newFileName":Ljava/lang/String;
    goto :goto_0

    .line 318
    .end local v3    # "newFileName":Ljava/lang/String;
    .restart local v1    # "newFileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static convertFourSignInt(BBBB)I
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B

    .prologue
    .line 144
    shl-int/lit8 v0, p3, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static convertFoutUnsignLong(BBBB)J
    .locals 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B

    .prologue
    .line 159
    and-int/lit16 v0, p3, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-int/lit16 v2, p2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    and-int/lit16 v2, p1, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    and-int/lit16 v2, p0, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertIntToAscii(I)C
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 360
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

.method public static convertTwoSignInt(BB)I
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .prologue
    .line 137
    shl-int/lit8 v0, p1, 0x8

    and-int/lit16 v1, p0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static convertTwoUnsignInt(BB)I
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .prologue
    .line 152
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static decodeHex([C)[B
    .locals 7
    .param p0, "data"    # [C

    .prologue
    .line 70
    array-length v3, p0

    .line 71
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 72
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Odd number of characters."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_0
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .line 75
    .local v4, "out":[B
    const/4 v1, 0x0

    .line 77
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 78
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/fh/util/BufChangeHex;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .line 79
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 80
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/fh/util/BufChangeHex;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "f":I
    :cond_1
    return-object v4
.end method

.method public static encodeHex([B)[C
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fh/util/BufChangeHex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .prologue
    .line 27
    if-eqz p1, :cond_0

    sget-object v0, Lcom/fh/util/BufChangeHex;->DIGITS_LOWER:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/fh/util/BufChangeHex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/fh/util/BufChangeHex;->DIGITS_UPPER:[C

    goto :goto_0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .prologue
    .line 31
    array-length v3, p0

    .line 32
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v3

    new-array v4, v5, [C

    .line 33
    .local v4, "out":[C
    const/4 v0, 0x0

    .line 35
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 36
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v2

    .line 37
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v4, v1

    .line 38
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    const/16 v5, 0x20

    aput-char v5, v4, v2

    .line 35
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 41
    :cond_0
    return-object v4
.end method

.method protected static encodeHex2([B[C)[C
    .locals 6
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .prologue
    .line 45
    array-length v3, p0

    .line 46
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 47
    .local v4, "out":[C
    const/4 v0, 0x0

    .line 49
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 50
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v2

    .line 51
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v4, v1

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-object v4
.end method

.method public static encodeHexStr([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fh/util/BufChangeHex;->encodeHexStr([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHexStr([BZ)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    sget-object v0, Lcom/fh/util/BufChangeHex;->DIGITS_LOWER:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/fh/util/BufChangeHex;->encodeHexStr([B[C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/fh/util/BufChangeHex;->DIGITS_UPPER:[C

    goto :goto_0
.end method

.method protected static encodeHexStr([B[C)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .prologue
    .line 66
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/fh/util/BufChangeHex;->encodeHex([B[C)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getBooleanArray(B)[B
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 523
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 524
    .local v0, "array":[B
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 525
    and-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 526
    shr-int/lit8 v2, p0, 0x1

    int-to-byte p0, v2

    .line 524
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 528
    :cond_0
    return-object v0
.end method

.method public static getLong([BZ)J
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "asc"    # Z

    .prologue
    const/16 v6, 0x8

    .line 164
    if-nez p0, :cond_0

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "byte array is null!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    array-length v1, p0

    if-le v1, v6, :cond_1

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "byte array size > 8 !"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_1
    const-wide/16 v2, 0x0

    .line 171
    .local v2, "r":J
    if-eqz p1, :cond_2

    .line 172
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 173
    shl-long/2addr v2, v6

    .line 174
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 172
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 178
    shl-long/2addr v2, v6

    .line 179
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_3
    return-wide v2
.end method

.method public static getVideoDuration(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "drs"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    const/4 v4, 0x0

    move-object v1, v0

    .line 276
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 268
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 269
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "strs":[Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v2, v3, v4

    .line 271
    .local v2, "str":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 272
    const-string v7, "\\."

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v5

    .line 270
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strs":[Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    move-object v4, v0

    .line 276
    goto :goto_0
.end method

.method public static getVideoThumb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 281
    const/4 v4, 0x0

    .line 282
    .local v4, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v5, v4

    .line 304
    .end local v4    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 287
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_1
    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 288
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "flagFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v3, "folderFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 295
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v6, v1

    if-lez v6, :cond_2

    .line 296
    array-length v8, v1

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v0, v1, v6

    .line 297
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    move-object v5, v4

    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    move-object v6, v4

    .line 304
    goto :goto_0

    .end local v2    # "flagFileName":Ljava/lang/String;
    .end local v3    # "folderFile":Ljava/io/File;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_3
    move-object v5, v4

    .line 290
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_0

    .line 296
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "flagFileName":Ljava/lang/String;
    .restart local v3    # "folderFile":Ljava/io/File;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static intToBytes(I)[B
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 369
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static intToBytes1(I)[B
    .locals 5
    .param p0, "n"    # I

    .prologue
    const/4 v4, 0x2

    .line 399
    new-array v1, v4, [B

    .line 400
    .local v1, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 401
    move v0, p0

    .line 402
    .local v0, "a":I
    mul-int/lit8 v3, v2, 0x8

    shr-int v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "a":I
    :cond_0
    return-object v1
.end method

.method public static intToBytes2(I)[B
    .locals 5
    .param p0, "n"    # I

    .prologue
    const/4 v4, 0x4

    .line 390
    new-array v1, v4, [B

    .line 391
    .local v1, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 392
    move v0, p0

    .line 393
    .local v0, "a":I
    mul-int/lit8 v3, v2, 0x8

    rsub-int/lit8 v3, v3, 0x18

    shr-int v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "a":I
    :cond_0
    return-object v1
.end method

.method public static isFastDoubleClick(I)Z
    .locals 8
    .param p0, "delayTime"    # I

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 345
    .local v0, "time":J
    sget-wide v4, Lcom/fh/util/BufChangeHex;->lastClickTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 346
    sput-wide v0, Lcom/fh/util/BufChangeHex;->lastClickTime:J

    .line 354
    :goto_0
    return v2

    .line 349
    :cond_0
    sget-wide v4, Lcom/fh/util/BufChangeHex;->lastClickTime:J

    sub-long v4, v0, v4

    int-to-long v6, p0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 350
    sput-wide v0, Lcom/fh/util/BufChangeHex;->lastClickTime:J

    goto :goto_0

    .line 353
    :cond_1
    sput-wide v0, Lcom/fh/util/BufChangeHex;->lastClickTime:J

    .line 354
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static readSDCard()J
    .locals 12

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "state":Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 330
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 331
    .local v6, "sdcardDir":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 332
    .local v7, "sf":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v4, v9

    .line 333
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v2, v9

    .line 334
    .local v2, "blockCount":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 337
    .local v0, "availCount":J
    mul-long v10, v0, v4

    .line 339
    .end local v0    # "availCount":J
    .end local v2    # "blockCount":J
    .end local v4    # "blockSize":J
    .end local v6    # "sdcardDir":Ljava/io/File;
    .end local v7    # "sf":Landroid/os/StatFs;
    :goto_0
    return-wide v10

    :cond_0
    const-wide/16 v10, -0x1

    goto :goto_0
.end method

.method public static saveByte([BIIILjava/io/FileOutputStream;)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "type"    # I
    .param p2, "leng"    # I
    .param p3, "number"    # I
    .param p4, "outputStream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 417
    invoke-static {p1}, Lcom/fh/util/BufChangeHex;->intToBytes2(I)[B

    move-result-object v4

    .line 418
    .local v4, "typeI":[B
    invoke-static {p3}, Lcom/fh/util/BufChangeHex;->intToBytes2(I)[B

    move-result-object v1

    .line 419
    .local v1, "fnumber":[B
    invoke-static {p2}, Lcom/fh/util/BufChangeHex;->intToBytes2(I)[B

    move-result-object v3

    .line 420
    .local v3, "length":[B
    move-object v2, p0

    .line 421
    .local v2, "frame":[B
    if-nez p4, :cond_0

    .line 441
    :goto_0
    return-void

    .line 432
    :cond_0
    :try_start_0
    invoke-virtual {p4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 433
    invoke-virtual {p4, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 434
    invoke-virtual {p4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 435
    invoke-virtual {p4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 436
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I

    .prologue
    .line 185
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 186
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal hexadecimal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    return v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 496
    if-nez p0, :cond_0

    .line 497
    const-string v2, ""

    .line 503
    :goto_0
    return-object v2

    .line 498
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 499
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 501
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/fh/util/BufChangeHex;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 503
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
