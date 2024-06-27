.class public Lorg/opencv/dnn/Dnn;
.super Ljava/lang/Object;
.source "Dnn.java"


# static fields
.field public static final DNN_BACKEND_DEFAULT:I = 0x0

.field public static final DNN_BACKEND_HALIDE:I = 0x1

.field public static final DNN_TARGET_CPU:I = 0x0

.field public static final DNN_TARGET_OPENCL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blobFromImage(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "image"    # Lorg/opencv/core/Mat;

    .prologue
    .line 40
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Dnn;->blobFromImage_1(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 42
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static blobFromImage(Lorg/opencv/core/Mat;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;Z)Lorg/opencv/core/Mat;
    .locals 21
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;
    .param p5, "swapRB"    # Z

    .prologue
    .line 31
    new-instance v19, Lorg/opencv/core/Mat;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v10, v4, v5

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v12, v4, v5

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x2

    aget-wide v14, v4, v5

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x3

    aget-wide v16, v4, v5

    move-wide/from16 v4, p1

    move/from16 v18, p5

    invoke-static/range {v2 .. v18}, Lorg/opencv/dnn/Dnn;->blobFromImage_0(JDDDDDDDZ)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 33
    .local v19, "retVal":Lorg/opencv/core/Mat;
    return-object v19
.end method

.method private static native blobFromImage_0(JDDDDDDDZ)J
.end method

.method private static native blobFromImage_1(J)J
.end method

.method public static blobFromImages(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 63
    .local v0, "images_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Dnn;->blobFromImages_1(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 65
    .local v1, "retVal":Lorg/opencv/core/Mat;
    return-object v1
.end method

.method public static blobFromImages(Ljava/util/List;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;Z)Lorg/opencv/core/Mat;
    .locals 21
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;
    .param p5, "swapRB"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;D",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Scalar;",
            "Z)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v19

    .line 54
    .local v19, "images_mat":Lorg/opencv/core/Mat;
    new-instance v20, Lorg/opencv/core/Mat;

    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v10, v4, v5

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v12, v4, v5

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x2

    aget-wide v14, v4, v5

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x3

    aget-wide v16, v4, v5

    move-wide/from16 v4, p1

    move/from16 v18, p5

    invoke-static/range {v2 .. v18}, Lorg/opencv/dnn/Dnn;->blobFromImages_0(JDDDDDDDZ)J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 56
    .local v20, "retVal":Lorg/opencv/core/Mat;
    return-object v20
.end method

.method private static native blobFromImages_0(JDDDDDDDZ)J
.end method

.method private static native blobFromImages_1(J)J
.end method

.method public static createCaffeImporter(Ljava/lang/String;)Lorg/opencv/dnn/Importer;
    .locals 4
    .param p0, "prototxt"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Lorg/opencv/dnn/Importer;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->createCaffeImporter_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Importer;-><init>(J)V

    .line 171
    .local v0, "retVal":Lorg/opencv/dnn/Importer;
    return-object v0
.end method

.method public static createCaffeImporter(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/dnn/Importer;
    .locals 4
    .param p0, "prototxt"    # Ljava/lang/String;
    .param p1, "caffeModel"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Lorg/opencv/dnn/Importer;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->createCaffeImporter_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Importer;-><init>(J)V

    .line 162
    .local v0, "retVal":Lorg/opencv/dnn/Importer;
    return-object v0
.end method

.method private static native createCaffeImporter_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native createCaffeImporter_1(Ljava/lang/String;)J
.end method

.method public static createTensorflowImporter(Ljava/lang/String;)Lorg/opencv/dnn/Importer;
    .locals 4
    .param p0, "model"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Lorg/opencv/dnn/Importer;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->createTensorflowImporter_0(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Importer;-><init>(J)V

    .line 185
    .local v0, "retVal":Lorg/opencv/dnn/Importer;
    return-object v0
.end method

.method private static native createTensorflowImporter_0(Ljava/lang/String;)J
.end method

.method public static createTorchImporter(Ljava/lang/String;)Lorg/opencv/dnn/Importer;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v0, Lorg/opencv/dnn/Importer;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->createTorchImporter_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Importer;-><init>(J)V

    .line 208
    .local v0, "retVal":Lorg/opencv/dnn/Importer;
    return-object v0
.end method

.method public static createTorchImporter(Ljava/lang/String;Z)Lorg/opencv/dnn/Importer;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "isBinary"    # Z

    .prologue
    .line 197
    new-instance v0, Lorg/opencv/dnn/Importer;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->createTorchImporter_0(Ljava/lang/String;Z)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Importer;-><init>(J)V

    .line 199
    .local v0, "retVal":Lorg/opencv/dnn/Importer;
    return-object v0
.end method

.method private static native createTorchImporter_0(Ljava/lang/String;Z)J
.end method

.method private static native createTorchImporter_1(Ljava/lang/String;)J
.end method

.method public static readNetFromCaffe(Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "prototxt"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readNetFromCaffe_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    .line 111
    .local v0, "retVal":Lorg/opencv/dnn/Net;
    return-object v0
.end method

.method public static readNetFromCaffe(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "prototxt"    # Ljava/lang/String;
    .param p1, "caffeModel"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readNetFromCaffe_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    .line 102
    .local v0, "retVal":Lorg/opencv/dnn/Net;
    return-object v0
.end method

.method private static native readNetFromCaffe_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native readNetFromCaffe_1(Ljava/lang/String;)J
.end method

.method public static readNetFromTensorflow(Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "model"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readNetFromTensorflow_0(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    .line 125
    .local v0, "retVal":Lorg/opencv/dnn/Net;
    return-object v0
.end method

.method private static native readNetFromTensorflow_0(Ljava/lang/String;)J
.end method

.method public static readNetFromTorch(Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "model"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readNetFromTorch_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    .line 148
    .local v0, "retVal":Lorg/opencv/dnn/Net;
    return-object v0
.end method

.method public static readNetFromTorch(Ljava/lang/String;Z)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "model"    # Ljava/lang/String;
    .param p1, "isBinary"    # Z

    .prologue
    .line 137
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readNetFromTorch_0(Ljava/lang/String;Z)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    .line 139
    .local v0, "retVal":Lorg/opencv/dnn/Net;
    return-object v0
.end method

.method private static native readNetFromTorch_0(Ljava/lang/String;Z)J
.end method

.method private static native readNetFromTorch_1(Ljava/lang/String;)J
.end method

.method public static readTorchBlob(Ljava/lang/String;)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readTorchBlob_1(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 88
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method public static readTorchBlob(Ljava/lang/String;Z)Lorg/opencv/core/Mat;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "isBinary"    # Z

    .prologue
    .line 77
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readTorchBlob_0(Ljava/lang/String;Z)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 79
    .local v0, "retVal":Lorg/opencv/core/Mat;
    return-object v0
.end method

.method private static native readTorchBlob_0(Ljava/lang/String;Z)J
.end method

.method private static native readTorchBlob_1(Ljava/lang/String;)J
.end method
