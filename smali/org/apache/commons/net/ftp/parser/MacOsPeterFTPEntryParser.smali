.class public Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "SourceFile"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM d yyyy"

.field static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM d HH:mm"

.field private static final REGEX:Ljava/lang/String; = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 272
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "MMM d yyyy"

    const-string v3, "MMM d HH:mm"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 14

    .prologue
    .line 130
    new-instance v3, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 131
    invoke-virtual {v3, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 137
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v6, "0"

    .line 139
    const/4 v7, 0x0

    .line 140
    const/4 v8, 0x0

    .line 141
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x15

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    const/16 v4, 0x17

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 144
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 148
    :try_start_0
    invoke-super {p0, v2}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 180
    const/4 v1, 0x3

    .line 183
    :goto_1
    invoke-virtual {v3, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 185
    const/4 v5, 0x4

    .line 186
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    const/4 v2, 0x3

    if-ge v4, v2, :cond_3

    .line 189
    const/4 v12, 0x0

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "-"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v4, v12, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 191
    const/4 v12, 0x1

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "-"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v3, v4, v12, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 194
    add-int/lit8 v2, v5, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    const-string v12, "-"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    const/4 v2, 0x2

    const/4 v12, 0x1

    invoke-virtual {v3, v4, v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 186
    :goto_5
    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v5, v5, 0x4

    move v4, v2

    goto :goto_2

    .line 162
    :sswitch_0
    const/4 v1, 0x1

    .line 163
    goto :goto_1

    .line 165
    :sswitch_1
    const/4 v1, 0x2

    .line 166
    goto :goto_1

    .line 168
    :sswitch_2
    const/4 v1, 0x2

    .line 169
    goto :goto_1

    .line 172
    :sswitch_3
    const/4 v0, 0x1

    .line 173
    const/4 v1, 0x0

    .line 174
    goto :goto_1

    .line 177
    :sswitch_4
    const/4 v1, 0x0

    .line 178
    goto :goto_1

    .line 189
    :cond_0
    const/4 v2, 0x0

    goto :goto_3

    .line 191
    :cond_1
    const/4 v2, 0x0

    goto :goto_4

    .line 201
    :cond_2
    const/4 v2, 0x2

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_5

    .line 205
    :cond_3
    if-nez v0, :cond_4

    .line 209
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setHardLinkCount(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :cond_4
    :goto_6
    invoke-virtual {v3, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v3, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 222
    :try_start_2
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    :goto_7
    if-nez v11, :cond_5

    .line 231
    invoke-virtual {v3, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    :goto_8
    move-object v0, v3

    .line 261
    :goto_9
    return-object v0

    .line 237
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 241
    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 243
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 245
    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_8

    .line 249
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 250
    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setLink(Ljava/lang/String;)V

    goto :goto_8

    .line 256
    :cond_7
    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_8

    .line 261
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 224
    :catch_0
    move-exception v0

    goto :goto_7

    .line 211
    :catch_1
    move-exception v0

    goto :goto_6

    .line 150
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_4
        0x62 -> :sswitch_3
        0x63 -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6c -> :sswitch_2
    .end sparse-switch
.end method
