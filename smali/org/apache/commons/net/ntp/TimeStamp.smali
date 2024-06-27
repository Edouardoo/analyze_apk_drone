.class public Lorg/apache/commons/net/ntp/TimeStamp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/net/ntp/TimeStamp;",
        ">;"
    }
.end annotation


# static fields
.field public static final NTP_DATE_FORMAT:Ljava/lang/String; = "EEE, MMM dd yyyy HH:mm:ss.SSS"

.field protected static final msb0baseTime:J = 0x1e5ae01dc00L

.field protected static final msb1baseTime:J = -0x20251fe2400L

.field private static final serialVersionUID:J = 0x70f667418312e431L


# instance fields
.field private final ntpTime:J

.field private simpleFormatter:Ljava/text/DateFormat;

.field private utcFormatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide p1, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Lorg/apache/commons/net/ntp/TimeStamp;->decodeNtpHexString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 120
    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->toNtpTime(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static appendHexString(Ljava/lang/StringBuilder;J)V
    .locals 3

    .prologue
    .line 367
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 369
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    return-void
.end method

.method protected static decodeNtpHexString(Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x10

    .line 251
    if-nez p0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 255
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 257
    const-wide/16 v0, 0x0

    .line 262
    :goto_0
    return-wide v0

    .line 259
    :cond_1
    invoke-static {p0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    shl-long/2addr v0, v5

    goto :goto_0

    .line 262
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    shl-long/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public static getCurrentTime()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getNtpTime(J)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public static getNtpTime(J)Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 4

    .prologue
    .line 225
    new-instance v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-static {p0, p1}, Lorg/apache/commons/net/ntp/TimeStamp;->toNtpTime(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/net/ntp/TimeStamp;-><init>(J)V

    return-object v0
.end method

.method public static getTime(J)J
    .locals 10

    .prologue
    const-wide v2, 0xffffffffL

    const-wide/16 v8, 0x3e8

    .line 188
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    .line 189
    and-long/2addr v2, p0

    .line 192
    const-wide v4, 0x408f400000000000L    # 1000.0

    long-to-double v2, v2

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 203
    const-wide v4, 0x80000000L

    and-long/2addr v4, v0

    .line 204
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 206
    const-wide v4, 0x1e5ae01dc00L

    mul-long/2addr v0, v8

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 209
    :goto_0
    return-wide v0

    :cond_0
    const-wide v4, -0x20251fe2400L

    mul-long/2addr v0, v8

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public static parseNtpString(Ljava/lang/String;)Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-static {p0}, Lorg/apache/commons/net/ntp/TimeStamp;->decodeNtpHexString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/net/ntp/TimeStamp;-><init>(J)V

    return-object v0
.end method

.method protected static toNtpTime(J)J
    .locals 10

    .prologue
    const-wide v2, 0x1e5ae01dc00L

    const-wide/16 v8, 0x3e8

    .line 288
    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    .line 290
    :goto_0
    if-eqz v4, :cond_1

    .line 291
    const-wide v0, -0x20251fe2400L

    sub-long v0, p0, v0

    .line 297
    :goto_1
    div-long v2, v0, v8

    .line 298
    rem-long/2addr v0, v8

    const-wide v6, 0x100000000L

    mul-long/2addr v0, v6

    div-long v6, v0, v8

    .line 300
    if-eqz v4, :cond_2

    .line 301
    const-wide v0, 0x80000000L

    or-long/2addr v0, v2

    .line 304
    :goto_2
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    or-long/2addr v0, v6

    .line 305
    return-wide v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 294
    :cond_1
    sub-long v0, p0, v2

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_2
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide v4, 0xffffffffL

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    const/16 v1, 0x20

    ushr-long v2, p0, v1

    and-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/apache/commons/net/ntp/TimeStamp;->appendHexString(Ljava/lang/StringBuilder;J)V

    .line 391
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    and-long v2, p0, v4

    invoke-static {v0, v2, v3}, Lorg/apache/commons/net/ntp/TimeStamp;->appendHexString(Ljava/lang/StringBuilder;J)V

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ntp/TimeStamp;->compareTo(Lorg/apache/commons/net/ntp/TimeStamp;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/net/ntp/TimeStamp;)I
    .locals 5

    .prologue
    .line 450
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 451
    iget-wide v2, p1, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 452
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 338
    instance-of v1, p1, Lorg/apache/commons/net/ntp/TimeStamp;

    if-eqz v1, :cond_0

    .line 339
    iget-wide v2, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    check-cast p1, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-virtual {p1}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 341
    :cond_0
    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime(J)J

    move-result-wide v0

    .line 170
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public getFraction()J
    .locals 4

    .prologue
    .line 149
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getSeconds()J
    .locals 4

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 322
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    iget-wide v2, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public ntpValue()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    return-wide v0
.end method

.method public toDateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, MMM dd yyyy HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/text/DateFormat;

    .line 410
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 412
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeStamp;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUTCString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, MMM dd yyyy HH:mm:ss.SSS \'UTC\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/text/DateFormat;

    .line 430
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 432
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeStamp;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
