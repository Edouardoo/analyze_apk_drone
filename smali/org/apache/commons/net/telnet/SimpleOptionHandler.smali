.class public Lorg/apache/commons/net/telnet/SimpleOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 56
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 46
    return-void
.end method
