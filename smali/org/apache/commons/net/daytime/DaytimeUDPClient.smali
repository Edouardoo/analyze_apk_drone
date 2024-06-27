.class public final Lorg/apache/commons/net/daytime/DaytimeUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PORT:I = 0xd


# instance fields
.field private final __dummyData:[B

.field private final __timeData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__dummyData:[B

    .line 48
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__timeData:[B

    return-void
.end method


# virtual methods
.method public getTime(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->getTime(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__dummyData:[B

    iget-object v2, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__dummyData:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 65
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__timeData:[B

    iget-object v3, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->__timeData:[B

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 67
    iget-object v2, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 68
    iget-object v0, p0, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/net/daytime/DaytimeUDPClient;->getCharsetName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method
