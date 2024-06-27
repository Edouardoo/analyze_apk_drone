.class public Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yy/MM/dd HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+(?:(\\S+)\\s*)?"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .prologue
    .line 276
    const-string v0, "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+(?:(\\S+)\\s*)?"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 278
    return-void
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 415
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    const/4 v0, 0x1

    .line 418
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 429
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "OS/400"

    const-string v2, "yy/MM/dd HH:mm:ss"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 11

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 285
    new-instance v6, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v6}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 286
    invoke-virtual {v6, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 291
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 292
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 293
    const-string v0, ""

    .line 294
    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_1
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    :try_start_0
    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    :goto_0
    const-string v10, "*STMF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 316
    invoke-direct {p0, v8}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_2
    move-object v0, v5

    .line 404
    :goto_1
    return-object v0

    .line 321
    :cond_3
    const-string v10, "*DIR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 324
    invoke-direct {p0, v8}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_4
    move-object v0, v5

    .line 326
    goto :goto_1

    .line 329
    :cond_5
    const-string v10, "*FILE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 338
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".SAVF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    move v4, v2

    .line 374
    :goto_2
    invoke-virtual {v6, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 376
    invoke-virtual {v6, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 380
    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 387
    :goto_3
    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 389
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 391
    :goto_4
    if-eqz v0, :cond_d

    .line 393
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 394
    const/4 v2, -0x1

    if-le v0, v2, :cond_d

    .line 396
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    :goto_5
    invoke-virtual {v6, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    move-object v0, v6

    .line 402
    goto :goto_1

    :cond_6
    move-object v0, v5

    .line 345
    goto :goto_1

    .line 348
    :cond_7
    const-string v10, "*MEM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 353
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v5

    .line 355
    goto :goto_1

    .line 357
    :cond_8
    invoke-direct {p0, v8}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    move-object v0, v5

    .line 359
    goto/16 :goto_1

    .line 367
    :cond_a
    const/16 v0, 0x2f

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move v0, v2

    move-object v3, v1

    move v4, v2

    goto :goto_2

    :cond_b
    move v0, v1

    .line 371
    goto :goto_2

    :cond_c
    move-object v0, v5

    .line 404
    goto/16 :goto_1

    .line 382
    :catch_0
    move-exception v1

    goto :goto_3

    .line 307
    :catch_1
    move-exception v10

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    goto :goto_5

    :cond_e
    move-object v1, v3

    goto :goto_4

    :cond_f
    move v0, v1

    move v4, v1

    goto :goto_2

    :cond_10
    move v0, v1

    move v4, v2

    goto :goto_2
.end method
