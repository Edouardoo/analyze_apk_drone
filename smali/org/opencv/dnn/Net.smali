.class public Lorg/opencv/dnn/Net;
.super Ljava/lang/Object;
.source "Net.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lorg/opencv/dnn/Net;->Net_0()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    .line 35
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    return-void
.end method

.method private static native Net_0()J
.end method

.method private static native connect_0(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native delete(J)V
.end method

.method private static native deleteLayer_0(JJ)V
.end method

.method private static native empty_0(J)Z
.end method

.method private static native enableFusion_0(JZ)V
.end method

.method private static native forward_0(JLjava/lang/String;)J
.end method

.method private static native forward_1(J)J
.end method

.method private static native forward_2(JJLjava/lang/String;)V
.end method

.method private static native forward_3(JJ)V
.end method

.method private static native forward_4(JJLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native getFLOPS_0(JJ)J
.end method

.method private static native getFLOPS_1(JIJ)J
.end method

.method private static native getFLOPS_2(JILjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native getFLOPS_3(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native getLayerId_0(JLjava/lang/String;)I
.end method

.method private static native getLayerInputs_0(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/dnn/Layer;",
            ">;"
        }
    .end annotation
.end method

.method private static native getLayerNames_0(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native getLayerShapes_0(JJILjava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native getLayerShapes_1(JLjava/util/List;ILjava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native getLayerTypes_0(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native getLayer_0(JJ)J
.end method

.method private static native getLayersCount_0(JLjava/lang/String;)I
.end method

.method private static native getMemoryConsumption_0(JJ[D[D)V
.end method

.method private static native getMemoryConsumption_1(JJJJJ)V
.end method

.method private static native getMemoryConsumption_2(JIJ[D[D)V
.end method

.method private static native getMemoryConsumption_3(JILjava/util/List;[D[D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;[D[D)V"
        }
    .end annotation
.end method

.method private static native getMemoryConsumption_4(JLjava/util/List;[D[D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;[D[D)V"
        }
    .end annotation
.end method

.method private static native getMemoryConsumption_5(JLjava/util/List;JJJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;JJJ)V"
        }
    .end annotation
.end method

.method private static native getParam_0(JJI)J
.end method

.method private static native getParam_1(JJ)J
.end method

.method private static native getUnconnectedOutLayers_0(J)J
.end method

.method private static native setInput_0(JJLjava/lang/String;)V
.end method

.method private static native setInput_1(JJ)V
.end method

.method private static native setInputsNames_0(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native setParam_0(JJIJ)V
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "outPin"    # Ljava/lang/String;
    .param p2, "inpPin"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/dnn/Net;->connect_0(JLjava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public deleteLayer(Lorg/opencv/dnn/DictValue;)V
    .locals 4
    .param p1, "layer"    # Lorg/opencv/dnn/DictValue;

    .prologue
    .line 261
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/dnn/Net;->deleteLayer_0(JJ)V

    .line 263
    return-void
.end method

.method public empty()Z
    .locals 4

    .prologue
    .line 107
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Net;->empty_0(J)Z

    move-result v0

    .line 109
    .local v0, "retVal":Z
    return v0
.end method

.method public enableFusion(Z)V
    .locals 2
    .param p1, "fusion"    # Z

    .prologue
    .line 275
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->enableFusion_0(JZ)V

    .line 277
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 533
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Net;->delete(J)V

    .line 534
    return-void
.end method

.method public forward()Lorg/opencv/core/Mat;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Net;->forward_1(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 58
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public forward(Ljava/lang/String;)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "outputName"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/dnn/Net;->forward_0(JLjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 49
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public forward(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "outputBlobs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 298
    .local v0, "outputBlobs_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/dnn/Net;->forward_3(JJ)V

    .line 300
    return-void
.end method

.method public forward(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p2, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "outputBlobs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 289
    .local v0, "outputBlobs_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/dnn/Net;->forward_2(JJLjava/lang/String;)V

    .line 291
    return-void
.end method

.method public forward(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "outputBlobs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "outBlobNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 312
    .local v0, "outputBlobs_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/dnn/Net;->forward_4(JJLjava/util/List;)V

    .line 314
    return-void
.end method

.method public getFLOPS(ILjava/util/List;)J
    .locals 4
    .param p1, "layerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 177
    .local p2, "netInputShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/dnn/Net;->getFLOPS_2(JILjava/util/List;)J

    move-result-wide v0

    .line 179
    .local v0, "retVal":J
    return-wide v0
.end method

.method public getFLOPS(ILorg/opencv/core/MatOfInt;)J
    .locals 8
    .param p1, "layerId"    # I
    .param p2, "netInputShape"    # Lorg/opencv/core/MatOfInt;

    .prologue
    .line 162
    move-object v0, p2

    .line 163
    .local v0, "netInputShape_mat":Lorg/opencv/core/Mat;
    iget-wide v4, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v4, v5, p1, v6, v7}, Lorg/opencv/dnn/Net;->getFLOPS_1(JIJ)J

    move-result-wide v2

    .line 165
    .local v2, "retVal":J
    return-wide v2
.end method

.method public getFLOPS(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "netInputShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/dnn/Net;->getFLOPS_3(JLjava/util/List;)J

    move-result-wide v0

    .line 193
    .local v0, "retVal":J
    return-wide v0
.end method

.method public getFLOPS(Lorg/opencv/core/MatOfInt;)J
    .locals 8
    .param p1, "netInputShape"    # Lorg/opencv/core/MatOfInt;

    .prologue
    .line 148
    move-object v0, p1

    .line 149
    .local v0, "netInputShape_mat":Lorg/opencv/core/Mat;
    iget-wide v4, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v4, v5, v6, v7}, Lorg/opencv/dnn/Net;->getFLOPS_0(JJ)J

    move-result-wide v2

    .line 151
    .local v2, "retVal":J
    return-wide v2
.end method

.method public getLayer(Lorg/opencv/dnn/DictValue;)Lorg/opencv/dnn/Layer;
    .locals 6
    .param p1, "layerId"    # Lorg/opencv/dnn/DictValue;

    .prologue
    .line 93
    new-instance v0, Lorg/opencv/dnn/Layer;

    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/dnn/Net;->getLayer_0(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Layer;-><init>(J)V

    .line 95
    .local v0, "retVal":Lorg/opencv/dnn/Layer;
    return-object v0
.end method

.method public getLayerId(Ljava/lang/String;)I
    .locals 4
    .param p1, "layer"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/dnn/Net;->getLayerId_0(JLjava/lang/String;)I

    move-result v0

    .line 123
    .local v0, "retVal":I
    return v0
.end method

.method public getLayerInputs(Lorg/opencv/dnn/DictValue;)Ljava/util/List;
    .locals 6
    .param p1, "layerId"    # Lorg/opencv/dnn/DictValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/dnn/DictValue;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/dnn/Layer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/dnn/Net;->getLayerInputs_0(JJ)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/dnn/Layer;>;"
    return-object v0
.end method

.method public getLayerNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Net;->getLayerNames_0(J)Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getLayerShapes(Ljava/util/List;ILjava/util/List;Ljava/util/List;)V
    .locals 6
    .param p2, "layerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "netInputShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    .local p3, "inLayerShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    .local p4, "outLayerShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/opencv/dnn/Net;->getLayerShapes_1(JLjava/util/List;ILjava/util/List;Ljava/util/List;)V

    .line 349
    return-void
.end method

.method public getLayerShapes(Lorg/opencv/core/MatOfInt;ILjava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "netInputShape"    # Lorg/opencv/core/MatOfInt;
    .param p2, "layerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/MatOfInt;",
            "I",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p3, "inLayerShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    .local p4, "outLayerShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    move-object v7, p1

    .line 333
    .local v7, "netInputShape_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v2, v7, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/dnn/Net;->getLayerShapes_0(JJILjava/util/List;Ljava/util/List;)V

    .line 335
    return-void
.end method

.method public getLayerTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "layersTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->getLayerTypes_0(JLjava/util/List;)V

    .line 363
    return-void
.end method

.method public getLayersCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "layerType"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/dnn/Net;->getLayersCount_0(JLjava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "retVal":I
    return v0
.end method

.method public getMemoryConsumption(ILjava/util/List;[J[J)V
    .locals 7
    .param p1, "layerId"    # I
    .param p3, "weights"    # [J
    .param p4, "blobs"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;[J[J)V"
        }
    .end annotation

    .prologue
    .local p2, "netInputShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 439
    new-array v4, v0, [D

    .line 440
    .local v4, "weights_out":[D
    new-array v5, v0, [D

    .line 441
    .local v5, "blobs_out":[D
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/opencv/dnn/Net;->getMemoryConsumption_3(JILjava/util/List;[D[D)V

    .line 442
    if-eqz p3, :cond_0

    aget-wide v0, v4, v6

    double-to-long v0, v0

    aput-wide v0, p3, v6

    .line 443
    :cond_0
    if-eqz p4, :cond_1

    aget-wide v0, v5, v6

    double-to-long v0, v0

    aput-wide v0, p4, v6

    .line 444
    :cond_1
    return-void
.end method

.method public getMemoryConsumption(ILorg/opencv/core/MatOfInt;[J[J)V
    .locals 9
    .param p1, "layerId"    # I
    .param p2, "netInputShape"    # Lorg/opencv/core/MatOfInt;
    .param p3, "weights"    # [J
    .param p4, "blobs"    # [J

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 422
    move-object v7, p2

    .line 423
    .local v7, "netInputShape_mat":Lorg/opencv/core/Mat;
    new-array v5, v0, [D

    .line 424
    .local v5, "weights_out":[D
    new-array v6, v0, [D

    .line 425
    .local v6, "blobs_out":[D
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v3, v7, Lorg/opencv/core/Mat;->nativeObj:J

    move v2, p1

    invoke-static/range {v0 .. v6}, Lorg/opencv/dnn/Net;->getMemoryConsumption_2(JIJ[D[D)V

    .line 426
    if-eqz p3, :cond_0

    aget-wide v0, v5, v8

    double-to-long v0, v0

    aput-wide v0, p3, v8

    .line 427
    :cond_0
    if-eqz p4, :cond_1

    aget-wide v0, v6, v8

    double-to-long v0, v0

    aput-wide v0, p4, v8

    .line 428
    :cond_1
    return-void
.end method

.method public getMemoryConsumption(Ljava/util/List;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfDouble;)V
    .locals 12
    .param p2, "layerIds"    # Lorg/opencv/core/MatOfInt;
    .param p3, "weights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "blobs"    # Lorg/opencv/core/MatOfDouble;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;",
            "Lorg/opencv/core/MatOfInt;",
            "Lorg/opencv/core/MatOfDouble;",
            "Lorg/opencv/core/MatOfDouble;",
            ")V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "netInputShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    move-object v10, p2

    .line 472
    .local v10, "layerIds_mat":Lorg/opencv/core/Mat;
    move-object v11, p3

    .line 473
    .local v11, "weights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p4

    .line 474
    .local v0, "blobs_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v4, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v11, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v3, p1

    invoke-static/range {v1 .. v9}, Lorg/opencv/dnn/Net;->getMemoryConsumption_5(JLjava/util/List;JJJ)V

    .line 476
    return-void
.end method

.method public getMemoryConsumption(Ljava/util/List;[J[J)V
    .locals 5
    .param p2, "weights"    # [J
    .param p3, "blobs"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfInt;",
            ">;[J[J)V"
        }
    .end annotation

    .prologue
    .local p1, "netInputShapes":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfInt;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 455
    new-array v1, v2, [D

    .line 456
    .local v1, "weights_out":[D
    new-array v0, v2, [D

    .line 457
    .local v0, "blobs_out":[D
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3, p1, v1, v0}, Lorg/opencv/dnn/Net;->getMemoryConsumption_4(JLjava/util/List;[D[D)V

    .line 458
    if-eqz p2, :cond_0

    aget-wide v2, v1, v4

    double-to-long v2, v2

    aput-wide v2, p2, v4

    .line 459
    :cond_0
    if-eqz p3, :cond_1

    aget-wide v2, v0, v4

    double-to-long v2, v2

    aput-wide v2, p3, v4

    .line 460
    :cond_1
    return-void
.end method

.method public getMemoryConsumption(Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfDouble;)V
    .locals 14
    .param p1, "netInputShape"    # Lorg/opencv/core/MatOfInt;
    .param p2, "layerIds"    # Lorg/opencv/core/MatOfInt;
    .param p3, "weights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "blobs"    # Lorg/opencv/core/MatOfDouble;

    .prologue
    .line 405
    move-object v12, p1

    .line 406
    .local v12, "netInputShape_mat":Lorg/opencv/core/Mat;
    move-object/from16 v11, p2

    .line 407
    .local v11, "layerIds_mat":Lorg/opencv/core/Mat;
    move-object/from16 v13, p3

    .line 408
    .local v13, "weights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v10, p4

    .line 409
    .local v10, "blobs_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v2, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v11, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v10, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/dnn/Net;->getMemoryConsumption_1(JJJJJ)V

    .line 411
    return-void
.end method

.method public getMemoryConsumption(Lorg/opencv/core/MatOfInt;[J[J)V
    .locals 8
    .param p1, "netInputShape"    # Lorg/opencv/core/MatOfInt;
    .param p2, "weights"    # [J
    .param p3, "blobs"    # [J

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 388
    move-object v6, p1

    .line 389
    .local v6, "netInputShape_mat":Lorg/opencv/core/Mat;
    new-array v4, v0, [D

    .line 390
    .local v4, "weights_out":[D
    new-array v5, v0, [D

    .line 391
    .local v5, "blobs_out":[D
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v2, v6, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/dnn/Net;->getMemoryConsumption_0(JJ[D[D)V

    .line 392
    if-eqz p2, :cond_0

    aget-wide v0, v4, v7

    double-to-long v0, v0

    aput-wide v0, p2, v7

    .line 393
    :cond_0
    if-eqz p3, :cond_1

    aget-wide v0, v5, v7

    double-to-long v0, v0

    aput-wide v0, p3, v7

    .line 394
    :cond_1
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    return-wide v0
.end method

.method public getParam(Lorg/opencv/dnn/DictValue;)Lorg/opencv/core/Mat;
    .locals 6
    .param p1, "layer"    # Lorg/opencv/dnn/DictValue;

    .prologue
    .line 79
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/dnn/Net;->getParam_1(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 81
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getParam(Lorg/opencv/dnn/DictValue;I)Lorg/opencv/core/Mat;
    .locals 6
    .param p1, "layer"    # Lorg/opencv/dnn/DictValue;
    .param p2, "numParam"    # I

    .prologue
    .line 70
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/dnn/Net;->getParam_0(JJI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 72
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public getUnconnectedOutLayers()Lorg/opencv/core/MatOfInt;
    .locals 4

    .prologue
    .line 233
    iget-wide v2, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Net;->getUnconnectedOutLayers_0(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/opencv/core/MatOfInt;->fromNativeAddr(J)Lorg/opencv/core/MatOfInt;

    move-result-object v0

    .line 235
    .local v0, "retVal":Lorg/opencv/core/MatOfInt;
    return-object v0
.end method

.method public setInput(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "blob"    # Lorg/opencv/core/Mat;

    .prologue
    .line 497
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/dnn/Net;->setInput_1(JJ)V

    .line 499
    return-void
.end method

.method public setInput(Lorg/opencv/core/Mat;Ljava/lang/String;)V
    .locals 4
    .param p1, "blob"    # Lorg/opencv/core/Mat;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 488
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/dnn/Net;->setInput_0(JJLjava/lang/String;)V

    .line 490
    return-void
.end method

.method public setInputsNames(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "inputBlobNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Net;->setInputsNames_0(JLjava/util/List;)V

    .line 513
    return-void
.end method

.method public setParam(Lorg/opencv/dnn/DictValue;ILorg/opencv/core/Mat;)V
    .locals 7
    .param p1, "layer"    # Lorg/opencv/dnn/DictValue;
    .param p2, "numParam"    # I
    .param p3, "blob"    # Lorg/opencv/core/Mat;

    .prologue
    .line 525
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-virtual {p1}, Lorg/opencv/dnn/DictValue;->getNativeObjAddr()J

    move-result-wide v2

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/opencv/dnn/Net;->setParam_0(JJIJ)V

    .line 527
    return-void
.end method
