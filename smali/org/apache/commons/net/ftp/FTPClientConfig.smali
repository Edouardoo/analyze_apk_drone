.class public Lorg/apache/commons/net/ftp/FTPClientConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LANGUAGE_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYST_AS400:Ljava/lang/String; = "AS/400"

.field public static final SYST_L8:Ljava/lang/String; = "TYPE: L8"

.field public static final SYST_MACOS_PETER:Ljava/lang/String; = "MACOS PETER"

.field public static final SYST_MVS:Ljava/lang/String; = "MVS"

.field public static final SYST_NETWARE:Ljava/lang/String; = "NETWARE"

.field public static final SYST_NT:Ljava/lang/String; = "WINDOWS"

.field public static final SYST_OS2:Ljava/lang/String; = "OS/2"

.field public static final SYST_OS400:Ljava/lang/String; = "OS/400"

.field public static final SYST_UNIX:Ljava/lang/String; = "UNIX"

.field public static final SYST_UNIX_TRIM_LEADING:Ljava/lang/String; = "UNIX_LTRIM"

.field public static final SYST_VMS:Ljava/lang/String; = "VMS"


# instance fields
.field private defaultDateFormatStr:Ljava/lang/String;

.field private lenientFutureDates:Z

.field private recentDateFormatStr:Ljava/lang/String;

.field private saveUnparseableEntries:Z

.field private serverLanguageCode:Ljava/lang/String;

.field private final serverSystemKey:Ljava/lang/String;

.field private serverTimeZoneId:Ljava/lang/String;

.field private shortMonthNames:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 334
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    .line 344
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "en"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "de"

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "it"

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "es"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "pt"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "da"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "da"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sv"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sv"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "no"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "no"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "nl"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "nl"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "ro"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ro"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sq"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sq"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sh"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sh"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sk"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sk"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sl"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sl"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "jan|f\u00e9v|mar|avr|mai|jun|jui|ao\u00fb|sep|oct|nov|d\u00e9c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 249
    const-string v0, "UNIX"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 226
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 227
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 241
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 276
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 277
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 278
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 279
    iput-object p5, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 280
    iput-object p6, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 313
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 314
    iput-boolean p7, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 315
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 316
    iput-boolean p8, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 317
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 318
    iput-object p5, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 319
    iput-object p6, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 320
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 226
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 227
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 324
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    .line 325
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 326
    iget-boolean v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 327
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 328
    iget-boolean v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 329
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 330
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 331
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public static getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 3

    .prologue
    .line 616
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 617
    new-instance v1, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 618
    invoke-virtual {v1, v0}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    .line 619
    return-object v1
.end method

.method public static getSupportedLanguageCodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 2

    .prologue
    .line 595
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_1

    .line 597
    instance-of v1, v0, Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 598
    new-instance v1, Ljava/text/DateFormatSymbols;

    check-cast v0, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    move-object v0, v1

    .line 603
    :goto_0
    return-object v0

    .line 599
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 600
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    goto :goto_0

    .line 603
    :cond_1
    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private static splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 623
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "|"

    invoke-direct {v2, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 625
    const/16 v1, 0xc

    if-eq v1, v0, :cond_0

    .line 626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expecting a pipe-delimited string containing 12 tokens"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    const/16 v0, 0xd

    new-array v3, v0, [Ljava/lang/String;

    .line 630
    const/4 v0, 0x0

    .line 631
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    goto :goto_0

    .line 634
    :cond_1
    const-string v1, ""

    aput-object v1, v3, v0

    .line 635
    return-object v3
.end method


# virtual methods
.method public getDefaultDateFormatStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentDateFormatStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getServerLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSystemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimeZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonthNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-object v0
.end method

.method public getUnparseableEntries()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    return v0
.end method

.method public isLenientFutureDates()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    return v0
.end method

.method public setDefaultDateFormatStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public setLenientFutureDates(Z)V
    .locals 0

    .prologue
    .line 496
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 497
    return-void
.end method

.method public setRecentDateFormatStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setServerLanguageCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 579
    return-void
.end method

.method public setServerTimeZoneId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public setShortMonthNames(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public setUnparseableEntries(Z)V
    .locals 0

    .prologue
    .line 659
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 660
    return-void
.end method
