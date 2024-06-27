.class public final Lorg/apache/commons/net/ntp/NtpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostAddress(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 v1, p0, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModeName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    packed-switch p0, :pswitch_data_0

    .line 112
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    const-string v0, "Reserved"

    goto :goto_0

    .line 98
    :pswitch_1
    const-string v0, "Symmetric Active"

    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "Symmetric Passive"

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v0, "Client"

    goto :goto_0

    .line 104
    :pswitch_4
    const-string v0, "Server"

    goto :goto_0

    .line 106
    :pswitch_5
    const-string v0, "Broadcast"

    goto :goto_0

    .line 108
    :pswitch_6
    const-string v0, "Control"

    goto :goto_0

    .line 110
    :pswitch_7
    const-string v0, "Private"

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getRefAddress(Lorg/apache/commons/net/ntp/NtpV3Packet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpUtils;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReferenceId()I

    move-result v0

    goto :goto_0
.end method

.method public static getReferenceClock(Lorg/apache/commons/net/ntp/NtpV3Packet;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const-string v0, ""

    .line 83
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReferenceId()I

    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    const-string v0, ""

    goto :goto_0

    .line 70
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    const/16 v0, 0x18

    :goto_1
    if-ltz v0, :cond_2

    .line 74
    ushr-int v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 75
    if-nez v3, :cond_3

    .line 83
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 79
    const-string v0, ""

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v0, v0, -0x8

    goto :goto_1
.end method
