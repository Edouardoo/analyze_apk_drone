.class public Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.source "SourceFile"


# static fields
.field private static final MONTHS:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

.field private static final REGEX:Ljava/lang/String; = "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 13

    .prologue
    const/16 v12, 0xc

    const/16 v1, 0xb

    const/4 v11, 0x0

    .line 90
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 91
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 100
    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    const/16 v8, 0x15

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 102
    const/16 v9, 0x16

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 103
    const/16 v10, 0x17

    invoke-virtual {p0, v10}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 105
    invoke-virtual {v0, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 106
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 110
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 118
    const/16 v2, 0xe

    invoke-virtual {v3, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/16 v2, 0xd

    invoke-virtual {v3, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-virtual {v3, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 121
    invoke-virtual {v3, v1, v11}, Ljava/util/Calendar;->set(II)V

    .line 123
    const-string v2, "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 124
    div-int/lit8 v4, v2, 0x4

    .line 129
    if-eqz v7, :cond_0

    .line 132
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 151
    :goto_1
    const/4 v2, 0x2

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 152
    const/4 v2, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->clear(I)V

    .line 154
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :goto_2
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 164
    :goto_3
    return-object v0

    .line 138
    :cond_0
    const/16 v1, 0xd

    .line 139
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 143
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ge v5, v4, :cond_1

    .line 145
    add-int/lit8 v2, v2, -0x1

    .line 147
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 148
    const/16 v2, 0xb

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 149
    const/16 v2, 0xc

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/util/Calendar;->set(II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v1

    goto :goto_2

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 112
    :catch_1
    move-exception v2

    goto :goto_0
.end method
