.class public Lorg/opencv/utils/ObjectDetector;
.super Ljava/lang/Object;
.source "ObjectDetector.java"


# instance fields
.field private mCascadeClassifier:Lorg/opencv/objdetect/CascadeClassifier;

.field private mMinNeighbors:I

.field private mRectColor:Lorg/opencv/core/Scalar;

.field private mRelativeObjectHeight:F

.field private mRelativeObjectWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFFLorg/opencv/core/Scalar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "minNeighbors"    # I
    .param p4, "relativeObjectWidth"    # F
    .param p5, "relativeObjectHeight"    # F
    .param p6, "rectColor"    # Lorg/opencv/core/Scalar;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/opencv/utils/ObjectDetector;->createDetector(Landroid/content/Context;I)Lorg/opencv/objdetect/CascadeClassifier;

    move-result-object v0

    iput-object v0, p0, Lorg/opencv/utils/ObjectDetector;->mCascadeClassifier:Lorg/opencv/objdetect/CascadeClassifier;

    .line 43
    iput p3, p0, Lorg/opencv/utils/ObjectDetector;->mMinNeighbors:I

    .line 44
    iput p4, p0, Lorg/opencv/utils/ObjectDetector;->mRelativeObjectWidth:F

    .line 45
    iput p5, p0, Lorg/opencv/utils/ObjectDetector;->mRelativeObjectHeight:F

    .line 46
    iput-object p6, p0, Lorg/opencv/utils/ObjectDetector;->mRectColor:Lorg/opencv/core/Scalar;

    .line 47
    return-void
.end method

.method private createDetector(Landroid/content/Context;I)Lorg/opencv/objdetect/CascadeClassifier;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 58
    const/4 v6, 0x0

    .line 59
    .local v6, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 61
    .local v8, "os":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 62
    const-string v10, "cascade"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 63
    .local v2, "cascadeDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v3, "cascadeFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .local v9, "os":Ljava/io/FileOutputStream;
    const/16 v10, 0x1000

    :try_start_1
    new-array v0, v10, [B

    .line 68
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    .line 69
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 79
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v5

    move-object v8, v9

    .line 80
    .end local v2    # "cascadeDir":Ljava/io/File;
    .end local v3    # "cascadeFile":Ljava/io/File;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .local v5, "e":Ljava/io/IOException;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    const/4 v7, 0x0

    .line 84
    if-eqz v6, :cond_0

    .line 85
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 87
    :cond_0
    if-eqz v8, :cond_1

    .line 88
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v7

    .line 72
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "cascadeDir":Ljava/io/File;
    .restart local v3    # "cascadeFile":Ljava/io/File;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    new-instance v7, Lorg/opencv/objdetect/CascadeClassifier;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/opencv/objdetect/CascadeClassifier;-><init>(Ljava/lang/String;)V

    .line 73
    .local v7, "javaDetector":Lorg/opencv/objdetect/CascadeClassifier;
    invoke-virtual {v7}, Lorg/opencv/objdetect/CascadeClassifier;->empty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 74
    const/4 v7, 0x0

    .line 77
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v4

    .line 84
    .local v4, "delete":Z
    if-eqz v6, :cond_4

    .line 85
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 87
    :cond_4
    if-eqz v9, :cond_5

    .line 88
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_3
    move-object v8, v9

    .line 78
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 90
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 90
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "cascadeDir":Ljava/io/File;
    .end local v3    # "cascadeFile":Ljava/io/File;
    .end local v4    # "delete":Z
    .end local v7    # "javaDetector":Lorg/opencv/objdetect/CascadeClassifier;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    .line 91
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 83
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 84
    :goto_4
    if-eqz v6, :cond_6

    .line 85
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 87
    :cond_6
    if-eqz v8, :cond_7

    .line 88
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 92
    :cond_7
    :goto_5
    throw v10

    .line 90
    :catch_3
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 83
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "cascadeDir":Ljava/io/File;
    .restart local v3    # "cascadeFile":Ljava/io/File;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 79
    .end local v2    # "cascadeDir":Ljava/io/File;
    .end local v3    # "cascadeFile":Ljava/io/File;
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method private getSize(Lorg/opencv/core/Mat;FF)Lorg/opencv/core/Size;
    .locals 10
    .param p1, "gray"    # Lorg/opencv/core/Mat;
    .param p2, "relativeObjectWidth"    # F
    .param p3, "relativeObjectHeight"    # F

    .prologue
    const-wide/16 v8, 0x0

    .line 126
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v3

    .line 127
    .local v3, "size":Lorg/opencv/core/Size;
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    .line 128
    .local v1, "cameraWidth":I
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    .line 129
    .local v0, "cameraHeight":I
    int-to-float v5, v1

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 130
    .local v4, "width":I
    int-to-float v5, v0

    mul-float/2addr v5, p3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 131
    .local v2, "height":I
    if-gtz v4, :cond_0

    move-wide v6, v8

    .end local v1    # "cameraWidth":I
    :goto_0
    iput-wide v6, v3, Lorg/opencv/core/Size;->width:D

    .line 132
    if-gtz v2, :cond_2

    .end local v0    # "cameraHeight":I
    :goto_1
    iput-wide v8, v3, Lorg/opencv/core/Size;->height:D

    .line 133
    return-object v3

    .line 131
    .restart local v0    # "cameraHeight":I
    .restart local v1    # "cameraWidth":I
    :cond_0
    if-ge v1, v4, :cond_1

    .end local v1    # "cameraWidth":I
    :goto_2
    int-to-double v6, v1

    goto :goto_0

    .restart local v1    # "cameraWidth":I
    :cond_1
    move v1, v4

    goto :goto_2

    .line 132
    .end local v1    # "cameraWidth":I
    :cond_2
    if-ge v0, v2, :cond_3

    .end local v0    # "cameraHeight":I
    :goto_3
    int-to-double v8, v0

    goto :goto_1

    .restart local v0    # "cameraHeight":I
    :cond_3
    move v0, v2

    goto :goto_3
.end method


# virtual methods
.method public detectObject(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;)[Lorg/opencv/core/Rect;
    .locals 10
    .param p1, "gray"    # Lorg/opencv/core/Mat;
    .param p2, "object"    # Lorg/opencv/core/MatOfRect;

    .prologue
    .line 105
    iget-object v1, p0, Lorg/opencv/utils/ObjectDetector;->mCascadeClassifier:Lorg/opencv/objdetect/CascadeClassifier;

    const-wide v4, 0x3ff199999999999aL    # 1.1

    iget v6, p0, Lorg/opencv/utils/ObjectDetector;->mMinNeighbors:I

    const/4 v7, 0x2

    iget v0, p0, Lorg/opencv/utils/ObjectDetector;->mRelativeObjectWidth:F

    iget v2, p0, Lorg/opencv/utils/ObjectDetector;->mRelativeObjectHeight:F

    .line 111
    invoke-direct {p0, p1, v0, v2}, Lorg/opencv/utils/ObjectDetector;->getSize(Lorg/opencv/core/Mat;FF)Lorg/opencv/core/Size;

    move-result-object v8

    .line 112
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    .line 105
    invoke-virtual/range {v1 .. v9}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;DIILorg/opencv/core/Size;Lorg/opencv/core/Size;)V

    .line 114
    invoke-virtual {p2}, Lorg/opencv/core/MatOfRect;->toArray()[Lorg/opencv/core/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getRectColor()Lorg/opencv/core/Scalar;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/opencv/utils/ObjectDetector;->mRectColor:Lorg/opencv/core/Scalar;

    return-object v0
.end method
