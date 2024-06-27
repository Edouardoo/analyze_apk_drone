.class public Lcom/fh/util/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final CTRLSETTING:Ljava/lang/String; = "ctrlSetting"

.field public static final CTRL_SET_VALUE:I = 0x20007

.field public static final EFFECT_CONFIGS:[Ljava/lang/String;

.field public static final MANUAL_VALUE:I = 0x20006

.field public static final MOTION_VALUE:I = 0x20005

.field public static final REC_PATH:Ljava/lang/String; = "/SKY_OF/"

.field public static final STOP_VIDEO:I = 0x20001

.field public static final TRANSINFO:Ljava/lang/String; = "transInfo"

.field private static manualmode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "@curve R(5, 49)(85, 173)(184, 249)G(23, 35)(65, 76)(129, 145)(255, 199)B(74, 69)(158, 107)(255, 126)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "@beautify face 1 480 640"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@curve G(0, 0)(144, 166)(255, 255) @pixblend screen 0.94118 0.29 0.29 1 20"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "@curve G(0, 0)(101, 127)(255, 255) @pixblend colordodge 0.937 0.482 0.835 1 20"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@curve R(0, 0)(71, 74)(164, 165)(255, 255) @pixblend overlay 0.357 0.863 0.882 1 40"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@adjust exposure 0.98 "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "@curve RGB(0,255)(255,0) @style cm mapping0.jpg 80 80 8 3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@adjust hsv -1 -1 -1 -1 -1 -1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "@curve RGB(0,255)(255,0) @style cm mapping0.jpg 80 80 8 3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "@beautify face 1 480 640"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "@beautify bilateral 100 3.5 2 "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "@adjust exposure 0.98 "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "@adjust shadowhighlight -200 200 "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "@adjust sharpen 10 1.5 "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "@curve R(0, 0)(43, 77)(56, 104)(100, 166)(255, 255)G(0, 0)(35, 53)(255, 255)B(0, 0)(110, 123)(255, 212)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "@curve R(5, 49)(85, 173)(184, 249)G(23, 35)(65, 76)(129, 145)(255, 199)B(74, 69)(158, 107)(255, 126)"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "@curve G(0, 0)(144, 166)(255, 255) @pixblend screen 0.94118 0.29 0.29 1 20"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "@curve G(0, 0)(101, 127)(255, 255) @pixblend colordodge 0.937 0.482 0.835 1 20"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "@curve R(40, 40)(86, 148)(255, 255)G(0, 28)(67, 140)(142, 214)(255, 255)B(0, 100)(103, 176)(195, 174)(255, 255) @adjust hsv 0.32 0 -0.5 -0.2 0 -0.4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "@curve R(0, 0)(71, 74)(164, 165)(255, 255) @pixblend screen 0.94118 0.29 0.29 1 20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "@curve R(0, 0)(71, 74)(164, 165)(255, 255) @pixblend overlay 0.357 0.863 0.882 1 40"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "@curve R(0, 0)(71, 74)(164, 165)(255, 255) @pixblend overlay 0.357 0.863 0.882 1 40"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fh/util/Common;->EFFECT_CONFIGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(FFI)I
    .locals 2
    .param p0, "t"    # F
    .param p1, "val"    # F
    .param p2, "baseValue"    # I

    .prologue
    .line 42
    div-float v0, p1, p0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static intToTime(J)Ljava/lang/String;
    .locals 10
    .param p0, "i"    # J

    .prologue
    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0xe10

    .line 28
    const-string v0, "%02d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-long v4, p0, v6

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    rem-long v4, p0, v6

    rem-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intToTime2(J)Ljava/lang/String;
    .locals 10
    .param p0, "i"    # J

    .prologue
    const-wide/16 v8, 0xe10

    const-wide/16 v6, 0x3c

    .line 32
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    rem-long v4, p0, v8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-long v4, p0, v8

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isManualmode()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/fh/util/Common;->manualmode:Z

    return v0
.end method
