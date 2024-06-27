.class public final Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final __date:Ljava/lang/String;

.field private __distributions:Ljava/lang/StringBuffer;

.field private final __isGMT:Z

.field private __newsgroups:Ljava/lang/StringBuffer;

.field private final __time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    .line 64
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    .line 65
    iput-boolean p2, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__isGMT:Z

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 74
    if-lt v2, v3, :cond_0

    .line 75
    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_0
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 85
    if-ne v2, v4, :cond_1

    .line 86
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :goto_1
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 99
    if-ne v2, v4, :cond_3

    .line 100
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__date:Ljava/lang/String;

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 113
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 117
    if-ne v2, v4, :cond_5

    .line 118
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :goto_3
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 131
    if-ne v2, v4, :cond_7

    .line 132
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_4
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 146
    if-ne v2, v4, :cond_9

    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__time:Ljava/lang/String;

    .line 156
    return-void

    .line 77
    :cond_0
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 88
    :cond_1
    if-ne v2, v3, :cond_2

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    :cond_2
    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 102
    :cond_3
    if-ne v2, v3, :cond_4

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 105
    :cond_4
    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 120
    :cond_5
    if-ne v2, v3, :cond_6

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 123
    :cond_6
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 134
    :cond_7
    if-ne v2, v3, :cond_8

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 137
    :cond_8
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 149
    :cond_9
    if-ne v2, v3, :cond_a

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 152
    :cond_a
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method


# virtual methods
.method public addDistribution(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public addNewsgroup(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__date:Ljava/lang/String;

    return-object v0
.end method

.method public getDistributions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__distributions:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNewsgroups()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__newsgroups:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__time:Ljava/lang/String;

    return-object v0
.end method

.method public isGMT()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->__isGMT:Z

    return v0
.end method

.method public omitNewsgroup(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->addNewsgroup(Ljava/lang/String;)V

    .line 201
    return-void
.end method
