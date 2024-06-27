.class public Lorg/opencv/utils/Converters;
.super Ljava/lang/Object;
.source "Converters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Mat_to_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 10
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/DMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/DMatch;>;"
    const/4 v5, 0x0

    .line 695
    if-nez p1, :cond_0

    .line 696
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output List can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 697
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    .line 698
    .local v1, "count":I
    sget v3, Lorg/opencv/core/CvType;->CV_64FC4:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 699
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CvType.CV_64FC4 != m.type() ||  m.cols()!=1\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 702
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 703
    mul-int/lit8 v3, v1, 0x4

    new-array v0, v3, [D

    .line 704
    .local v0, "buff":[D
    invoke-virtual {p0, v5, v5, v0}, Lorg/opencv/core/Mat;->get(II[D)I

    .line 705
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 706
    new-instance v3, Lorg/opencv/core/DMatch;

    mul-int/lit8 v4, v2, 0x4

    aget-wide v4, v0, v4

    double-to-int v4, v4

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, v0, v5

    double-to-int v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, v0, v6

    double-to-int v6, v6

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x3

    aget-wide v8, v0, v7

    double-to-float v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/opencv/core/DMatch;-><init>(IIIF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_KeyPoint(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 14
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/KeyPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "kps":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/KeyPoint;>;"
    const/4 v2, 0x0

    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v9

    .line 502
    .local v9, "count":I
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/opencv/core/CvType;->CV_64FC(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 503
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CvType.CV_64FC(7) != m.type() ||  m.cols()!=1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 507
    mul-int/lit8 v0, v9, 0x7

    new-array v8, v0, [D

    .line 508
    .local v8, "buff":[D
    invoke-virtual {p0, v2, v2, v8}, Lorg/opencv/core/Mat;->get(II[D)I

    .line 509
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_3

    .line 510
    new-instance v0, Lorg/opencv/core/KeyPoint;

    mul-int/lit8 v1, v10, 0x7

    aget-wide v2, v8, v1

    double-to-float v1, v2

    mul-int/lit8 v2, v10, 0x7

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v8, v2

    double-to-float v2, v2

    mul-int/lit8 v3, v10, 0x7

    add-int/lit8 v3, v3, 0x2

    aget-wide v4, v8, v3

    double-to-float v3, v4

    mul-int/lit8 v4, v10, 0x7

    add-int/lit8 v4, v4, 0x3

    aget-wide v4, v8, v4

    double-to-float v4, v4

    mul-int/lit8 v5, v10, 0x7

    add-int/lit8 v5, v5, 0x4

    aget-wide v6, v8, v5

    double-to-float v5, v6

    mul-int/lit8 v6, v10, 0x7

    add-int/lit8 v6, v6, 0x5

    aget-wide v6, v8, v6

    double-to-int v6, v6

    mul-int/lit8 v7, v10, 0x7

    add-int/lit8 v7, v7, 0x6

    aget-wide v12, v8, v7

    double-to-int v7, v12

    invoke-direct/range {v0 .. v7}, Lorg/opencv/core/KeyPoint;-><init>(FFFFFII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 513
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 12
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    const/4 v7, 0x0

    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "mats == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 257
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    .line 258
    .local v3, "count":I
    sget v5, Lorg/opencv/core/CvType;->CV_32SC2:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 259
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CvType.CV_32SC2 != m.type() ||  m.cols()!=1\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 263
    mul-int/lit8 v5, v3, 0x2

    new-array v2, v5, [I

    .line 264
    .local v2, "buff":[I
    invoke-virtual {p0, v7, v7, v2}, Lorg/opencv/core/Mat;->get(II[I)I

    .line 265
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 266
    mul-int/lit8 v5, v4, 0x2

    aget v5, v2, v5

    int-to-long v6, v5

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long v0, v6, v8

    .line 267
    .local v0, "addr":J
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5, v0, v1}, Lorg/opencv/core/Mat;-><init>(J)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "addr":J
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 10
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point;>;"
    const/4 v6, 0x0

    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output List can\'t be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    .line 162
    .local v1, "count":I
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v3

    .line 163
    .local v3, "type":I
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 164
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input Mat should have one column\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 167
    sget v4, Lorg/opencv/core/CvType;->CV_32SC2:I

    if-ne v3, v4, :cond_2

    .line 168
    mul-int/lit8 v4, v1, 0x2

    new-array v0, v4, [I

    .line 169
    .local v0, "buff":[I
    invoke-virtual {p0, v6, v6, v0}, Lorg/opencv/core/Mat;->get(II[I)I

    .line 170
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 171
    new-instance v4, Lorg/opencv/core/Point;

    mul-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    int-to-double v6, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    int-to-double v8, v5

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "buff":[I
    .end local v2    # "i":I
    :cond_2
    sget v4, Lorg/opencv/core/CvType;->CV_32FC2:I

    if-ne v3, v4, :cond_3

    .line 174
    mul-int/lit8 v4, v1, 0x2

    new-array v0, v4, [F

    .line 175
    .local v0, "buff":[F
    invoke-virtual {p0, v6, v6, v0}, Lorg/opencv/core/Mat;->get(II[F)I

    .line 176
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 177
    new-instance v4, Lorg/opencv/core/Point;

    mul-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    float-to-double v6, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    float-to-double v8, v5

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v0    # "buff":[F
    .end local v2    # "i":I
    :cond_3
    sget v4, Lorg/opencv/core/CvType;->CV_64FC2:I

    if-ne v3, v4, :cond_4

    .line 180
    mul-int/lit8 v4, v1, 0x2

    new-array v0, v4, [D

    .line 181
    .local v0, "buff":[D
    invoke-virtual {p0, v6, v6, v0}, Lorg/opencv/core/Mat;->get(II[D)I

    .line 182
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 183
    new-instance v4, Lorg/opencv/core/Point;

    mul-int/lit8 v5, v2, 0x2

    aget-wide v6, v0, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v8, v0, v5

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 186
    .end local v0    # "buff":[D
    .end local v2    # "i":I
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input Mat should be of CV_32SC2, CV_32FC2 or CV_64FC2 type\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    .restart local v2    # "i":I
    :cond_5
    return-void
.end method

.method public static Mat_to_vector_Point2d(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point;>;"
    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 156
    return-void
.end method

.method public static Mat_to_vector_Point2f(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point;>;"
    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 152
    return-void
.end method

.method public static Mat_to_vector_Point3(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 11
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point3;>;"
    const/4 v3, 0x0

    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output List can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v8

    .line 207
    .local v8, "count":I
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v10

    .line 208
    .local v10, "type":I
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Mat should have one column\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 212
    sget v1, Lorg/opencv/core/CvType;->CV_32SC3:I

    if-ne v10, v1, :cond_2

    .line 213
    mul-int/lit8 v1, v8, 0x3

    new-array v0, v1, [I

    .line 214
    .local v0, "buff":[I
    invoke-virtual {p0, v3, v3, v0}, Lorg/opencv/core/Mat;->get(II[I)I

    .line 215
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 216
    new-instance v1, Lorg/opencv/core/Point3;

    mul-int/lit8 v2, v9, 0x3

    aget v2, v0, v2

    int-to-double v2, v2

    mul-int/lit8 v4, v9, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v0, v4

    int-to-double v4, v4

    mul-int/lit8 v6, v9, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v6, v0, v6

    int-to-double v6, v6

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "buff":[I
    .end local v9    # "i":I
    :cond_2
    sget v1, Lorg/opencv/core/CvType;->CV_32FC3:I

    if-ne v10, v1, :cond_3

    .line 219
    mul-int/lit8 v1, v8, 0x3

    new-array v0, v1, [F

    .line 220
    .local v0, "buff":[F
    invoke-virtual {p0, v3, v3, v0}, Lorg/opencv/core/Mat;->get(II[F)I

    .line 221
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    if-ge v9, v8, :cond_5

    .line 222
    new-instance v1, Lorg/opencv/core/Point3;

    mul-int/lit8 v2, v9, 0x3

    aget v2, v0, v2

    float-to-double v2, v2

    mul-int/lit8 v4, v9, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v0, v4

    float-to-double v4, v4

    mul-int/lit8 v6, v9, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v6, v0, v6

    float-to-double v6, v6

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "buff":[F
    .end local v9    # "i":I
    :cond_3
    sget v1, Lorg/opencv/core/CvType;->CV_64FC3:I

    if-ne v10, v1, :cond_4

    .line 225
    mul-int/lit8 v1, v8, 0x3

    new-array v0, v1, [D

    .line 226
    .local v0, "buff":[D
    invoke-virtual {p0, v3, v3, v0}, Lorg/opencv/core/Mat;->get(II[D)I

    .line 227
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v8, :cond_5

    .line 228
    new-instance v1, Lorg/opencv/core/Point3;

    mul-int/lit8 v2, v9, 0x3

    aget-wide v2, v0, v2

    mul-int/lit8 v4, v9, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v0, v4

    mul-int/lit8 v6, v9, 0x3

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, v0, v6

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 231
    .end local v0    # "buff":[D
    .end local v9    # "i":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Mat should be of CV_32SC3, CV_32FC3 or CV_64FC3 type\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    .restart local v9    # "i":I
    :cond_5
    return-void
.end method

.method public static Mat_to_vector_Point3d(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point3;>;"
    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point3(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 201
    return-void
.end method

.method public static Mat_to_vector_Point3f(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point3;>;"
    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point3(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 197
    return-void
.end method

.method public static Mat_to_vector_Point3i(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point3;>;"
    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point3(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 193
    return-void
.end method

.method public static Mat_to_vector_Rect(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 8
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Rect;>;"
    const/4 v5, 0x0

    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "rs == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 426
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    .line 427
    .local v1, "count":I
    sget v3, Lorg/opencv/core/CvType;->CV_32SC4:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 428
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CvType.CV_32SC4 != m.type() ||  m.rows()!=1\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 431
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 432
    mul-int/lit8 v3, v1, 0x4

    new-array v0, v3, [I

    .line 433
    .local v0, "buff":[I
    invoke-virtual {p0, v5, v5, v0}, Lorg/opencv/core/Mat;->get(II[I)I

    .line 434
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 435
    new-instance v3, Lorg/opencv/core/Rect;

    mul-int/lit8 v4, v2, 0x4

    aget v4, v0, v4

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    aget v6, v0, v6

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x3

    aget v7, v0, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/opencv/core/Rect;-><init>(IIII)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_Rect2d(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 12
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect2d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Rect2d;>;"
    const/4 v3, 0x0

    .line 460
    if-nez p1, :cond_0

    .line 461
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rs == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v10

    .line 463
    .local v10, "count":I
    sget v1, Lorg/opencv/core/CvType;->CV_64FC4:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 464
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CvType.CV_64FC4 != m.type() ||  m.rows()!=1\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 468
    mul-int/lit8 v1, v10, 0x4

    new-array v0, v1, [D

    .line 469
    .local v0, "buff":[D
    invoke-virtual {p0, v3, v3, v0}, Lorg/opencv/core/Mat;->get(II[D)I

    .line 470
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_3

    .line 471
    new-instance v1, Lorg/opencv/core/Rect2d;

    mul-int/lit8 v2, v11, 0x4

    aget-wide v2, v0, v2

    mul-int/lit8 v4, v11, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v0, v4

    mul-int/lit8 v6, v11, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, v0, v6

    mul-int/lit8 v8, v11, 0x4

    add-int/lit8 v8, v8, 0x3

    aget-wide v8, v0, v8

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 473
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_char(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 6
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "bs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x0

    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output List can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    .line 391
    .local v1, "count":I
    sget v3, Lorg/opencv/core/CvType;->CV_8SC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 392
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CvType.CV_8SC1 != m.type() ||  m.cols()!=1\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 395
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 396
    new-array v0, v1, [B

    .line 397
    .local v0, "buff":[B
    invoke-virtual {p0, v5, v5, v0}, Lorg/opencv/core/Mat;->get(II[B)I

    .line 398
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 399
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_double(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 6
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v5, 0x0

    .line 659
    if-nez p1, :cond_0

    .line 660
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ds == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 661
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    .line 662
    .local v1, "count":I
    sget v3, Lorg/opencv/core/CvType;->CV_64FC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 663
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CvType.CV_64FC1 != m.type() ||  m.cols()!=1\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 666
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 667
    new-array v0, v1, [D

    .line 668
    .local v0, "buff":[D
    invoke-virtual {p0, v5, v5, v0}, Lorg/opencv/core/Mat;->get(II[D)I

    .line 669
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 670
    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 672
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_float(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 6
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "fs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v5, 0x0

    .line 289
    if-nez p1, :cond_0

    .line 290
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "fs == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    .line 292
    .local v1, "count":I
    sget v3, Lorg/opencv/core/CvType;->CV_32FC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 293
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CvType.CV_32FC1 != m.type() ||  m.cols()!=1\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 296
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 297
    new-array v0, v1, [F

    .line 298
    .local v0, "buff":[F
    invoke-virtual {p0, v5, v5, v0}, Lorg/opencv/core/Mat;->get(II[F)I

    .line 299
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 300
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_int(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 6
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "is":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 372
    if-nez p1, :cond_0

    .line 373
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "is == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    .line 375
    .local v1, "count":I
    sget v3, Lorg/opencv/core/CvType;->CV_32SC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 376
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CvType.CV_32SC1 != m.type() ||  m.cols()!=1\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 380
    new-array v0, v1, [I

    .line 381
    .local v0, "buff":[I
    invoke-virtual {p0, v5, v5, v0}, Lorg/opencv/core/Mat;->get(II[I)I

    .line 382
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 383
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_uchar(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 6
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "us":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x0

    .line 322
    if-nez p1, :cond_0

    .line 323
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output List can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    .line 325
    .local v1, "count":I
    sget v3, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 326
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CvType.CV_8UC1 != m.type() ||  m.cols()!=1\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 330
    new-array v0, v1, [B

    .line 331
    .local v0, "buff":[B
    invoke-virtual {p0, v5, v5, v0}, Lorg/opencv/core/Mat;->get(II[B)I

    .line 332
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 333
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_3
    return-void
.end method

.method public static Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 5
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "lvdm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    if-nez p1, :cond_0

    .line 726
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output List can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 728
    :cond_0
    if-nez p0, :cond_1

    .line 729
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input Mat can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 731
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 732
    .local v0, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 733
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 734
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/opencv/core/Mat;

    .line 735
    .local v1, "mi":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/MatOfDMatch;

    invoke-direct {v2, v1}, Lorg/opencv/core/MatOfDMatch;-><init>(Lorg/opencv/core/Mat;)V

    .line 736
    .local v2, "vdm":Lorg/opencv/core/MatOfDMatch;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    .line 739
    .end local v1    # "mi":Lorg/opencv/core/Mat;
    .end local v2    # "vdm":Lorg/opencv/core/MatOfDMatch;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 740
    return-void
.end method

.method public static Mat_to_vector_vector_KeyPoint(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 5
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfKeyPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, "kps":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfKeyPoint;>;"
    if-nez p1, :cond_0

    .line 626
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output List can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 628
    :cond_0
    if-nez p0, :cond_1

    .line 629
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input Mat can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 631
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 632
    .local v0, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 633
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/opencv/core/Mat;

    .line 634
    .local v1, "mi":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/MatOfKeyPoint;

    invoke-direct {v2, v1}, Lorg/opencv/core/MatOfKeyPoint;-><init>(Lorg/opencv/core/Mat;)V

    .line 635
    .local v2, "vkp":Lorg/opencv/core/MatOfKeyPoint;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    .line 638
    .end local v1    # "mi":Lorg/opencv/core/Mat;
    .end local v2    # "vkp":Lorg/opencv/core/MatOfKeyPoint;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 639
    return-void
.end method

.method public static Mat_to_vector_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 5
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    if-nez p1, :cond_0

    .line 531
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output List can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 533
    :cond_0
    if-nez p0, :cond_1

    .line 534
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input Mat can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 536
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 537
    .local v0, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 538
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/opencv/core/Mat;

    .line 539
    .local v1, "mi":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/MatOfPoint;

    invoke-direct {v2, v1}, Lorg/opencv/core/MatOfPoint;-><init>(Lorg/opencv/core/Mat;)V

    .line 540
    .local v2, "pt":Lorg/opencv/core/MatOfPoint;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    .line 543
    .end local v1    # "mi":Lorg/opencv/core/Mat;
    .end local v2    # "pt":Lorg/opencv/core/MatOfPoint;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 544
    return-void
.end method

.method public static Mat_to_vector_vector_Point2f(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 5
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint2f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint2f;>;"
    if-nez p1, :cond_0

    .line 549
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output List can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 551
    :cond_0
    if-nez p0, :cond_1

    .line 552
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input Mat can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 554
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    .local v0, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 556
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/opencv/core/Mat;

    .line 557
    .local v1, "mi":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/MatOfPoint2f;

    invoke-direct {v2, v1}, Lorg/opencv/core/MatOfPoint2f;-><init>(Lorg/opencv/core/Mat;)V

    .line 558
    .local v2, "pt":Lorg/opencv/core/MatOfPoint2f;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    .line 561
    .end local v1    # "mi":Lorg/opencv/core/Mat;
    .end local v2    # "pt":Lorg/opencv/core/MatOfPoint2f;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 562
    return-void
.end method

.method public static Mat_to_vector_vector_Point3f(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 5
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint3f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint3f;>;"
    if-nez p1, :cond_0

    .line 581
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output List can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 583
    :cond_0
    if-nez p0, :cond_1

    .line 584
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input Mat can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 587
    .local v0, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 588
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/opencv/core/Mat;

    .line 589
    .local v1, "mi":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/MatOfPoint3f;

    invoke-direct {v2, v1}, Lorg/opencv/core/MatOfPoint3f;-><init>(Lorg/opencv/core/Mat;)V

    .line 590
    .local v2, "pt":Lorg/opencv/core/MatOfPoint3f;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    .line 593
    .end local v1    # "mi":Lorg/opencv/core/Mat;
    .end local v2    # "pt":Lorg/opencv/core/MatOfPoint3f;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 594
    return-void
.end method

.method public static Mat_to_vector_vector_char(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 5
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, "llb":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Byte;>;>;"
    if-nez p1, :cond_0

    .line 758
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output List can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 760
    :cond_0
    if-nez p0, :cond_1

    .line 761
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input Mat can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 763
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 764
    .local v1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 765
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/opencv/core/Mat;

    .line 766
    .local v2, "mi":Lorg/opencv/core/Mat;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v0, "lb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-static {v2, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_char(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 768
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {v2}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    .line 771
    .end local v0    # "lb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v2    # "mi":Lorg/opencv/core/Mat;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 772
    return-void
.end method

.method public static vector_DMatch_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/DMatch;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/DMatch;>;"
    const/4 v5, 0x0

    .line 676
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 677
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_2

    .line 678
    new-instance v4, Lorg/opencv/core/Mat;

    const/4 v6, 0x1

    sget v7, Lorg/opencv/core/CvType;->CV_64FC4:I

    invoke-direct {v4, v1, v6, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 679
    .local v4, "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x4

    new-array v0, v6, [D

    .line 680
    .local v0, "buff":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 681
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/DMatch;

    .line 682
    .local v3, "m":Lorg/opencv/core/DMatch;
    mul-int/lit8 v6, v2, 0x4

    iget v7, v3, Lorg/opencv/core/DMatch;->queryIdx:I

    int-to-double v8, v7

    aput-wide v8, v0, v6

    .line 683
    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    iget v7, v3, Lorg/opencv/core/DMatch;->trainIdx:I

    int-to-double v8, v7

    aput-wide v8, v0, v6

    .line 684
    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    iget v7, v3, Lorg/opencv/core/DMatch;->imgIdx:I

    int-to-double v8, v7

    aput-wide v8, v0, v6

    .line 685
    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    iget v7, v3, Lorg/opencv/core/DMatch;->distance:F

    float-to-double v8, v7

    aput-wide v8, v0, v6

    .line 680
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "buff":[D
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "m":Lorg/opencv/core/DMatch;
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_0
    move v1, v5

    .line 676
    goto :goto_0

    .line 687
    .restart local v0    # "buff":[D
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[D)I

    .line 691
    .end local v0    # "buff":[D
    .end local v2    # "i":I
    :goto_2
    return-object v4

    .line 689
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v4    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_KeyPoint_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/KeyPoint;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "kps":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/KeyPoint;>;"
    const/4 v5, 0x0

    .line 477
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 478
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_2

    .line 479
    new-instance v4, Lorg/opencv/core/Mat;

    const/4 v6, 0x1

    const/4 v7, 0x7

    invoke-static {v7}, Lorg/opencv/core/CvType;->CV_64FC(I)I

    move-result v7

    invoke-direct {v4, v1, v6, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 480
    .local v4, "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x7

    new-array v0, v6, [D

    .line 481
    .local v0, "buff":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 482
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/KeyPoint;

    .line 483
    .local v3, "kp":Lorg/opencv/core/KeyPoint;
    mul-int/lit8 v6, v2, 0x7

    iget-object v7, v3, Lorg/opencv/core/KeyPoint;->pt:Lorg/opencv/core/Point;

    iget-wide v8, v7, Lorg/opencv/core/Point;->x:D

    aput-wide v8, v0, v6

    .line 484
    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v3, Lorg/opencv/core/KeyPoint;->pt:Lorg/opencv/core/Point;

    iget-wide v8, v7, Lorg/opencv/core/Point;->y:D

    aput-wide v8, v0, v6

    .line 485
    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x2

    iget v7, v3, Lorg/opencv/core/KeyPoint;->size:F

    float-to-double v8, v7

    aput-wide v8, v0, v6

    .line 486
    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x3

    iget v7, v3, Lorg/opencv/core/KeyPoint;->angle:F

    float-to-double v8, v7

    aput-wide v8, v0, v6

    .line 487
    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x4

    iget v7, v3, Lorg/opencv/core/KeyPoint;->response:F

    float-to-double v8, v7

    aput-wide v8, v0, v6

    .line 488
    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x5

    iget v7, v3, Lorg/opencv/core/KeyPoint;->octave:I

    int-to-double v8, v7

    aput-wide v8, v0, v6

    .line 489
    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x6

    iget v7, v3, Lorg/opencv/core/KeyPoint;->class_id:I

    int-to-double v8, v7

    aput-wide v8, v0, v6

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "buff":[D
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "kp":Lorg/opencv/core/KeyPoint;
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_0
    move v1, v5

    .line 477
    goto :goto_0

    .line 491
    .restart local v0    # "buff":[D
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[D)I

    .line 495
    .end local v0    # "buff":[D
    .end local v2    # "i":I
    :goto_2
    return-object v4

    .line 493
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v4    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 10
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
    .local p0, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    const/4 v7, 0x0

    .line 238
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 239
    .local v3, "count":I
    :goto_0
    if-lez v3, :cond_2

    .line 240
    new-instance v5, Lorg/opencv/core/Mat;

    const/4 v6, 0x1

    sget v8, Lorg/opencv/core/CvType;->CV_32SC2:I

    invoke-direct {v5, v3, v6, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 241
    .local v5, "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v3, 0x2

    new-array v2, v6, [I

    .line 242
    .local v2, "buff":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 243
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/opencv/core/Mat;

    iget-wide v0, v6, Lorg/opencv/core/Mat;->nativeObj:J

    .line 244
    .local v0, "addr":J
    mul-int/lit8 v6, v4, 0x2

    const/16 v8, 0x20

    shr-long v8, v0, v8

    long-to-int v8, v8

    aput v8, v2, v6

    .line 245
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    long-to-int v8, v0

    aput v8, v2, v6

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "addr":J
    .end local v2    # "buff":[I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "res":Lorg/opencv/core/Mat;
    :cond_0
    move v3, v7

    .line 238
    goto :goto_0

    .line 247
    .restart local v2    # "buff":[I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v5, v7, v7, v2}, Lorg/opencv/core/Mat;->put(II[I)I

    .line 251
    .end local v2    # "buff":[I
    .end local v4    # "i":I
    :goto_2
    return-object v5

    .line 249
    .end local v5    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v5    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_Point2d_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point;>;"
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point2f_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point;>;"
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point3_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;
    .locals 10
    .param p1, "typeDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;I)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point3;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 99
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 100
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_4

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 142
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "\'typeDepth\' can be CV_32S, CV_32F or CV_64F"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1    # "count":I
    :cond_0
    move v1, v5

    .line 99
    goto :goto_0

    .line 103
    .restart local v1    # "count":I
    :pswitch_0
    new-instance v4, Lorg/opencv/core/Mat;

    sget v6, Lorg/opencv/core/CvType;->CV_32SC3:I

    invoke-direct {v4, v1, v7, v6}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 104
    .local v4, "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x3

    new-array v0, v6, [I

    .line 105
    .local v0, "buff":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 106
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/Point3;

    .line 107
    .local v3, "p":Lorg/opencv/core/Point3;
    mul-int/lit8 v6, v2, 0x3

    iget-wide v8, v3, Lorg/opencv/core/Point3;->x:D

    double-to-int v7, v8

    aput v7, v0, v6

    .line 108
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v3, Lorg/opencv/core/Point3;->y:D

    double-to-int v7, v8

    aput v7, v0, v6

    .line 109
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x2

    iget-wide v8, v3, Lorg/opencv/core/Point3;->z:D

    double-to-int v7, v8

    aput v7, v0, v6

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    .end local v3    # "p":Lorg/opencv/core/Point3;
    :cond_1
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[I)I

    .line 147
    .end local v0    # "buff":[I
    .end local v2    # "i":I
    :goto_2
    return-object v4

    .line 116
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :pswitch_1
    new-instance v4, Lorg/opencv/core/Mat;

    sget v6, Lorg/opencv/core/CvType;->CV_32FC3:I

    invoke-direct {v4, v1, v7, v6}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 117
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x3

    new-array v0, v6, [F

    .line 118
    .local v0, "buff":[F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_2

    .line 119
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/Point3;

    .line 120
    .restart local v3    # "p":Lorg/opencv/core/Point3;
    mul-int/lit8 v6, v2, 0x3

    iget-wide v8, v3, Lorg/opencv/core/Point3;->x:D

    double-to-float v7, v8

    aput v7, v0, v6

    .line 121
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v3, Lorg/opencv/core/Point3;->y:D

    double-to-float v7, v8

    aput v7, v0, v6

    .line 122
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x2

    iget-wide v8, v3, Lorg/opencv/core/Point3;->z:D

    double-to-float v7, v8

    aput v7, v0, v6

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 124
    .end local v3    # "p":Lorg/opencv/core/Point3;
    :cond_2
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[F)I

    goto :goto_2

    .line 129
    .end local v0    # "buff":[F
    .end local v2    # "i":I
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :pswitch_2
    new-instance v4, Lorg/opencv/core/Mat;

    sget v6, Lorg/opencv/core/CvType;->CV_64FC3:I

    invoke-direct {v4, v1, v7, v6}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 130
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x3

    new-array v0, v6, [D

    .line 131
    .local v0, "buff":[D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v1, :cond_3

    .line 132
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/Point3;

    .line 133
    .restart local v3    # "p":Lorg/opencv/core/Point3;
    mul-int/lit8 v6, v2, 0x3

    iget-wide v8, v3, Lorg/opencv/core/Point3;->x:D

    aput-wide v8, v0, v6

    .line 134
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v3, Lorg/opencv/core/Point3;->y:D

    aput-wide v8, v0, v6

    .line 135
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x2

    iget-wide v8, v3, Lorg/opencv/core/Point3;->z:D

    aput-wide v8, v0, v6

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 137
    .end local v3    # "p":Lorg/opencv/core/Point3;
    :cond_3
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[D)I

    goto :goto_2

    .line 145
    .end local v0    # "buff":[D
    .end local v2    # "i":I
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_4
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v4    # "res":Lorg/opencv/core/Mat;
    goto :goto_2

    .line 101
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static vector_Point3d_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point3;>;"
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point3_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point3f_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point3;>;"
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point3_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point3i_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point3;>;"
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point3_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point;>;"
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;
    .locals 10
    .param p1, "typeDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;I)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Point;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 37
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 38
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_4

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 77
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "\'typeDepth\' can be CV_32S, CV_32F or CV_64F"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1    # "count":I
    :cond_0
    move v1, v5

    .line 37
    goto :goto_0

    .line 41
    .restart local v1    # "count":I
    :pswitch_0
    new-instance v4, Lorg/opencv/core/Mat;

    sget v6, Lorg/opencv/core/CvType;->CV_32SC2:I

    invoke-direct {v4, v1, v7, v6}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 42
    .local v4, "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x2

    new-array v0, v6, [I

    .line 43
    .local v0, "buff":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 44
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/Point;

    .line 45
    .local v3, "p":Lorg/opencv/core/Point;
    mul-int/lit8 v6, v2, 0x2

    iget-wide v8, v3, Lorg/opencv/core/Point;->x:D

    double-to-int v7, v8

    aput v7, v0, v6

    .line 46
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    double-to-int v7, v8

    aput v7, v0, v6

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    .end local v3    # "p":Lorg/opencv/core/Point;
    :cond_1
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[I)I

    .line 82
    .end local v0    # "buff":[I
    .end local v2    # "i":I
    :goto_2
    return-object v4

    .line 53
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :pswitch_1
    new-instance v4, Lorg/opencv/core/Mat;

    sget v6, Lorg/opencv/core/CvType;->CV_32FC2:I

    invoke-direct {v4, v1, v7, v6}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 54
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x2

    new-array v0, v6, [F

    .line 55
    .local v0, "buff":[F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_2

    .line 56
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/Point;

    .line 57
    .restart local v3    # "p":Lorg/opencv/core/Point;
    mul-int/lit8 v6, v2, 0x2

    iget-wide v8, v3, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v8

    aput v7, v0, v6

    .line 58
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v8

    aput v7, v0, v6

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 60
    .end local v3    # "p":Lorg/opencv/core/Point;
    :cond_2
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[F)I

    goto :goto_2

    .line 65
    .end local v0    # "buff":[F
    .end local v2    # "i":I
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :pswitch_2
    new-instance v4, Lorg/opencv/core/Mat;

    sget v6, Lorg/opencv/core/CvType;->CV_64FC2:I

    invoke-direct {v4, v1, v7, v6}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 66
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x2

    new-array v0, v6, [D

    .line 67
    .local v0, "buff":[D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v1, :cond_3

    .line 68
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/Point;

    .line 69
    .restart local v3    # "p":Lorg/opencv/core/Point;
    mul-int/lit8 v6, v2, 0x2

    iget-wide v8, v3, Lorg/opencv/core/Point;->x:D

    aput-wide v8, v0, v6

    .line 70
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    aput-wide v8, v0, v6

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 72
    .end local v3    # "p":Lorg/opencv/core/Point;
    :cond_3
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[D)I

    goto :goto_2

    .line 80
    .end local v0    # "buff":[D
    .end local v2    # "i":I
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_4
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v4    # "res":Lorg/opencv/core/Mat;
    goto :goto_2

    .line 39
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static vector_Rect2d_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect2d;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "rs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Rect2d;>;"
    const/4 v5, 0x0

    .line 441
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 442
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_2

    .line 443
    new-instance v4, Lorg/opencv/core/Mat;

    const/4 v6, 0x1

    sget v7, Lorg/opencv/core/CvType;->CV_64FC4:I

    invoke-direct {v4, v1, v6, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 444
    .local v4, "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x4

    new-array v0, v6, [D

    .line 445
    .local v0, "buff":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 446
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/Rect2d;

    .line 447
    .local v3, "r":Lorg/opencv/core/Rect2d;
    mul-int/lit8 v6, v2, 0x4

    iget-wide v8, v3, Lorg/opencv/core/Rect2d;->x:D

    aput-wide v8, v0, v6

    .line 448
    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v3, Lorg/opencv/core/Rect2d;->y:D

    aput-wide v8, v0, v6

    .line 449
    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    iget-wide v8, v3, Lorg/opencv/core/Rect2d;->width:D

    aput-wide v8, v0, v6

    .line 450
    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    iget-wide v8, v3, Lorg/opencv/core/Rect2d;->height:D

    aput-wide v8, v0, v6

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "buff":[D
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "r":Lorg/opencv/core/Rect2d;
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_0
    move v1, v5

    .line 441
    goto :goto_0

    .line 452
    .restart local v0    # "buff":[D
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[D)I

    .line 456
    .end local v0    # "buff":[D
    .end local v2    # "i":I
    :goto_2
    return-object v4

    .line 454
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v4    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_Rect_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "rs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Rect;>;"
    const/4 v5, 0x0

    .line 405
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 406
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_2

    .line 407
    new-instance v4, Lorg/opencv/core/Mat;

    const/4 v6, 0x1

    sget v7, Lorg/opencv/core/CvType;->CV_32SC4:I

    invoke-direct {v4, v1, v6, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 408
    .local v4, "res":Lorg/opencv/core/Mat;
    mul-int/lit8 v6, v1, 0x4

    new-array v0, v6, [I

    .line 409
    .local v0, "buff":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 410
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/opencv/core/Rect;

    .line 411
    .local v3, "r":Lorg/opencv/core/Rect;
    mul-int/lit8 v6, v2, 0x4

    iget v7, v3, Lorg/opencv/core/Rect;->x:I

    aput v7, v0, v6

    .line 412
    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    iget v7, v3, Lorg/opencv/core/Rect;->y:I

    aput v7, v0, v6

    .line 413
    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    iget v7, v3, Lorg/opencv/core/Rect;->width:I

    aput v7, v0, v6

    .line 414
    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    iget v7, v3, Lorg/opencv/core/Rect;->height:I

    aput v7, v0, v6

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "buff":[I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "r":Lorg/opencv/core/Rect;
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_0
    move v1, v5

    .line 405
    goto :goto_0

    .line 416
    .restart local v0    # "buff":[I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v4, v5, v5, v0}, Lorg/opencv/core/Mat;->put(II[I)I

    .line 420
    .end local v0    # "buff":[I
    .end local v2    # "i":I
    :goto_2
    return-object v4

    .line 418
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v4    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_char_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "bs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .line 339
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 340
    .local v2, "count":I
    :goto_0
    if-lez v2, :cond_2

    .line 341
    new-instance v4, Lorg/opencv/core/Mat;

    const/4 v5, 0x1

    sget v7, Lorg/opencv/core/CvType;->CV_8SC1:I

    invoke-direct {v4, v2, v5, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 342
    .local v4, "res":Lorg/opencv/core/Mat;
    new-array v1, v2, [B

    .line 343
    .local v1, "buff":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 344
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 345
    .local v0, "b":B
    aput-byte v0, v1, v3

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "b":B
    .end local v1    # "buff":[B
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_0
    move v2, v6

    .line 339
    goto :goto_0

    .line 347
    .restart local v1    # "buff":[B
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v4, v6, v6, v1}, Lorg/opencv/core/Mat;->put(II[B)I

    .line 351
    .end local v1    # "buff":[B
    .end local v3    # "i":I
    :goto_2
    return-object v4

    .line 349
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v4    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_double_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "ds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v7, 0x0

    .line 643
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 644
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_2

    .line 645
    new-instance v3, Lorg/opencv/core/Mat;

    const/4 v6, 0x1

    sget v8, Lorg/opencv/core/CvType;->CV_64FC1:I

    invoke-direct {v3, v1, v6, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 646
    .local v3, "res":Lorg/opencv/core/Mat;
    new-array v0, v1, [D

    .line 647
    .local v0, "buff":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 648
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 649
    .local v4, "v":D
    aput-wide v4, v0, v2

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "buff":[D
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "res":Lorg/opencv/core/Mat;
    .end local v4    # "v":D
    :cond_0
    move v1, v7

    .line 643
    goto :goto_0

    .line 651
    .restart local v0    # "buff":[D
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v3, v7, v7, v0}, Lorg/opencv/core/Mat;->put(II[D)I

    .line 655
    .end local v0    # "buff":[D
    .end local v2    # "i":I
    :goto_2
    return-object v3

    .line 653
    .end local v3    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v3    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_float_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "fs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v6, 0x0

    .line 273
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 274
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_2

    .line 275
    new-instance v4, Lorg/opencv/core/Mat;

    const/4 v5, 0x1

    sget v7, Lorg/opencv/core/CvType;->CV_32FC1:I

    invoke-direct {v4, v1, v5, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 276
    .local v4, "res":Lorg/opencv/core/Mat;
    new-array v0, v1, [F

    .line 277
    .local v0, "buff":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 278
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 279
    .local v2, "f":F
    aput v2, v0, v3

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "buff":[F
    .end local v1    # "count":I
    .end local v2    # "f":F
    .end local v3    # "i":I
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_0
    move v1, v6

    .line 273
    goto :goto_0

    .line 281
    .restart local v0    # "buff":[F
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v4, v6, v6, v0}, Lorg/opencv/core/Mat;->put(II[F)I

    .line 285
    .end local v0    # "buff":[F
    .end local v3    # "i":I
    :goto_2
    return-object v4

    .line 283
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v4    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_int_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "is":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 356
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 357
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_2

    .line 358
    new-instance v3, Lorg/opencv/core/Mat;

    const/4 v5, 0x1

    sget v7, Lorg/opencv/core/CvType;->CV_32SC1:I

    invoke-direct {v3, v1, v5, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 359
    .local v3, "res":Lorg/opencv/core/Mat;
    new-array v0, v1, [I

    .line 360
    .local v0, "buff":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 361
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 362
    .local v4, "v":I
    aput v4, v0, v2

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "buff":[I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "res":Lorg/opencv/core/Mat;
    .end local v4    # "v":I
    :cond_0
    move v1, v6

    .line 356
    goto :goto_0

    .line 364
    .restart local v0    # "buff":[I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v3, v6, v6, v0}, Lorg/opencv/core/Mat;->put(II[I)I

    .line 368
    .end local v0    # "buff":[I
    .end local v2    # "i":I
    :goto_2
    return-object v3

    .line 366
    .end local v3    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v3    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_uchar_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .local p0, "bs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .line 306
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 307
    .local v2, "count":I
    :goto_0
    if-lez v2, :cond_2

    .line 308
    new-instance v4, Lorg/opencv/core/Mat;

    const/4 v5, 0x1

    sget v7, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v4, v2, v5, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 309
    .local v4, "res":Lorg/opencv/core/Mat;
    new-array v1, v2, [B

    .line 310
    .local v1, "buff":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 311
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 312
    .local v0, "b":B
    aput-byte v0, v1, v3

    .line 310
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "b":B
    .end local v1    # "buff":[B
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_0
    move v2, v6

    .line 306
    goto :goto_0

    .line 314
    .restart local v1    # "buff":[B
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "res":Lorg/opencv/core/Mat;
    :cond_1
    invoke-virtual {v4, v6, v6, v1}, Lorg/opencv/core/Mat;->put(II[B)I

    .line 318
    .end local v1    # "buff":[B
    .end local v3    # "i":I
    :goto_2
    return-object v4

    .line 316
    .end local v4    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v4    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "lvdm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 714
    .local v0, "lCount":I
    :goto_0
    if-lez v0, :cond_2

    .line 715
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/opencv/core/MatOfDMatch;

    .line 716
    .local v2, "vdm":Lorg/opencv/core/MatOfDMatch;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 713
    .end local v0    # "lCount":I
    .end local v2    # "vdm":Lorg/opencv/core/MatOfDMatch;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 717
    .restart local v0    # "lCount":I
    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 721
    .local v1, "res":Lorg/opencv/core/Mat;
    :goto_2
    return-object v1

    .line 719
    .end local v1    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v1    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_vector_KeyPoint_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfKeyPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "kps":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfKeyPoint;>;"
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 614
    .local v0, "lCount":I
    :goto_0
    if-lez v0, :cond_2

    .line 615
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/opencv/core/MatOfKeyPoint;

    .line 616
    .local v2, "vkp":Lorg/opencv/core/MatOfKeyPoint;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 613
    .end local v0    # "lCount":I
    .end local v2    # "vkp":Lorg/opencv/core/MatOfKeyPoint;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 617
    .restart local v0    # "lCount":I
    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 621
    .local v1, "res":Lorg/opencv/core/Mat;
    :goto_2
    return-object v1

    .line 619
    .end local v1    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v1    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_vector_Point2f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint2f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint2f;>;"
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 568
    .local v0, "lCount":I
    :goto_0
    if-lez v0, :cond_2

    .line 569
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/opencv/core/MatOfPoint2f;

    .line 570
    .local v2, "vpt":Lorg/opencv/core/MatOfPoint2f;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 567
    .end local v0    # "lCount":I
    .end local v2    # "vpt":Lorg/opencv/core/MatOfPoint2f;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 571
    .restart local v0    # "lCount":I
    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 575
    .local v1, "res":Lorg/opencv/core/Mat;
    :goto_2
    return-object v1

    .line 573
    .end local v1    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v1    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_vector_Point3f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint3f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint3f;>;"
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 600
    .local v0, "lCount":I
    :goto_0
    if-lez v0, :cond_2

    .line 601
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/opencv/core/MatOfPoint3f;

    .line 602
    .local v2, "vpt":Lorg/opencv/core/MatOfPoint3f;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 599
    .end local v0    # "lCount":I
    .end local v2    # "vpt":Lorg/opencv/core/MatOfPoint3f;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 603
    .restart local v0    # "lCount":I
    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 607
    .local v1, "res":Lorg/opencv/core/Mat;
    :goto_2
    return-object v1

    .line 605
    .end local v1    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v1    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_vector_Point_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 519
    .local v0, "lCount":I
    :goto_0
    if-lez v0, :cond_2

    .line 520
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/opencv/core/MatOfPoint;

    .line 521
    .local v2, "vpt":Lorg/opencv/core/MatOfPoint;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 518
    .end local v0    # "lCount":I
    .end local v2    # "vpt":Lorg/opencv/core/MatOfPoint;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    .restart local v0    # "lCount":I
    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 526
    .local v1, "res":Lorg/opencv/core/Mat;
    :goto_2
    return-object v1

    .line 524
    .end local v1    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v1    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method

.method public static vector_vector_char_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfByte;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, "lvb":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfByte;>;"
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 746
    .local v0, "lCount":I
    :goto_0
    if-lez v0, :cond_2

    .line 747
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/opencv/core/MatOfByte;

    .line 748
    .local v2, "vb":Lorg/opencv/core/MatOfByte;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 745
    .end local v0    # "lCount":I
    .end local v2    # "vb":Lorg/opencv/core/MatOfByte;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 749
    .restart local v0    # "lCount":I
    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 753
    .local v1, "res":Lorg/opencv/core/Mat;
    :goto_2
    return-object v1

    .line 751
    .end local v1    # "res":Lorg/opencv/core/Mat;
    :cond_2
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .restart local v1    # "res":Lorg/opencv/core/Mat;
    goto :goto_2
.end method
