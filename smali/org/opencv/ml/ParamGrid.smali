.class public Lorg/opencv/ml/ParamGrid;
.super Ljava/lang/Object;
.source "ParamGrid.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/ml/ParamGrid;->nativeObj:J

    return-void
.end method

.method public static create()Lorg/opencv/ml/ParamGrid;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lorg/opencv/ml/ParamGrid;

    invoke-static {}, Lorg/opencv/ml/ParamGrid;->create_1()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/ParamGrid;-><init>(J)V

    .line 37
    .local v0, "retVal":Lorg/opencv/ml/ParamGrid;
    return-object v0
.end method

.method public static create(DDD)Lorg/opencv/ml/ParamGrid;
    .locals 4
    .param p0, "minVal"    # D
    .param p2, "maxVal"    # D
    .param p4, "logstep"    # D

    .prologue
    .line 26
    new-instance v0, Lorg/opencv/ml/ParamGrid;

    invoke-static/range {p0 .. p5}, Lorg/opencv/ml/ParamGrid;->create_0(DDD)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/ml/ParamGrid;-><init>(J)V

    .line 28
    .local v0, "retVal":Lorg/opencv/ml/ParamGrid;
    return-object v0
.end method

.method private static native create_0(DDD)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native get_logStep_0(J)D
.end method

.method private static native get_maxVal_0(J)D
.end method

.method private static native get_minVal_0(J)D
.end method

.method private static native set_logStep_0(JD)V
.end method

.method private static native set_maxVal_0(JD)V
.end method

.method private static native set_minVal_0(JD)V
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
    .line 127
    iget-wide v0, p0, Lorg/opencv/ml/ParamGrid;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/ParamGrid;->delete(J)V

    .line 128
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lorg/opencv/ml/ParamGrid;->nativeObj:J

    return-wide v0
.end method

.method public get_logStep()D
    .locals 4

    .prologue
    .line 105
    iget-wide v2, p0, Lorg/opencv/ml/ParamGrid;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ParamGrid;->get_logStep_0(J)D

    move-result-wide v0

    .line 107
    .local v0, "retVal":D
    return-wide v0
.end method

.method public get_maxVal()D
    .locals 4

    .prologue
    .line 77
    iget-wide v2, p0, Lorg/opencv/ml/ParamGrid;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ParamGrid;->get_maxVal_0(J)D

    move-result-wide v0

    .line 79
    .local v0, "retVal":D
    return-wide v0
.end method

.method public get_minVal()D
    .locals 4

    .prologue
    .line 49
    iget-wide v2, p0, Lorg/opencv/ml/ParamGrid;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/ml/ParamGrid;->get_minVal_0(J)D

    move-result-wide v0

    .line 51
    .local v0, "retVal":D
    return-wide v0
.end method

.method public set_logStep(D)V
    .locals 3
    .param p1, "logStep"    # D

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/opencv/ml/ParamGrid;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ParamGrid;->set_logStep_0(JD)V

    .line 121
    return-void
.end method

.method public set_maxVal(D)V
    .locals 3
    .param p1, "maxVal"    # D

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/opencv/ml/ParamGrid;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ParamGrid;->set_maxVal_0(JD)V

    .line 93
    return-void
.end method

.method public set_minVal(D)V
    .locals 3
    .param p1, "minVal"    # D

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/opencv/ml/ParamGrid;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ParamGrid;->set_minVal_0(JD)V

    .line 65
    return-void
.end method
