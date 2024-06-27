.class public Lorg/opencv/imgproc/Moments;
.super Ljava/lang/Object;
.source "Moments.java"


# instance fields
.field public m00:D

.field public m01:D

.field public m02:D

.field public m03:D

.field public m10:D

.field public m11:D

.field public m12:D

.field public m20:D

.field public m21:D

.field public m30:D

.field public mu02:D

.field public mu03:D

.field public mu11:D

.field public mu12:D

.field public mu20:D

.field public mu21:D

.field public mu30:D

.field public nu02:D

.field public nu03:D

.field public nu11:D

.field public nu12:D

.field public nu20:D

.field public nu21:D

.field public nu30:D


# direct methods
.method public constructor <init>()V
    .locals 22

    .prologue
    .line 61
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v21}, Lorg/opencv/imgproc/Moments;-><init>(DDDDDDDDDD)V

    .line 62
    return-void
.end method

.method public constructor <init>(DDDDDDDDDD)V
    .locals 3
    .param p1, "m00"    # D
    .param p3, "m10"    # D
    .param p5, "m01"    # D
    .param p7, "m20"    # D
    .param p9, "m11"    # D
    .param p11, "m02"    # D
    .param p13, "m30"    # D
    .param p15, "m21"    # D
    .param p17, "m12"    # D
    .param p19, "m03"    # D

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m00:D

    .line 48
    iput-wide p3, p0, Lorg/opencv/imgproc/Moments;->m10:D

    .line 49
    iput-wide p5, p0, Lorg/opencv/imgproc/Moments;->m01:D

    .line 50
    iput-wide p7, p0, Lorg/opencv/imgproc/Moments;->m20:D

    .line 51
    iput-wide p9, p0, Lorg/opencv/imgproc/Moments;->m11:D

    .line 52
    iput-wide p11, p0, Lorg/opencv/imgproc/Moments;->m02:D

    .line 53
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m30:D

    .line 54
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m21:D

    .line 55
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m12:D

    .line 56
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m03:D

    .line 57
    invoke-virtual {p0}, Lorg/opencv/imgproc/Moments;->completeState()V

    .line 58
    return-void
.end method

