.class public Lorg/opencv/dnn/DictValue;
.super Ljava/lang/Object;
.source "DictValue.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>(D)V
    .locals 3
    .param p1, "p"    # D

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1, p2}, Lorg/opencv/dnn/DictValue;->DictValue_1(D)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lorg/opencv/dnn/DictValue;->DictValue_2(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    .line 56
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lorg/opencv/dnn/DictValue;->DictValue_0(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    .line 28
    return-void
.end method

.method private static native DictValue_0(Ljava/lang/String;)J
.end method

.method private static native DictValue_1(D)J
.end method

.method private static native DictValue_2(I)J
.end method

.method private static native delete(J)V
.end method

.method private static native getIntValue_0(JI)I
.end method

.method private static native getIntValue_1(J)I
.end method

.method private static native getRealValue_0(JI)D
.end method

.method private static native getRealValue_1(J)D
.end method

.method private static native getStringValue_0(JI)Ljava/lang/String;
.end method

.method private static native getStringValue_1(J)Ljava/lang/String;
.end method

.method private static native isInt_0(J)Z
.end method

.method private static native isReal_0(J)Z
.end method

.method private static native isString_0(J)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/DictValue;->delete(J)V

    .line 174
    return-void
.end method

.method public getIntValue()I
    .locals 4

    .prologue
    .line 165
    iget-wide v2, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/DictValue;->getIntValue_1(J)I

    move-result v0

    .line 167
    .local v0, "retVal":I
    return v0
.end method

.method public getIntValue(I)I
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 156
    iget-wide v2, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/dnn/DictValue;->getIntValue_0(JI)I

    move-result v0

    .line 158
    .local v0, "retVal":I
    return v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    return-wide v0
.end method

.method public getRealValue()D
    .locals 4

    .prologue
    .line 142
    iget-wide v2, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/DictValue;->getRealValue_1(J)D

    move-result-wide v0

    .line 144
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getRealValue(I)D
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 133
    iget-wide v2, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/dnn/DictValue;->getRealValue_0(JI)D

    move-result-wide v0

    .line 135
    .local v0, "retVal":D
    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    iget-wide v2, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/DictValue;->getStringValue_1(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 68
    iget-wide v2, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/dnn/DictValue;->getStringValue_0(JI)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method public isInt()Z
    .locals 4

    .prologue
    .line 91
    iget-wide v2, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/DictValue;->isInt_0(J)Z

    move-result v0

    .line 93
    .local v0, "retVal":Z
    return v0
.end method

.method public isReal()Z
    .locals 4

    .prologue
    .line 105
    iget-wide v2, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/DictValue;->isReal_0(J)Z

    move-result v0

    .line 107
    .local v0, "retVal":Z
    return v0
.end method

.method public isString()Z
    .locals 4

    .prologue
    .line 119
    iget-wide v2, p0, Lorg/opencv/dnn/DictValue;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/DictValue;->isString_0(J)Z

    move-result v0

    .line 121
    .local v0, "retVal":Z
    return v0
.end method
