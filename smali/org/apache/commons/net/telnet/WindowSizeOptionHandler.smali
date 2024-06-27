.class public Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "SourceFile"


# static fields
.field protected static final WINDOW_SIZE:I = 0x1f


# instance fields
.field private m_nHeight:I

.field private m_nWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 86
    const/16 v1, 0x1f

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 30
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 35
    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 94
    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 95
    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 96
    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 6

    .prologue
    .line 63
    const/16 v1, 0x1f

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 30
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 35
    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 71
    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 72
    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 73
    return-void
.end method


# virtual methods
.method public startSubnegotiationLocal()[I
    .locals 7

    .prologue
    const/16 v6, 0xff

    .line 107
    iget v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    const/high16 v1, 0x10000

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    add-int v3, v0, v1

    .line 108
    const/4 v0, 0x5

    .line 113
    iget v1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    rem-int/lit16 v1, v1, 0x100

    if-ne v1, v6, :cond_0

    .line 114
    const/4 v0, 0x6

    .line 117
    :cond_0
    iget v1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    div-int/lit16 v1, v1, 0x100

    if-ne v1, v6, :cond_1

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 121
    :cond_1
    iget v1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    rem-int/lit16 v1, v1, 0x100

    if-ne v1, v6, :cond_2

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_2
    iget v1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    div-int/lit16 v1, v1, 0x100

    if-ne v1, v6, :cond_3

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 132
    :cond_3
    new-array v4, v0, [I

    .line 142
    const/4 v1, 0x0

    const/16 v2, 0x1f

    aput v2, v4, v1

    .line 145
    const/4 v1, 0x1

    const/16 v2, 0x18

    .line 146
    :goto_0
    if-ge v1, v0, :cond_5

    .line 150
    shl-int v5, v6, v2

    .line 151
    and-int/2addr v5, v3

    ushr-int/2addr v5, v2

    aput v5, v4, v1

    .line 153
    aget v5, v4, v1

    if-ne v5, v6, :cond_4

    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    aput v6, v4, v1

    .line 147
    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 159
    :cond_5
    return-object v4
.end method
