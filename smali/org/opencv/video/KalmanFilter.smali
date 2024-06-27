.class public Lorg/opencv/video/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lorg/opencv/video/KalmanFilter;->KalmanFilter_2()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "dynamParams"    # I
    .param p2, "measureParams"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1, p2}, Lorg/opencv/video/KalmanFilter;->KalmanFilter_1(II)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    .line 37
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "dynamParams"    # I
    .param p2, "measureParams"    # I
    .param p3, "controlParams"    # I
    .param p4, "type"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1, p2, p3, p4}, Lorg/opencv/video/KalmanFilter;->KalmanFilter_0(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    .line 28
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    return-void
.end method

.method private static native KalmanFilter_0(IIII)J
.end method

.method private static native KalmanFilter_1(II)J
.end method

.method private static native KalmanFilter_2()J
.end method

.method private static native correct_0(JJ)J
.end method

.method private static native delete(J)V
.end method

.method private static native get_controlMatrix_0(J)J
.end method

.method private static native get_errorCovPost_0(J)J
.end method

.method private static native get_errorCovPre_0(J)J
.end method

.method private static native get_gain_0(J)J
.end method

.method private static native get_measurementMatrix_0(J)J
.end method

.method private static native get_measurementNoiseCov_0(J)J
.end method

.method private static native get_processNoiseCov_0(J)J
.end method

.method private static native get_statePost_0(J)J
.end method

.method private static native get_statePre_0(J)J
.end method

.method private static native get_transitionMatrix_0(J)J
.end method

.method private static native predict_0(JJ)J
.end method

.method private static native predict_1(J)J
.end method

.method private static native set_controlMatrix_0(JJ)V
.end method

.method private static native set_errorCovPost_0(JJ)V
.end method

.method private static native set_errorCovPre_0(JJ)V
.end method

.method private static native set_gain_0(JJ)V
.end method

.method private static native set_measurementMatrix_0(JJ)V
.end method

.method private static native set_measurementNoiseCov_0(JJ)V
.end method

.method private static native set_processNoiseCov_0(JJ)V
.end method

.method private static native set_statePost_0(JJ)V
.end method

.method private static native set_statePre_0(JJ)V
.end method

.method private static native set_transitionMatrix_0(JJ)V
.end method


# virtual methods
.method public correct(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p1, "measurement"    # Lorg/opencv/core/Mat;

    .prologue
    .line 63
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/video/KalmanFilter;->correct_0(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 65
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 374
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/KalmanFilter;->delete(J)V

    .line 375
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    return-wide v0
.end method

.method public get_controlMatrix()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 184
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_controlMatrix_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 186
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public get_errorCovPost()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 352
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_errorCovPost_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 354
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public get_errorCovPre()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 296
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_errorCovPre_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 298
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public get_gain()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 324
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_gain_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 326
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public get_measurementMatrix()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 212
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_measurementMatrix_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 214
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public get_measurementNoiseCov()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_measurementNoiseCov_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 270
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public get_processNoiseCov()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 240
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_processNoiseCov_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 242
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public get_statePost()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_statePost_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 130
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public get_statePre()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_statePre_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 102
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public get_transitionMatrix()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->get_transitionMatrix_0(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 158
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public predict()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/video/KalmanFilter;->predict_1(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 88
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public predict(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 6
    .param p1, "control"    # Lorg/opencv/core/Mat;

    .prologue
    .line 77
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/video/KalmanFilter;->predict_0(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 79
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public set_controlMatrix(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "controlMatrix"    # Lorg/opencv/core/Mat;

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_controlMatrix_0(JJ)V

    .line 200
    return-void
.end method

.method public set_errorCovPost(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "errorCovPost"    # Lorg/opencv/core/Mat;

    .prologue
    .line 366
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_errorCovPost_0(JJ)V

    .line 368
    return-void
.end method

.method public set_errorCovPre(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "errorCovPre"    # Lorg/opencv/core/Mat;

    .prologue
    .line 310
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_errorCovPre_0(JJ)V

    .line 312
    return-void
.end method

.method public set_gain(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "gain"    # Lorg/opencv/core/Mat;

    .prologue
    .line 338
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_gain_0(JJ)V

    .line 340
    return-void
.end method

.method public set_measurementMatrix(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "measurementMatrix"    # Lorg/opencv/core/Mat;

    .prologue
    .line 226
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_measurementMatrix_0(JJ)V

    .line 228
    return-void
.end method

.method public set_measurementNoiseCov(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "measurementNoiseCov"    # Lorg/opencv/core/Mat;

    .prologue
    .line 282
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_measurementNoiseCov_0(JJ)V

    .line 284
    return-void
.end method

.method public set_processNoiseCov(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "processNoiseCov"    # Lorg/opencv/core/Mat;

    .prologue
    .line 254
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_processNoiseCov_0(JJ)V

    .line 256
    return-void
.end method

.method public set_statePost(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "statePost"    # Lorg/opencv/core/Mat;

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_statePost_0(JJ)V

    .line 144
    return-void
.end method

.method public set_statePre(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "statePre"    # Lorg/opencv/core/Mat;

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_statePre_0(JJ)V

    .line 116
    return-void
.end method

.method public set_transitionMatrix(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "transitionMatrix"    # Lorg/opencv/core/Mat;

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/opencv/video/KalmanFilter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/KalmanFilter;->set_transitionMatrix_0(JJ)V

    .line 172
    return-void
.end method