.method public constructor <init>([D)V
    .locals 0
    .param p1, "vals"    # [D

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lorg/opencv/imgproc/Moments;->set([D)V

    .line 66
    return-void
.end method


# virtual methods
.method protected completeState()V
    .locals 28

    .prologue
    .line 149
    const-wide/16 v4, 0x0

    .local v4, "cx":D
    const-wide/16 v6, 0x0

    .line 151
    .local v6, "cy":D
    const-wide/16 v8, 0x0

    .line 153
    .local v8, "inv_m00":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m00:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    const-wide v24, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v22, v22, v24

    if-lez v22, :cond_0

    .line 155
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m00:D

    move-wide/from16 v24, v0

    div-double v8, v22, v24

    .line 156
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m10:D

    move-wide/from16 v22, v0

    mul-double v4, v22, v8

    .line 157
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m01:D

    move-wide/from16 v22, v0

    mul-double v6, v22, v8

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m20:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m10:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v4

    sub-double v16, v22, v24

    .line 163
    .local v16, "mu20":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m11:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m10:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v6

    sub-double v14, v22, v24

    .line 165
    .local v14, "mu11":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m02:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m01:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v6

    sub-double v12, v22, v24

    .line 167
    .local v12, "mu02":D
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->mu20:D

    .line 168
    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/opencv/imgproc/Moments;->mu11:D

    .line 169
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/opencv/imgproc/Moments;->mu02:D

    .line 172
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m30:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    mul-double v24, v24, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m10:D

    move-wide/from16 v26, v0

    mul-double v26, v26, v4

    add-double v24, v24, v26

    mul-double v24, v24, v4

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->mu30:D

    .line 173
    add-double/2addr v14, v14

    .line 175
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m21:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m01:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v4

    add-double v24, v24, v14

    mul-double v24, v24, v4

    sub-double v22, v22, v24

    mul-double v24, v6, v16

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->mu21:D

    .line 177
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m12:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m10:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v6

    add-double v24, v24, v14

    mul-double v24, v24, v6

    sub-double v22, v22, v24

    mul-double v24, v4, v12

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->mu12:D

    .line 179
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m03:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    mul-double v24, v24, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m01:D

    move-wide/from16 v26, v0

    mul-double v26, v26, v6

    add-double v24, v24, v26

    mul-double v24, v24, v6

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->mu03:D

    .line 182
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 183
    .local v10, "inv_sqrt_m00":D
    mul-double v18, v8, v8

    .local v18, "s2":D
    mul-double v20, v18, v10

    .line 185
    .local v20, "s3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->mu20:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v18

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->nu20:D

    .line 186
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->mu11:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v18

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->nu11:D

    .line 187
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->mu02:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v18

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->nu02:D

    .line 188
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->mu30:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->nu30:D

    .line 189
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->mu21:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->nu21:D

    .line 190
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->mu12:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->nu12:D

    .line 191
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->mu03:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/imgproc/Moments;->nu03:D

    .line 193
    return-void
.end method

.method public get_m00()D
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m00:D

    return-wide v0
.end method

.method public get_m01()D
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m01:D

    return-wide v0
.end method

.method public get_m02()D
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m02:D

    return-wide v0
.end method

.method public get_m03()D
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m03:D

    return-wide v0
.end method

.method public get_m10()D
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m10:D

    return-wide v0
.end method

.method public get_m11()D
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m11:D

    return-wide v0
.end method

.method public get_m12()D
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m12:D

    return-wide v0
.end method

.method public get_m20()D
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m20:D

    return-wide v0
.end method

.method public get_m21()D
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m21:D

    return-wide v0
.end method

.method public get_m30()D
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m30:D

    return-wide v0
.end method

.method public get_mu02()D
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu02:D

    return-wide v0
.end method

.method public get_mu03()D
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu03:D

    return-wide v0
.end method

.method public get_mu11()D
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu11:D

    return-wide v0
.end method

.method public get_mu12()D
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu12:D

    return-wide v0
.end method

.method public get_mu20()D
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu20:D

    return-wide v0
.end method

.method public get_mu21()D
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu21:D

    return-wide v0
.end method

.method public get_mu30()D
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu30:D

    return-wide v0
.end method

.method public get_nu02()D
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu02:D

    return-wide v0
.end method

.method public get_nu03()D
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu03:D

    return-wide v0
.end method

.method public get_nu11()D
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu11:D

    return-wide v0
.end method

.method public get_nu12()D
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu12:D

    return-wide v0
.end method

.method public get_nu20()D
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu20:D

    return-wide v0
.end method

.method public get_nu21()D
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu21:D

    return-wide v0
.end method

.method public get_nu30()D
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu30:D

    return-wide v0
.end method

.method public set([D)V
    .locals 8
    .param p1, "vals"    # [D

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 69
    if-eqz p1, :cond_a

    .line 70
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m00:D

    .line 71
    array-length v0, p1

    if-le v0, v4, :cond_2

    aget-wide v0, p1, v4

    :goto_1
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m10:D

    .line 72
    array-length v0, p1

    if-le v0, v5, :cond_3

    aget-wide v0, p1, v5

    :goto_2
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m01:D

    .line 73
    array-length v0, p1

    if-le v0, v6, :cond_4

    aget-wide v0, p1, v6

    :goto_3
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m20:D

    .line 74
    array-length v0, p1

    if-le v0, v7, :cond_5

    aget-wide v0, p1, v7

    :goto_4
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m11:D

    .line 75
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    const/4 v0, 0x5

    aget-wide v0, p1, v0

    :goto_5
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m02:D

    .line 76
    array-length v0, p1

    const/4 v1, 0x6

    if-le v0, v1, :cond_7

    const/4 v0, 0x6

    aget-wide v0, p1, v0

    :goto_6
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m30:D

    .line 77
    array-length v0, p1

    const/4 v1, 0x7

    if-le v0, v1, :cond_8

    const/4 v0, 0x7

    aget-wide v0, p1, v0

    :goto_7
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m21:D

    .line 78
    array-length v0, p1

    const/16 v1, 0x8

    if-le v0, v1, :cond_9

    const/16 v0, 0x8

    aget-wide v0, p1, v0

    :goto_8
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m12:D

    .line 79
    array-length v0, p1

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/16 v0, 0x9

    aget-wide v2, p1, v0

    :cond_0
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m03:D

    .line 80
    invoke-virtual {p0}, Lorg/opencv/imgproc/Moments;->completeState()V

    .line 107
    :goto_9
    return-void

    :cond_1
    move-wide v0, v2

    .line 70
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 71
    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 72
    goto :goto_2

    :cond_4
    move-wide v0, v2

    .line 73
    goto :goto_3

    :cond_5
    move-wide v0, v2

    .line 74
    goto :goto_4

    :cond_6
    move-wide v0, v2

    .line 75
    goto :goto_5

    :cond_7
    move-wide v0, v2

    .line 76
    goto :goto_6

    :cond_8
    move-wide v0, v2

    .line 77
    goto :goto_7

    :cond_9
    move-wide v0, v2

    .line 78
    goto :goto_8

    .line 82
    :cond_a
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m00:D

    .line 83
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m10:D

    .line 84
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m01:D

    .line 85
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m20:D

    .line 86
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m11:D

    .line 87
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m02:D

    .line 88
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m30:D

    .line 89
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m21:D

    .line 90
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m12:D

    .line 91
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m03:D

    .line 92
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu20:D

    .line 93
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu11:D

    .line 94
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu02:D

    .line 95
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu30:D

    .line 96
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu21:D

    .line 97
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu12:D

    .line 98
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu03:D

    .line 99
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu20:D

    .line 100
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu11:D

    .line 101
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu02:D

    .line 102
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu30:D

    .line 103
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu21:D

    .line 104
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu12:D

    .line 105
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu03:D

    goto :goto_9
.end method

.method public set_m00(D)V
    .locals 1
    .param p1, "m00"    # D

    .prologue
    .line 220
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m00:D

    return-void
.end method

.method public set_m01(D)V
    .locals 1
    .param p1, "m01"    # D

    .prologue
    .line 222
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m01:D

    return-void
.end method

.method public set_m02(D)V
    .locals 1
    .param p1, "m02"    # D

    .prologue
    .line 225
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m02:D

    return-void
.end method

.method public set_m03(D)V
    .locals 1
    .param p1, "m03"    # D

    .prologue
    .line 229
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m03:D

    return-void
.end method

.method public set_m10(D)V
    .locals 1
    .param p1, "m10"    # D

    .prologue
    .line 221
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m10:D

    return-void
.end method

.method public set_m11(D)V
    .locals 1
    .param p1, "m11"    # D

    .prologue
    .line 224
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m11:D

    return-void
.end method

.method public set_m12(D)V
    .locals 1
    .param p1, "m12"    # D

    .prologue
    .line 228
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m12:D

    return-void
.end method

.method public set_m20(D)V
    .locals 1
    .param p1, "m20"    # D

    .prologue
    .line 223
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m20:D

    return-void
.end method

.method public set_m21(D)V
    .locals 1
    .param p1, "m21"    # D

    .prologue
    .line 227
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m21:D

    return-void
.end method

.method public set_m30(D)V
    .locals 1
    .param p1, "m30"    # D

    .prologue
    .line 226
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m30:D

    return-void
.end method

.method public set_mu02(D)V
    .locals 1
    .param p1, "mu02"    # D

    .prologue
    .line 232
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu02:D

    return-void
.end method

.method public set_mu03(D)V
    .locals 1
    .param p1, "mu03"    # D

    .prologue
    .line 236
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu03:D

    return-void
.end method

.method public set_mu11(D)V
    .locals 1
    .param p1, "mu11"    # D

    .prologue
    .line 231
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu11:D

    return-void
.end method

.method public set_mu12(D)V
    .locals 1
    .param p1, "mu12"    # D

    .prologue
    .line 235
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu12:D

    return-void
.end method

.method public set_mu20(D)V
    .locals 1
    .param p1, "mu20"    # D

    .prologue
    .line 230
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu20:D

    return-void
.end method

.method public set_mu21(D)V
    .locals 1
    .param p1, "mu21"    # D

    .prologue
    .line 234
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu21:D

    return-void
.end method

.method public set_mu30(D)V
    .locals 1
    .param p1, "mu30"    # D

    .prologue
    .line 233
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu30:D

    return-void
.end method

.method public set_nu02(D)V
    .locals 1
    .param p1, "nu02"    # D

    .prologue
    .line 239
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu02:D

    return-void
.end method

.method public set_nu03(D)V
    .locals 1
    .param p1, "nu03"    # D

    .prologue
    .line 243
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu03:D

    return-void
.end method

.method public set_nu11(D)V
    .locals 1
    .param p1, "nu11"    # D

    .prologue
    .line 238
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu11:D

    return-void
.end method

.method public set_nu12(D)V
    .locals 1
    .param p1, "nu12"    # D

    .prologue
    .line 242
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu12:D

    return-void
.end method

.method public set_nu20(D)V
    .locals 1
    .param p1, "nu20"    # D

    .prologue
    .line 237
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu20:D

    return-void
.end method

.method public set_nu21(D)V
    .locals 1
    .param p1, "nu21"    # D

    .prologue
    .line 241
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu21:D

    return-void
.end method

.method public set_nu30(D)V
    .locals 1
    .param p1, "nu30"    # D

    .prologue
    .line 240
    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu30:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moments [ \nm00="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m00:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nm10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m10:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m01="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m01:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nm20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m20:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m11:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m02="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nm30="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m30:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m21="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m21:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m12:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m03="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m03:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nmu20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu20:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu11:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu02="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nmu30="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu30:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu21="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu21:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu12:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu03="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu03:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nnu20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu20:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu11:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu02="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nnu30="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu30:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu21="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu21:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu12:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu03="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu03:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
