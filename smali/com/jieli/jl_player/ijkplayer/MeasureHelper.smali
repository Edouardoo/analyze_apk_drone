.class public final Lcom/jieli/jl_player/ijkplayer/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field private mCurrentAspectRatio:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mCurrentAspectRatio:I

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method public static getAspectRatioText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aspectRatio"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_0

    .line 243
    sget v1, Lcom/jieli/jl_player/R$string;->N_A:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 225
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_ar_aspect_fit_parent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_ar_aspect_fill_parent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 231
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_ar_aspect_wrap_content:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_3
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_ar_match_parent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_4
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_ar_16_9_fit_parent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_5
    sget v1, Lcom/jieli/jl_player/R$string;->VideoView_ar_4_3_fit_parent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public doMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 76
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_1

    .line 77
    :cond_0
    move v6, p1

    .line 78
    .local v6, "tempSpec":I
    move p1, p2

    .line 79
    move p2, v6

    .line 82
    .end local v6    # "tempSpec":I
    :cond_1
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    invoke-static {v10, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v7

    .line 83
    .local v7, "width":I
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    invoke-static {v10, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    .line 84
    .local v1, "height":I
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mCurrentAspectRatio:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 85
    move v7, p1

    .line 86
    move v1, p2

    .line 204
    :cond_2
    :goto_0
    iput v7, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mMeasuredWidth:I

    .line 205
    iput v1, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mMeasuredHeight:I

    .line 206
    return-void

    .line 87
    :cond_3
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    if-lez v10, :cond_2

    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    if-lez v10, :cond_2

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 89
    .local v8, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 90
    .local v9, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 91
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 93
    .local v3, "heightSpecSize":I
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_b

    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_b

    .line 94
    int-to-float v10, v9

    int-to-float v11, v3

    div-float v5, v10, v11

    .line 96
    .local v5, "specAspectRatio":F
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v10, :pswitch_data_0

    .line 111
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 112
    .local v0, "displayAspectRatio":F
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoSarNum:I

    if-lez v10, :cond_4

    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoSarDen:I

    if-lez v10, :cond_4

    .line 113
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoSarNum:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoSarDen:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 116
    :cond_4
    :goto_1
    cmpl-float v10, v0, v5

    if-lez v10, :cond_7

    const/4 v4, 0x1

    .line 118
    .local v4, "shouldBeWider":Z
    :goto_2
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v10, :pswitch_data_1

    .line 145
    :pswitch_0
    if-eqz v4, :cond_a

    .line 147
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 148
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    goto :goto_0

    .line 98
    .end local v0    # "displayAspectRatio":F
    .end local v4    # "shouldBeWider":Z
    :pswitch_1
    const v0, 0x3fe38e39

    .line 99
    .restart local v0    # "displayAspectRatio":F
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_4

    .line 100
    :cond_5
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v0, v10, v0

    goto :goto_1

    .line 103
    .end local v0    # "displayAspectRatio":F
    :pswitch_2
    const v0, 0x3faaaaab

    .line 104
    .restart local v0    # "displayAspectRatio":F
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_6

    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_4

    .line 105
    :cond_6
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v0, v10, v0

    goto :goto_1

    .line 116
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 122
    .restart local v4    # "shouldBeWider":Z
    :pswitch_3
    if-eqz v4, :cond_8

    .line 124
    move v7, v9

    .line 125
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    goto/16 :goto_0

    .line 128
    :cond_8
    move v1, v3

    .line 129
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    .line 131
    goto/16 :goto_0

    .line 133
    :pswitch_4
    if-eqz v4, :cond_9

    .line 135
    move v1, v3

    .line 136
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    goto/16 :goto_0

    .line 139
    :cond_9
    move v7, v9

    .line 140
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    .line 142
    goto/16 :goto_0

    .line 151
    :cond_a
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 152
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    goto/16 :goto_0

    .line 156
    .end local v0    # "displayAspectRatio":F
    .end local v4    # "shouldBeWider":Z
    .end local v5    # "specAspectRatio":F
    :cond_b
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_d

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_d

    .line 158
    move v7, v9

    .line 159
    move v1, v3

    .line 162
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v11, v7

    if-ge v10, v11, :cond_c

    .line 164
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    div-int v7, v10, v11

    goto/16 :goto_0

    .line 165
    :cond_c
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v11, v7

    if-le v10, v11, :cond_2

    .line 167
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v10, v7

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    div-int v1, v10, v11

    goto/16 :goto_0

    .line 169
    :cond_d
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_e

    .line 171
    move v7, v9

    .line 172
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v10, v7

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    div-int v1, v10, v11

    .line 173
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_2

    if-le v1, v3, :cond_2

    .line 175
    move v1, v3

    goto/16 :goto_0

    .line 177
    :cond_e
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_f

    .line 179
    move v1, v3

    .line 180
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    div-int v7, v10, v11

    .line 181
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_2

    if-le v7, v9, :cond_2

    .line 183
    move v7, v9

    goto/16 :goto_0

    .line 187
    :cond_f
    iget v7, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    .line 188
    iget v1, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    .line 189
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_10

    if-le v1, v3, :cond_10

    .line 191
    move v1, v3

    .line 192
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    div-int v7, v10, v11

    .line 194
    :cond_10
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_2

    if-le v7, v9, :cond_2

    .line 196
    move v7, v9

    .line 197
    iget v10, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v10, v7

    iget v11, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    div-int v1, v10, v11

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 118
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mMeasuredWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public setAspectRatio(I)V
    .locals 0
    .param p1, "aspectRatio"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mCurrentAspectRatio:I

    .line 218
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0
    .param p1, "videoRotationDegree"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoRotationDegree:I

    .line 65
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 0
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoSarNum:I

    .line 60
    iput p2, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoSarDen:I

    .line 61
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoWidth:I

    .line 55
    iput p2, p0, Lcom/jieli/jl_player/ijkplayer/MeasureHelper;->mVideoHeight:I

    .line 56
    return-void
.end method
