.class public Lorg/opencv/objdetect/CascadeClassifier;
.super Ljava/lang/Object;
.source "CascadeClassifier.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lorg/opencv/objdetect/CascadeClassifier;->CascadeClassifier_1()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    .line 48
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lorg/opencv/objdetect/CascadeClassifier;->CascadeClassifier_0(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    .line 34
    return-void
.end method

.method private static native CascadeClassifier_0(Ljava/lang/String;)J
.end method

.method private static native CascadeClassifier_1()J
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "oldcascade"    # Ljava/lang/String;
    .param p1, "newcascade"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0, p1}, Lorg/opencv/objdetect/CascadeClassifier;->convert_0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 76
    .local v0, "retVal":Z
    return v0
.end method

.method private static native convert_0(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native delete(J)V
.end method

.method private static native detectMultiScale2_0(JJJJDIIDDDD)V
.end method

.method private static native detectMultiScale2_1(JJJJ)V
.end method

.method private static native detectMultiScale3_0(JJJJJDIIDDDDZ)V
.end method

.method private static native detectMultiScale3_1(JJJJJ)V
.end method

.method private static native detectMultiScale_0(JJJDIIDDDD)V
.end method

.method private static native detectMultiScale_1(JJJ)V
.end method

.method private static native empty_0(J)Z
.end method

.method private static native getFeatureType_0(J)I
.end method

.method private static native getOriginalWindowSize_0(J)[D
.end method

.method private static native isOldFormatCascade_0(J)Z
.end method

.method private static native load_0(JLjava/lang/String;)Z
.end method


# virtual methods
.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;)V
    .locals 7
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;

    .prologue
    .line 159
    move-object v6, p2

    .line 160
    .local v6, "objects_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v6, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale_1(JJJ)V

    .line 162
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;DIILorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 21
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "scaleFactor"    # D
    .param p5, "minNeighbors"    # I
    .param p6, "flags"    # I
    .param p7, "minSize"    # Lorg/opencv/core/Size;
    .param p8, "maxSize"    # Lorg/opencv/core/Size;

    .prologue
    .line 150
    move-object/from16 v20, p2

    .line 151
    .local v20, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p7

    iget-wide v14, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v2 .. v19}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale_0(JJJDIIDDDD)V

    .line 153
    return-void
.end method

.method public detectMultiScale2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;)V
    .locals 10
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "numDetections"    # Lorg/opencv/core/MatOfInt;

    .prologue
    .line 183
    move-object v9, p2

    .line 184
    .local v9, "objects_mat":Lorg/opencv/core/Mat;
    move-object v8, p3

    .line 185
    .local v8, "numDetections_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale2_1(JJJJ)V

    .line 187
    return-void
.end method

.method public detectMultiScale2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;DIILorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 24
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "numDetections"    # Lorg/opencv/core/MatOfInt;
    .param p4, "scaleFactor"    # D
    .param p6, "minNeighbors"    # I
    .param p7, "flags"    # I
    .param p8, "minSize"    # Lorg/opencv/core/Size;
    .param p9, "maxSize"    # Lorg/opencv/core/Size;

    .prologue
    .line 173
    move-object/from16 v23, p2

    .line 174
    .local v23, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v22, p3

    .line 175
    .local v22, "numDetections_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v23

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v22

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v14, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v20, v0

    move-wide/from16 v10, p4

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-static/range {v2 .. v21}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale2_0(JJJJDIIDDDD)V

    .line 177
    return-void
.end method

.method public detectMultiScale3(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;)V
    .locals 13
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "rejectLevels"    # Lorg/opencv/core/MatOfInt;
    .param p4, "levelWeights"    # Lorg/opencv/core/MatOfDouble;

    .prologue
    .line 209
    move-object v11, p2

    .line 210
    .local v11, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v12, p3

    .line 211
    .local v12, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v10, p4

    .line 212
    .local v10, "levelWeights_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v11, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v10, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale3_1(JJJJJ)V

    .line 214
    return-void
.end method

.method public detectMultiScale3(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;DIILorg/opencv/core/Size;Lorg/opencv/core/Size;Z)V
    .locals 29
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "rejectLevels"    # Lorg/opencv/core/MatOfInt;
    .param p4, "levelWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "scaleFactor"    # D
    .param p7, "minNeighbors"    # I
    .param p8, "flags"    # I
    .param p9, "minSize"    # Lorg/opencv/core/Size;
    .param p10, "maxSize"    # Lorg/opencv/core/Size;
    .param p11, "outputRejectLevels"    # Z

    .prologue
    .line 198
    move-object/from16 v26, p2

    .line 199
    .local v26, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v27, p3

    .line 200
    .local v27, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v25, p4

    .line 201
    .local v25, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v26

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v27

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, v25

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p10

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v22, v0

    move-wide/from16 v12, p5

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p11

    invoke-static/range {v2 .. v24}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale3_0(JJJJJDIIDDDDZ)V

    .line 203
    return-void
.end method

.method public empty()Z
    .locals 4

    .prologue
    .line 88
    iget-wide v2, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/CascadeClassifier;->empty_0(J)Z

    move-result v0

    .line 90
    .local v0, "retVal":Z
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 220
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/CascadeClassifier;->delete(J)V

    .line 221
    return-void
.end method

.method public getFeatureType()I
    .locals 4

    .prologue
    .line 137
    iget-wide v2, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/CascadeClassifier;->getFeatureType_0(J)I

    move-result v0

    .line 139
    .local v0, "retVal":I
    return v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    return-wide v0
.end method

.method public getOriginalWindowSize()Lorg/opencv/core/Size;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/CascadeClassifier;->getOriginalWindowSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    .line 62
    .local v0, "retVal":Lorg/opencv/core/Size;
    return-object v0
.end method

.method public isOldFormatCascade()Z
    .locals 4

    .prologue
    .line 102
    iget-wide v2, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/objdetect/CascadeClassifier;->isOldFormatCascade_0(J)Z

    move-result v0

    .line 104
    .local v0, "retVal":Z
    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-wide v2, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/objdetect/CascadeClassifier;->load_0(JLjava/lang/String;)Z

    move-result v0

    .line 118
    .local v0, "retVal":Z
    return v0
.end method
