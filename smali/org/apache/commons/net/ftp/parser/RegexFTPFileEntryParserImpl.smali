.class public abstract Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "SourceFile"


# instance fields
.field protected _matcher_:Ljava/util/regex/Matcher;

.field private pattern:Ljava/util/regex/Pattern;

.field private result:Ljava/util/regex/MatchResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 41
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 52
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->compileRegex(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 41
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 52
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->compileRegex(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method private compileRegex(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 197
    :try_start_0
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unparseable regex supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getGroupCnt()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupsAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v3, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    .line 105
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRegex(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->compileRegex(Ljava/lang/String;I)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public setRegex(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->compileRegex(Ljava/lang/String;I)V

    .line 182
    const/4 v0, 0x1

    return v0
.end method
