.class public Lorg/opencv/features2d/DescriptorMatcher;
.super Lorg/opencv/core/Algorithm;
.source "DescriptorMatcher.java"


# static fields
.field public static final BRUTEFORCE:I = 0x2

.field public static final BRUTEFORCE_HAMMING:I = 0x4

.field public static final BRUTEFORCE_HAMMINGLUT:I = 0x5

.field public static final BRUTEFORCE_L1:I = 0x3

.field public static final BRUTEFORCE_SL2:I = 0x6

.field public static final FLANNBASED:I = 0x1


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "addr"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method private static native add_0(JJ)V
.end method

.method private static native clear_0(J)V
.end method

.method private static native clone_0(JZ)J
.end method

.method private static native clone_1(J)J
.end method

.method public static create(I)Lorg/opencv/features2d/DescriptorMatcher;
    .locals 4
    .param p0, "matcherType"    # I

    .prologue
    .line 76
    new-instance v0, Lorg/opencv/features2d/DescriptorMatcher;

    invoke-static {p0}, Lorg/opencv/features2d/DescriptorMatcher;->create_1(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/DescriptorMatcher;-><init>(J)V

    .line 78
    .local v0, "retVal":Lorg/opencv/features2d/DescriptorMatcher;
    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/opencv/features2d/DescriptorMatcher;
    .locals 4
    .param p0, "descriptorMatcherType"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lorg/opencv/features2d/DescriptorMatcher;

    invoke-static {p0}, Lorg/opencv/features2d/DescriptorMatcher;->create_0(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/DescriptorMatcher;-><init>(J)V

    .line 64
    .local v0, "retVal":Lorg/opencv/features2d/DescriptorMatcher;
    return-object v0
.end method

.method private static native create_0(Ljava/lang/String;)J
.end method

.method private static native create_1(I)J
.end method

.method private static native delete(J)V
.end method

.method private static native empty_0(J)Z
.end method

.method private static native getTrainDescriptors_0(J)J
.end method

.method private static native isMaskSupported_0(J)Z
.end method

.method private static native knnMatch_0(JJJJIJZ)V
.end method

.method private static native knnMatch_1(JJJJI)V
.end method

.method private static native knnMatch_2(JJJIJZ)V
.end method

.method private static native knnMatch_3(JJJI)V
.end method

.method private static native match_0(JJJJJ)V
.end method

.method private static native match_1(JJJJ)V
.end method

.method private static native match_2(JJJJ)V
.end method

.method private static native match_3(JJJ)V
.end method

.method private static native radiusMatch_0(JJJJFJZ)V
.end method

.method private static native radiusMatch_1(JJJJF)V
.end method

.method private static native radiusMatch_2(JJJFJZ)V
.end method

.method private static native radiusMatch_3(JJJF)V
.end method

.method private static native read_0(JLjava/lang/String;)V
.end method

.method private static native train_0(J)V
.end method

.method private static native write_0(JLjava/lang/String;)V
.end method


# virtual methods
.method public add(Ljava/util/List;)V
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
    .line 131
    .local p1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 132
    .local v0, "descriptors_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5}, Lorg/opencv/features2d/DescriptorMatcher;->add_0(JJ)V

    .line 134
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->clear_0(J)V

    .line 148
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/opencv/features2d/DescriptorMatcher;->clone()Lorg/opencv/features2d/DescriptorMatcher;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/features2d/DescriptorMatcher;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lorg/opencv/features2d/DescriptorMatcher;

    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/DescriptorMatcher;->clone_1(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/DescriptorMatcher;-><init>(J)V

    .line 50
    .local v0, "retVal":Lorg/opencv/features2d/DescriptorMatcher;
    return-object v0
.end method

.method public clone(Z)Lorg/opencv/features2d/DescriptorMatcher;
    .locals 4
    .param p1, "emptyTrainData"    # Z

    .prologue
    .line 39
    new-instance v0, Lorg/opencv/features2d/DescriptorMatcher;

    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v2, v3, p1}, Lorg/opencv/features2d/DescriptorMatcher;->clone_0(JZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/features2d/DescriptorMatcher;-><init>(J)V

    .line 41
    .local v0, "retVal":Lorg/opencv/features2d/DescriptorMatcher;
    return-object v0
.end method

.method public empty()Z
    .locals 4

    .prologue
    .line 90
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/DescriptorMatcher;->empty_0(J)Z

    move-result v0

    .line 92
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
    .line 345
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->delete(J)V

    .line 346
    return-void
.end method

.method public getTrainDescriptors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/DescriptorMatcher;->getTrainDescriptors_0(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 119
    .local v1, "retValMat":Lorg/opencv/core/Mat;
    invoke-static {v1, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 120
    return-object v0
.end method

.method public isMaskSupported()Z
    .locals 4

    .prologue
    .line 104
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/DescriptorMatcher;->isMaskSupported_0(J)Z

    move-result v0

    .line 106
    .local v0, "retVal":Z
    return v0
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Ljava/util/List;I)V
    .locals 8
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v7, Lorg/opencv/core/Mat;

    invoke-direct {v7}, Lorg/opencv/core/Mat;-><init>()V

    .line 196
    .local v7, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v7, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_3(JJJI)V

    .line 197
    invoke-static {v7, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 198
    invoke-virtual {v7}, Lorg/opencv/core/Mat;->release()V

    .line 199
    return-void
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Ljava/util/List;ILjava/util/List;Z)V
    .locals 12
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "k"    # I
    .param p5, "compactResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p4, "masks":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v11, Lorg/opencv/core/Mat;

    invoke-direct {v11}, Lorg/opencv/core/Mat;-><init>()V

    .line 185
    .local v11, "matches_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p4 .. p4}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 186
    .local v10, "masks_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v11, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v10, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move/from16 v9, p5

    invoke-static/range {v0 .. v9}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_2(JJJIJZ)V

    .line 187
    invoke-static {v11, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 188
    invoke-virtual {v11}, Lorg/opencv/core/Mat;->release()V

    .line 189
    return-void
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;I)V
    .locals 10
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v9, Lorg/opencv/core/Mat;

    invoke-direct {v9}, Lorg/opencv/core/Mat;-><init>()V

    .line 170
    .local v9, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v9, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_1(JJJJI)V

    .line 171
    invoke-static {v9, p3}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 172
    invoke-virtual {v9}, Lorg/opencv/core/Mat;->release()V

    .line 173
    return-void
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;ILorg/opencv/core/Mat;Z)V
    .locals 15
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "k"    # I
    .param p5, "mask"    # Lorg/opencv/core/Mat;
    .param p6, "compactResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I",
            "Lorg/opencv/core/Mat;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v14, Lorg/opencv/core/Mat;

    invoke-direct {v14}, Lorg/opencv/core/Mat;-><init>()V

    .line 160
    .local v14, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v10, p4

    move/from16 v13, p6

    invoke-static/range {v2 .. v13}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_0(JJJJIJZ)V

    .line 161
    move-object/from16 v0, p3

    invoke-static {v14, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 162
    invoke-virtual {v14}, Lorg/opencv/core/Mat;->release()V

    .line 163
    return-void
.end method

.method public match(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDMatch;)V
    .locals 9
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "matches"    # Lorg/opencv/core/MatOfDMatch;

    .prologue
    .line 219
    move-object v8, p3

    .line 220
    .local v8, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/DescriptorMatcher;->match_1(JJJJ)V

    .line 222
    return-void
.end method

.method public match(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDMatch;Lorg/opencv/core/Mat;)V
    .locals 11
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "matches"    # Lorg/opencv/core/MatOfDMatch;
    .param p4, "mask"    # Lorg/opencv/core/Mat;

    .prologue
    .line 210
    move-object v10, p3

    .line 211
    .local v10, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v10, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/features2d/DescriptorMatcher;->match_0(JJJJJ)V

    .line 213
    return-void
.end method

.method public match(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDMatch;)V
    .locals 7
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "matches"    # Lorg/opencv/core/MatOfDMatch;

    .prologue
    .line 243
    move-object v6, p2

    .line 244
    .local v6, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v6, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/features2d/DescriptorMatcher;->match_3(JJJ)V

    .line 246
    return-void
.end method

.method public match(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDMatch;Ljava/util/List;)V
    .locals 10
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "matches"    # Lorg/opencv/core/MatOfDMatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfDMatch;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p3, "masks":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object v9, p2

    .line 234
    .local v9, "matches_mat":Lorg/opencv/core/Mat;
    invoke-static {p3}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 235
    .local v8, "masks_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v8, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/features2d/DescriptorMatcher;->match_2(JJJJ)V

    .line 237
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Ljava/util/List;F)V
    .locals 8
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "maxDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v7, Lorg/opencv/core/Mat;

    invoke-direct {v7}, Lorg/opencv/core/Mat;-><init>()V

    .line 294
    .local v7, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v7, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_3(JJJF)V

    .line 295
    invoke-static {v7, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 296
    invoke-virtual {v7}, Lorg/opencv/core/Mat;->release()V

    .line 297
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Ljava/util/List;FLjava/util/List;Z)V
    .locals 12
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "maxDistance"    # F
    .param p5, "compactResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p4, "masks":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v11, Lorg/opencv/core/Mat;

    invoke-direct {v11}, Lorg/opencv/core/Mat;-><init>()V

    .line 283
    .local v11, "matches_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p4 .. p4}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 284
    .local v10, "masks_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v11, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v10, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move/from16 v9, p5

    invoke-static/range {v0 .. v9}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_2(JJJFJZ)V

    .line 285
    invoke-static {v11, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 286
    invoke-virtual {v11}, Lorg/opencv/core/Mat;->release()V

    .line 287
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;F)V
    .locals 10
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "maxDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v9, Lorg/opencv/core/Mat;

    invoke-direct {v9}, Lorg/opencv/core/Mat;-><init>()V

    .line 268
    .local v9, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v9, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_1(JJJJF)V

    .line 269
    invoke-static {v9, p3}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 270
    invoke-virtual {v9}, Lorg/opencv/core/Mat;->release()V

    .line 271
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;FLorg/opencv/core/Mat;Z)V
    .locals 15
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "maxDistance"    # F
    .param p5, "mask"    # Lorg/opencv/core/Mat;
    .param p6, "compactResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F",
            "Lorg/opencv/core/Mat;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v14, Lorg/opencv/core/Mat;

    invoke-direct {v14}, Lorg/opencv/core/Mat;-><init>()V

    .line 258
    .local v14, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v10, p4

    move/from16 v13, p6

    invoke-static/range {v2 .. v13}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_0(JJJJFJZ)V

    .line 259
    move-object/from16 v0, p3

    invoke-static {v14, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 260
    invoke-virtual {v14}, Lorg/opencv/core/Mat;->release()V

    .line 261
    return-void
.end method

.method public read(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/DescriptorMatcher;->read_0(JLjava/lang/String;)V

    .line 311
    return-void
.end method

.method public train()V
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->train_0(J)V

    .line 325
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/DescriptorMatcher;->write_0(JLjava/lang/String;)V

    .line 339
    return-void
.end method
