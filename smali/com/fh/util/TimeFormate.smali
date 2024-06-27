.class public Lcom/fh/util/TimeFormate;
.super Ljava/lang/Object;
.source "TimeFormate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fh/util/TimeFormate$DateType;
    }
.end annotation


# static fields
.field public static final yyyyMMdd:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMddHHmm:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMdd_HHmmss:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMdd_format:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fh/util/TimeFormate;->yyyyMMdd:Ljava/text/SimpleDateFormat;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fh/util/TimeFormate;->yyyyMMdd_format:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fh/util/TimeFormate;->yyyyMMddHHmm:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fh/util/TimeFormate;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fh/util/TimeFormate;->yyyyMMdd_HHmmss:Ljava/text/SimpleDateFormat;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatToYMD(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/fh/util/TimeFormate;->formatToYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatToYMD(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/TimeFormate;->formatToYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatToYMD(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 44
    sget-object v0, Lcom/fh/util/TimeFormate;->yyyyMMdd_format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMD(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 28
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/fh/util/TimeFormate;->formatYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMD(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/TimeFormate;->formatYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMD(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 32
    sget-object v0, Lcom/fh/util/TimeFormate;->yyyyMMdd:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMDHM(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/fh/util/TimeFormate;->formatYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMDHM(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/TimeFormate;->formatYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMDHM(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 56
    sget-object v0, Lcom/fh/util/TimeFormate;->yyyyMMddHHmm:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMDHMS(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 64
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/fh/util/TimeFormate;->formatYMDHMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMDHMS(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/TimeFormate;->formatYMDHMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMDHMS(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 68
    sget-object v0, Lcom/fh/util/TimeFormate;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMD_HMS(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYMD_HMS(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 76
    sget-object v0, Lcom/fh/util/TimeFormate;->yyyyMMdd_HHmmss:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateMillTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 5
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "simpleDateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 125
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_2

    .line 126
    :cond_0
    const-wide/16 v2, 0x0

    .line 138
    :cond_1
    :goto_0
    return-wide v2

    .line 128
    :cond_2
    const-wide/16 v2, 0x0

    .line 129
    .local v2, "time":J
    const/4 v1, 0x0

    .line 131
    .local v1, "newDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    :goto_1
    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDateTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/fh/util/TimeFormate$DateType;)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "simpleDateFormat"    # Ljava/text/SimpleDateFormat;
    .param p2, "type"    # Lcom/fh/util/TimeFormate$DateType;

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 144
    :cond_0
    const/4 v4, 0x0

    move-object v3, v2

    .line 177
    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 146
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 148
    .local v1, "newDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_1
    if-eqz v1, :cond_2

    .line 153
    sget-object v4, Lcom/fh/util/TimeFormate$1;->$SwitchMap$com$fh$util$TimeFormate$DateType:[I

    invoke-virtual {p2}, Lcom/fh/util/TimeFormate$DateType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_2
    move-object v3, v2

    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v4, v2

    .line 177
    goto :goto_0

    .line 149
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v0    # "e":Ljava/text/ParseException;
    :pswitch_0
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    goto :goto_2

    .line 158
    :pswitch_1
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    goto :goto_2

    .line 161
    :pswitch_2
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    goto :goto_2

    .line 164
    :pswitch_3
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    goto :goto_2

    .line 167
    :pswitch_4
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    goto :goto_2

    .line 170
    :pswitch_5
    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    goto :goto_2

    .line 173
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-static {v5}, Lcom/fh/util/TimeFormate;->getInt2TwoByte(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-static {v5}, Lcom/fh/util/TimeFormate;->getInt2TwoByte(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-static {v5}, Lcom/fh/util/TimeFormate;->getInt2TwoByte(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getFormatedDateString(I)Ljava/lang/String;
    .locals 5
    .param p0, "timeZoneOffset"    # I

    .prologue
    .line 104
    const/16 v3, 0xd

    if-gt p0, v3, :cond_0

    const/16 v3, -0xc

    if-ge p0, v3, :cond_1

    .line 105
    :cond_0
    const/4 p0, 0x0

    .line 108
    :cond_1
    mul-int/lit8 v3, p0, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "ids":[Ljava/lang/String;
    array-length v3, v0

    if-nez v3, :cond_2

    .line 111
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 115
    .local v2, "timeZone":Ljava/util/TimeZone;
    :goto_0
    sget-object v1, Lcom/fh/util/TimeFormate;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    .line 116
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 117
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 113
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v2    # "timeZone":Ljava/util/TimeZone;
    :cond_2
    new-instance v2, Ljava/util/SimpleTimeZone;

    mul-int/lit8 v3, p0, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .restart local v2    # "timeZone":Ljava/util/TimeZone;
    goto :goto_0
.end method

.method public static getFormatedDateTime(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/text/SimpleDateFormat;
    .param p1, "dateTime"    # J

    .prologue
    .line 182
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHHMMSSFormatValue(I)Ljava/lang/String;
    .locals 10
    .param p0, "time"    # I

    .prologue
    const-wide/16 v8, 0x3c

    .line 95
    div-int/lit16 v2, p0, 0x3e8

    int-to-long v0, v2

    .line 96
    .local v0, "t":J
    const-string v2, "{0,number,00}:{1,number,00}:{2,number,00}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-long v6, v0, v8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    div-long v6, v0, v8

    rem-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    rem-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getInt2TwoByte(I)Ljava/lang/String;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 189
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method public static getTimeFormatValue(I)Ljava/lang/String;
    .locals 9
    .param p0, "time"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    div-int/lit8 v3, p0, 0x3c

    div-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v0, v3, 0x18

    .line 85
    .local v0, "hour":I
    div-int/lit8 v3, p0, 0x3c

    rem-int/lit8 v1, v3, 0x3c

    .line 86
    .local v1, "min":I
    rem-int/lit8 v2, p0, 0x3c

    .line 87
    .local v2, "sec":I
    if-nez v0, :cond_0

    .line 88
    const-string v3, "{0,number,00}:{1,number,00}"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 90
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "{0,number,00}:{1,number,00}:{2,number,00}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
