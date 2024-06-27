.class public Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/ftp/Configurable;
.implements Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;


# static fields
.field private static final CALENDAR_UNITS:[I


# instance fields
.field private defaultDateFormat:Ljava/text/SimpleDateFormat;

.field private defaultDateSmallestUnitIndex:I

.field private lenientFutureDates:Z

.field private recentDateFormat:Ljava/text/SimpleDateFormat;

.field private recentDateSmallestUnitIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->CALENDAR_UNITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xe
        0xd
        0xc
        0xb
        0x5
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    .line 146
    const-string v0, "MMM d yyyy"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setDefaultDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 147
    const-string v0, "MMM d HH:mm"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setRecentDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 148
    return-void
.end method

.method private static getEntry(Ljava/text/SimpleDateFormat;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const-string v1, "SsmHdM"

    .line 87
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v1, "SsmHdM"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-char v5, v3, v1

    .line 89
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 90
    sparse-switch v5, :sswitch_data_0

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    :sswitch_0
    const/16 v0, 0xe

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    goto :goto_0

    .line 94
    :sswitch_1
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    goto :goto_0

    .line 96
    :sswitch_2
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    goto :goto_0

    .line 98
    :sswitch_3
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    goto :goto_0

    .line 100
    :sswitch_4
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    goto :goto_0

    .line 102
    :sswitch_5
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_3
        0x4d -> :sswitch_5
        0x53 -> :sswitch_0
        0x64 -> :sswitch_4
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method private static indexOf(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 114
    move v0, v1

    :goto_0
    sget-object v2, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->CALENDAR_UNITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 115
    sget-object v2, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->CALENDAR_UNITS:[I

    aget v2, v2, v0

    if-ne p0, v2, :cond_0

    .line 119
    :goto_1
    return v0

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 119
    goto :goto_1
.end method

.method private setDefaultDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2

    .prologue
    .line 269
    if-eqz p1, :cond_1

    .line 270
    if-eqz p2, :cond_0

    .line 271
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    .line 275
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 279
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getEntry(Ljava/text/SimpleDateFormat;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateSmallestUnitIndex:I

    .line 280
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_1
.end method

.method private static setPrecision(ILjava/util/Calendar;)V
    .locals 2

    .prologue
    .line 128
    if-gtz p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-object v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->CALENDAR_UNITS:[I

    add-int/lit8 v1, p0, -0x1

    aget v0, v0, v1

    .line 134
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 135
    if-nez v1, :cond_0

    .line 138
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->clear(I)V

    goto :goto_0
.end method

.method private setRecentDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2

    .prologue
    .line 298
    if-eqz p1, :cond_1

    .line 299
    if-eqz p2, :cond_0

    .line 300
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    .line 304
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 308
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getEntry(Ljava/text/SimpleDateFormat;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateSmallestUnitIndex:I

    .line 309
    return-void

    .line 302
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_1
.end method

.method private setServerTimeZone(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 334
    if-eqz p1, :cond_0

    .line 335
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 337
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 338
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 341
    :cond_1
    return-void
.end method


# virtual methods
.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 2

    .prologue
    .line 368
    .line 370
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getShortMonthNames()Ljava/lang/String;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_0

    .line 373
    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 381
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getRecentDateFormatStr()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setRecentDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 384
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDefaultDateFormatStr()Ljava/lang/String;

    move-result-object v1

    .line 385
    if-nez v1, :cond_2

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultFormatString cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    if-eqz v0, :cond_1

    .line 375
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    const-string v0, "en"

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_2
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setDefaultDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 390
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setServerTimeZone(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->isLenientFutureDates()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    .line 393
    return-void
.end method

.method public getDefaultDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getDefaultDateFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecentDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getRecentDateFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isLenientFutureDates()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    return v0
.end method

.method public parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->parseTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public parseTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getServerTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 195
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 197
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getServerTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 198
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    if-eqz v2, :cond_0

    .line 201
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->add(II)V

    .line 212
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    new-instance v3, Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " yyyy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 216
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 217
    iget-object v4, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 218
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 219
    invoke-virtual {v3, v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 221
    if-eqz v3, :cond_2

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v4, v2, :cond_2

    .line 222
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    const/4 v1, -0x1

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->add(II)V

    .line 226
    :cond_1
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateSmallestUnitIndex:I

    invoke-static {v1, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setPrecision(ILjava/util/Calendar;)V

    .line 249
    :goto_0
    return-object v0

    .line 231
    :cond_2
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 232
    iget-object v2, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 241
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 248
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateSmallestUnitIndex:I

    invoke-static {v1, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setPrecision(ILjava/util/Calendar;)V

    goto :goto_0

    .line 243
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timestamp \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' could not be parsed using a server time of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method setLenientFutureDates(Z)V
    .locals 0

    .prologue
    .line 404
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    .line 405
    return-void
.end method
