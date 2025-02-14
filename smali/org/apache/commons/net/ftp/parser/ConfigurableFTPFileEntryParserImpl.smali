.class public abstract Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/ftp/Configurable;


# instance fields
.field private final timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;I)V

    .line 70
    new-instance v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    .line 71
    return-void
.end method


# virtual methods
.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    instance-of v0, v0, Lorg/apache/commons/net/ftp/Configurable;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;

    move-result-object v1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDefaultDateFormatStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDefaultDateFormatStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setDefaultDateFormatStr(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getRecentDateFormatStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getRecentDateFormatStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setRecentDateFormatStr(Ljava/lang/String;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    check-cast v0, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 118
    :cond_2
    :goto_0
    return-void

    .line 115
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    check-cast v0, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_0
.end method

.method protected abstract getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
.end method

.method public parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
