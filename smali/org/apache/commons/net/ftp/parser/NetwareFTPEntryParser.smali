.class public Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM dd yyyy"

.field private static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM dd HH:mm"

.field private static final REGEX:Ljava/lang/String; = "(d|-){1}\\s+\\[([-A-Z]+)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .prologue
    .line 83
    const-string v0, "(d|-){1}\\s+\\[([-A-Z]+)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 173
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "NETWARE"

    const-string v2, "MMM dd yyyy"

    const-string v3, "MMM dd HH:mm"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 117
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 124
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    :try_start_0
    invoke-super {p0, v5}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "d"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 140
    :goto_1
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    .line 150
    const-string v1, "R"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_0

    .line 151
    invoke-virtual {v0, v8, v8, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 154
    :cond_0
    const-string v1, "W"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_1

    .line 155
    invoke-virtual {v0, v8, v7, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 161
    :cond_1
    :goto_2
    return-object v0

    .line 137
    :cond_2
    invoke-virtual {v0, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_1

    .line 161
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 128
    :catch_0
    move-exception v5

    goto :goto_0
.end method
