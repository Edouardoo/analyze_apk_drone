.class public final Lorg/apache/commons/net/time/TimeUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PORT:I = 0x25

.field public static final SECONDS_1900_TO_1970:J = 0x83aa7e80L


# instance fields
.field private final __dummyData:[B

.field private final __timeData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__dummyData:[B

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__timeData:[B

    return-void
.end method


# virtual methods
.method public getDate(Ljava/net/InetAddress;)Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x25

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/time/TimeUDPClient;->getTime(Ljava/net/InetAddress;I)J

    move-result-wide v2

    const-wide v4, 0x83aa7e80L

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDate(Ljava/net/InetAddress;I)Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/time/TimeUDPClient;->getTime(Ljava/net/InetAddress;I)J

    move-result-wide v2

    const-wide v4, 0x83aa7e80L

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTime(Ljava/net/InetAddress;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/16 v0, 0x25

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/time/TimeUDPClient;->getTime(Ljava/net/InetAddress;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime(Ljava/net/InetAddress;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v4, 0xffffffffL

    .line 79
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__dummyData:[B

    iget-object v2, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__dummyData:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 81
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__timeData:[B

    iget-object v3, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__timeData:[B

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 83
    iget-object v2, p0, Lorg/apache/commons/net/time/TimeUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 84
    iget-object v0, p0, Lorg/apache/commons/net/time/TimeUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 86
    const-wide/16 v0, 0x0

    .line 87
    iget-object v2, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__timeData:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 88
    iget-object v2, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__timeData:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 89
    iget-object v2, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__timeData:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 90
    iget-object v2, p0, Lorg/apache/commons/net/time/TimeUDPClient;->__timeData:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 92
    return-wide v0
.end method
