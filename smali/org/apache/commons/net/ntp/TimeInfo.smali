.class public Lorg/apache/commons/net/ntp/TimeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _delay:Ljava/lang/Long;

.field private _detailsComputed:Z

.field private final _message:Lorg/apache/commons/net/ntp/NtpV3Packet;

.field private _offset:Ljava/lang/Long;

.field private final _returnTime:J


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;J)V
    .locals 6

    .prologue
    .line 56
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-wide p2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    .line 107
    iput-object p1, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 108
    iput-object p4, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    .line 109
    if-eqz p5, :cond_1

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeInfo;->computeDetails()V

    .line 112
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JZ)V
    .locals 6

    .prologue
    .line 85
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public computeDetails()V
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    .line 135
    iget-boolean v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_detailsComputed:Z

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_detailsComputed:Z

    .line 139
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    .line 143
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getOriginateTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v4

    .line 147
    iget-object v1, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReceiveTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v6

    .line 151
    iget-object v8, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v8}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v8

    .line 152
    invoke-virtual {v8}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v10

    .line 170
    invoke-virtual {v0}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v12

    cmp-long v0, v12, v2

    if-nez v0, :cond_4

    .line 174
    invoke-virtual {v8}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 176
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v0, v10, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    .line 177
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v1, "Error: zero orig time -- cannot compute delay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v1, "Error: zero orig time -- cannot compute delay/offset"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v12

    cmp-long v0, v12, v2

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v12

    cmp-long v0, v12, v2

    if-nez v0, :cond_8

    .line 182
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v9, "Warning: zero rcvNtpTime or xmitNtpTime"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-wide v12, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v0, v4, v12

    if-lez v0, :cond_6

    .line 185
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v9, "Error: OrigTime > DestRcvTime"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :goto_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 198
    sub-long v0, v6, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto/16 :goto_0

    .line 189
    :cond_6
    iget-wide v12, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    goto :goto_1

    .line 199
    :cond_7
    invoke-virtual {v8}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 202
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v0, v10, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto/16 :goto_0

    .line 206
    :cond_8
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long/2addr v0, v4

    .line 208
    cmp-long v8, v10, v6

    if-gez v8, :cond_b

    .line 211
    iget-object v2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v3, "Error: xmitTime < rcvTime"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_9
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    .line 239
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_a

    .line 240
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v1, "Error: OrigTime > DestRcvTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_a
    sub-long v0, v6, v4

    iget-wide v2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v2, v10, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto/16 :goto_0

    .line 215
    :cond_b
    sub-long v8, v10, v6

    .line 218
    cmp-long v12, v8, v0

    if-gtz v12, :cond_c

    .line 220
    sub-long/2addr v0, v8

    goto :goto_2

    .line 225
    :cond_c
    sub-long/2addr v8, v0

    const-wide/16 v12, 0x1

    cmp-long v8, v8, v12

    if-nez v8, :cond_d

    .line 228
    cmp-long v8, v0, v2

    if-eqz v8, :cond_9

    .line 230
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v1, "Info: processing time > total network time by 1 ms -> assume zero delay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v0, v2

    .line 231
    goto :goto_2

    .line 234
    :cond_d
    iget-object v2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v3, "Warning: processing time > total network time"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    if-ne p0, p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 326
    goto :goto_0

    .line 328
    :cond_3
    check-cast p1, Lorg/apache/commons/net/ntp/TimeInfo;

    .line 329
    iget-wide v2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    iget-wide v4, p1, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    iget-object v3, p1, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 295
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    return-object v0
.end method

.method public getDelay()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessage()Lorg/apache/commons/net/ntp/NtpV3Packet;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    return-object v0
.end method

.method public getOffset()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    return-object v0
.end method

.method public getReturnTime()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 342
    .line 343
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    long-to-int v0, v0

    .line 344
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    return v0
.end method
