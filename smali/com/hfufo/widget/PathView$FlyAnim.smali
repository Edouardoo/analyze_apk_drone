.class Lcom/hfufo/widget/PathView$FlyAnim;
.super Ljava/lang/Object;
.source "PathView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/widget/PathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlyAnim"
.end annotation


# instance fields
.field public curDistance:F

.field dowentime:J

.field durationTime:I

.field i:I

.field isdown:Z

.field pathMeasure:Landroid/graphics/PathMeasure;

.field pos:[F

.field final synthetic this$0:Lcom/hfufo/widget/PathView;

.field time:F


# direct methods
.method public constructor <init>(Lcom/hfufo/widget/PathView;)V
    .locals 1

    .prologue
    .line 457
    iput-object p1, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/16 v0, 0x10

    iput v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->durationTime:I

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->i:I

    .line 454
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 458
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 459
    return-void
.end method

.method private getDisForTime(F)F
    .locals 10
    .param p1, "time"    # F

    .prologue
    .line 534
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v7}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 535
    iget-object v7, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v7}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hfufo/widget/PointTimeBean;

    iget v7, v7, Lcom/hfufo/widget/PointTimeBean;->time:F

    iget-object v8, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v8}, Lcom/hfufo/widget/PathView;->access$600(Lcom/hfufo/widget/PathView;)F

    move-result v8

    mul-float/2addr v7, v8

    cmpl-float v7, p1, v7

    if-nez v7, :cond_0

    .line 536
    iget-object v7, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v7}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hfufo/widget/PointTimeBean;

    iget v7, v7, Lcom/hfufo/widget/PointTimeBean;->distance:F

    .line 552
    :goto_1
    return v7

    .line 537
    :cond_0
    iget-object v7, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v7}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hfufo/widget/PointTimeBean;

    iget v7, v7, Lcom/hfufo/widget/PointTimeBean;->time:F

    iget-object v8, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v8}, Lcom/hfufo/widget/PathView;->access$600(Lcom/hfufo/widget/PathView;)F

    move-result v8

    mul-float/2addr v7, v8

    cmpg-float v7, p1, v7

    if-gez v7, :cond_1

    .line 538
    const-string v8, "Tiem--"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "++"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "++"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v7}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hfufo/widget/PointTimeBean;

    iget v7, v7, Lcom/hfufo/widget/PointTimeBean;->time:F

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "++"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v9}, Lcom/hfufo/widget/PathView;->access$600(Lcom/hfufo/widget/PathView;)F

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v7, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v7}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hfufo/widget/PointTimeBean;

    iget v7, v7, Lcom/hfufo/widget/PointTimeBean;->time:F

    iget-object v8, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v8}, Lcom/hfufo/widget/PathView;->access$600(Lcom/hfufo/widget/PathView;)F

    move-result v8

    mul-float v1, v7, v8

    .line 540
    .local v1, "beforeTime":F
    iget-object v7, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v7}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hfufo/widget/PointTimeBean;

    iget v7, v7, Lcom/hfufo/widget/PointTimeBean;->time:F

    iget-object v8, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v8}, Lcom/hfufo/widget/PathView;->access$600(Lcom/hfufo/widget/PathView;)F

    move-result v8

    mul-float v5, v7, v8

    .line 544
    .local v5, "lastTime":F
    iget-object v7, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v7}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/PointTimeBean;

    .line 545
    .local v0, "beforeBean":Lcom/hfufo/widget/PointTimeBean;
    iget-object v7, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v7}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hfufo/widget/PointTimeBean;

    .line 546
    .local v4, "lastBean":Lcom/hfufo/widget/PointTimeBean;
    sub-float v7, p1, v1

    sub-float v8, v5, v1

    div-float v6, v7, v8

    .line 548
    .local v6, "percentTime":F
    iget v7, v4, Lcom/hfufo/widget/PointTimeBean;->distance:F

    iget v8, v0, Lcom/hfufo/widget/PointTimeBean;->distance:F

    sub-float/2addr v7, v8

    mul-float v2, v6, v7

    .line 549
    .local v2, "dx":F
    iget v7, v0, Lcom/hfufo/widget/PointTimeBean;->distance:F

    add-float/2addr v7, v2

    goto/16 :goto_1

    .line 534
    .end local v0    # "beforeBean":Lcom/hfufo/widget/PointTimeBean;
    .end local v1    # "beforeTime":F
    .end local v2    # "dx":F
    .end local v4    # "lastBean":Lcom/hfufo/widget/PointTimeBean;
    .end local v5    # "lastTime":F
    .end local v6    # "percentTime":F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 552
    :cond_2
    const/high16 v7, -0x40800000    # -1.0f

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 463
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$500(Lcom/hfufo/widget/PathView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    .line 464
    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v2}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/PointTimeBean;

    iget v0, v0, Lcom/hfufo/widget/PointTimeBean;->time:F

    iget-object v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v2}, Lcom/hfufo/widget/PathView;->access$600(Lcom/hfufo/widget/PathView;)F

    move-result v2

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_5

    .line 465
    iget v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    invoke-direct {p0, v0}, Lcom/hfufo/widget/PathView$FlyAnim;->getDisForTime(F)F

    move-result v8

    .line 466
    .local v8, "distance":F
    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-virtual {v0}, Lcom/hfufo/widget/PathView;->finishFlyAnim()V

    .line 525
    .end local v8    # "distance":F
    :goto_0
    return-void

    .line 471
    .restart local v8    # "distance":F
    :cond_0
    iput v8, p0, Lcom/hfufo/widget/PathView$FlyAnim;->curDistance:F

    .line 472
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v1}, Lcom/hfufo/widget/PathView;->access$700(Lcom/hfufo/widget/PathView;)Landroid/graphics/Path;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 473
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    .line 474
    const/4 v0, 0x2

    new-array v9, v0, [F

    .line 475
    .local v9, "tan":[F
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    invoke-virtual {v0, v8, v1, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 476
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$800(Lcom/hfufo/widget/PathView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 477
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$800(Lcom/hfufo/widget/PathView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v2}, Lcom/hfufo/widget/PathView;->access$900(Lcom/hfufo/widget/PathView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    .line 478
    invoke-static {v3}, Lcom/hfufo/widget/PathView;->access$900(Lcom/hfufo/widget/PathView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 477
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 480
    iget v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->i:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    iget v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$1000(Lcom/hfufo/widget/PathView;)Lcom/hfufo/widget/RockerBgView;

    move-result-object v10

    iget-wide v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/hfufo/widget/RockerBgView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    .line 491
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->isdown:Z

    .line 493
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$1000(Lcom/hfufo/widget/PathView;)Lcom/hfufo/widget/RockerBgView;

    move-result-object v10

    iget-wide v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    iget-wide v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/hfufo/widget/RockerBgView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 495
    :cond_1
    iget v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 496
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    .line 498
    iget v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->i:I

    .line 499
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$1000(Lcom/hfufo/widget/PathView;)Lcom/hfufo/widget/RockerBgView;

    move-result-object v10

    iget-wide v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    iget-wide v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v5}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hfufo/widget/PointTimeBean;

    iget-object v5, v5, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v6}, Lcom/hfufo/widget/PathView;->access$200(Lcom/hfufo/widget/PathView;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hfufo/widget/PointTimeBean;

    iget-object v6, v6, Lcom/hfufo/widget/PointTimeBean;->point:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/hfufo/widget/RockerBgView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 512
    :goto_1
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-virtual {v0}, Lcom/hfufo/widget/PathView;->postInvalidate()V

    .line 513
    iget v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    iget v1, p0, Lcom/hfufo/widget/PathView$FlyAnim;->durationTime:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    .line 514
    iget v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->i:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_4

    iget v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->time:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 515
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$400(Lcom/hfufo/widget/PathView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 501
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move is sign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    iget v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->i:I

    .line 503
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isdown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hfufo/widget/PathView$FlyAnim;->isdown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 504
    iget-boolean v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->isdown:Z

    if-nez v0, :cond_3

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->isdown:Z

    .line 506
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "path move"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$1000(Lcom/hfufo/widget/PathView;)Lcom/hfufo/widget/RockerBgView;

    move-result-object v10

    iget-wide v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    sub-long/2addr v2, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/hfufo/widget/RockerBgView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 509
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->isdown:Z

    goto/16 :goto_1

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$400(Lcom/hfufo/widget/PathView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 522
    .end local v8    # "distance":F
    .end local v9    # "tan":[F
    :cond_5
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-virtual {v0}, Lcom/hfufo/widget/PathView;->finishFlyAnim()V

    .line 523
    iget-object v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->this$0:Lcom/hfufo/widget/PathView;

    invoke-static {v0}, Lcom/hfufo/widget/PathView;->access$1000(Lcom/hfufo/widget/PathView;)Lcom/hfufo/widget/RockerBgView;

    move-result-object v10

    iget-wide v0, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hfufo/widget/PathView$FlyAnim;->dowentime:J

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/hfufo/widget/PathView$FlyAnim;->pos:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/hfufo/widget/RockerBgView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0
.end method
