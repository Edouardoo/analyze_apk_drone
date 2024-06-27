.class public abstract Lorg/apache/commons/net/tftp/TFTPRequestPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "SourceFile"


# static fields
.field private static final _modeBytes:[[B

.field static final _modeStrings:[Ljava/lang/String;


# instance fields
.field private final _filename:Ljava/lang/String;

.field private final _mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "netascii"

    aput-object v1, v0, v2

    const-string v1, "octet"

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    .line 63
    new-array v0, v4, [[B

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x61t
        0x73t
        0x63t
        0x69t
        0x69t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ft
        0x63t
        0x74t
        0x65t
        0x74t
        0x0t
    .end array-data
.end method

.method constructor <init>(ILjava/net/DatagramPacket;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 112
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->getType()I

    move-result v1

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    if-eq v1, v3, :cond_0

    .line 115
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v1, "TFTP operator code does not match type."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const/4 v1, 0x2

    .line 121
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    .line 123
    :goto_0
    if-ge v1, v4, :cond_1

    aget-byte v5, v2, v1

    if-eqz v5, :cond_1

    .line 125
    aget-byte v5, v2, v1

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    .line 131
    if-lt v1, v4, :cond_2

    .line 132
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v1, "Bad filename and mode format."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 137
    :goto_1
    if-ge v1, v4, :cond_3

    aget-byte v5, v2, v1

    if-eqz v5, :cond_3

    .line 139
    aget-byte v5, v2, v1

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 144
    sget-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    array-length v3, v1

    move v1, v0

    .line 147
    :goto_2
    if-ge v1, v3, :cond_4

    .line 149
    sget-object v4, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    .line 156
    :cond_4
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    .line 158
    if-lt v1, v3, :cond_6

    .line 160
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPPacketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized TFTP transfer mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    :cond_6
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 92
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    .line 93
    iput p5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    .line 94
    return-void
.end method


# virtual methods
.method final _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 185
    sget-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 187
    aput-byte v4, p2, v4

    .line 188
    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_type:I

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 189
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v4, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    add-int/lit8 v2, v0, 0x2

    aput-byte v4, p2, v2

    .line 191
    sget-object v2, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v2, v2, v3

    add-int/lit8 v3, v0, 0x3

    invoke-static {v2, v4, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 195
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_port:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 196
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 197
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 199
    return-object p1
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    return v0
.end method

.method public final newDatagram()Ljava/net/DatagramPacket;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 219
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 220
    sget-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 222
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 223
    aput-byte v5, v2, v5

    .line 224
    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_type:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 225
    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v5, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    add-int/lit8 v3, v0, 0x2

    aput-byte v5, v2, v3

    .line 227
    sget-object v3, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v3, v3, v4

    add-int/lit8 v0, v0, 0x3

    invoke-static {v3, v5, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, v2

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_port:I

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method
