.class public final Lorg/apache/commons/net/io/ToNetASCIIInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final __LAST_WAS_CR:I = 0x1

.field private static final __LAST_WAS_NL:I = 0x2

.field private static final __NOTHING_SPECIAL:I


# instance fields
.field private __status:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 52
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 179
    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 183
    :cond_0
    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0xd

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-ne v1, v5, :cond_0

    .line 71
    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 72
    const/16 v0, 0xa

    .line 91
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 77
    packed-switch v1, :pswitch_data_0

    .line 90
    :cond_1
    :pswitch_0
    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    move v0, v1

    .line 91
    goto :goto_0

    .line 80
    :pswitch_1
    iput v4, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    goto :goto_0

    .line 83
    :pswitch_2
    iget v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-eq v2, v4, :cond_1

    .line 85
    iput v5, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    .line 135
    if-ge p3, v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->available()I

    move-result v1

    .line 141
    if-le p3, v1, :cond_5

    .line 146
    :goto_1
    if-ge v1, v0, :cond_4

    .line 150
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v1

    if-ne v1, v5, :cond_1

    move v0, v5

    .line 151
    goto :goto_0

    :cond_1
    move v2, v0

    move v3, p2

    .line 158
    :goto_3
    add-int/lit8 v4, v3, 0x1

    int-to-byte v0, v1

    aput-byte v0, p1, v3

    .line 160
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 162
    :cond_2
    sub-int v0, v4, p2

    goto :goto_0

    :cond_3
    move v1, v0

    move v3, v4

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v1, p3

    goto :goto_1
.end method
