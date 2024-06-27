.class public final Lorg/apache/commons/net/ntp/NTPUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PORT:I = 0x7b


# instance fields
.field private _version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    return-void
.end method


# virtual methods
.method public getTime(Ljava/net/InetAddress;)Lorg/apache/commons/net/ntp/TimeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/16 v0, 0x7b

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->getTime(Ljava/net/InetAddress;I)Lorg/apache/commons/net/ntp/TimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/net/InetAddress;I)Lorg/apache/commons/net/ntp/TimeInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->open()V

    .line 68
    :cond_0
    new-instance v0, Lorg/apache/commons/net/ntp/NtpV3Impl;

    invoke-direct {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;-><init>()V

    .line 69
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setMode(I)V

    .line 70
    iget v1, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setVersion(I)V

    .line 71
    invoke-interface {v0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v1

    .line 72
    invoke-virtual {v1, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 73
    invoke-virtual {v1, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 75
    new-instance v2, Lorg/apache/commons/net/ntp/NtpV3Impl;

    invoke-direct {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;-><init>()V

    .line 76
    invoke-interface {v2}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v3

    .line 84
    invoke-static {}, Lorg/apache/commons/net/ntp/TimeStamp;->getCurrentTime()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v4

    .line 88
    invoke-interface {v0, v4}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setTransmitTime(Lorg/apache/commons/net/ntp/TimeStamp;)V

    .line 90
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 91
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    new-instance v3, Lorg/apache/commons/net/ntp/TimeInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v1, v4}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JZ)V

    .line 97
    return-object v3
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    return v0
.end method

.method public setVersion(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->_version:I

    .line 137
    return-void
.end method
