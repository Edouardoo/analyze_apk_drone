.class public Lcom/jieli/lib/stream/udp/UdpClientCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_CONNECTION_EXCEPTION:I = 0x1

.field public static final ERROR_CONNECTION_TIMEOUT:I = 0x2

.field public static final ERROR_RECEIVER_EXCEPTION:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescForCode(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, ""

    .line 12
    packed-switch p0, :pswitch_data_0

    .line 23
    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    const-string v0, "connection had a exception"

    goto :goto_0

    .line 17
    :pswitch_1
    const-string v0, "connection is timeout."

    goto :goto_0

    .line 20
    :pswitch_2
    const-string v0, "receiver had a exception"

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
