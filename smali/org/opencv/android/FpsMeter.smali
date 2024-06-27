.class public Lorg/opencv/android/FpsMeter;
.super Ljava/lang/Object;
.source "FpsMeter.java"


# static fields
.field private static final FPS_FORMAT:Ljava/text/DecimalFormat;

.field private static final STEP:I = 0x14

.field private static final TAG:Ljava/lang/String; = "FpsMeter"


# instance fields
.field private mFramesCouner:I

.field private mFrequency:D

.field mHeight:I

.field mIsInitialized:Z

.field mPaint:Landroid/graphics/Paint;

.field private mStrfps:Ljava/lang/String;

.field mWidth:I

.field private mprevFrameTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/opencv/android/FpsMeter;->FPS_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lorg/opencv/android/FpsMeter;->mIsInitialized:Z

    .line 23
    iput v0, p0, Lorg/opencv/android/FpsMeter;->mWidth:I

    .line 24
    iput v0, p0, Lorg/opencv/android/FpsMeter;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetx"    # F
    .param p3, "offsety"    # F

    .prologue
    .line 62
    const-string v0, "FpsMeter"

    iget-object v1, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    iget-object v1, p0, Lorg/opencv/android/FpsMeter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/opencv/android/FpsMeter;->mFramesCouner:I

    .line 28
    invoke-static {}, Lorg/opencv/core/Core;->getTickFrequency()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/android/FpsMeter;->mFrequency:D

    .line 29
    invoke-static {}, Lorg/opencv/core/Core;->getTickCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/android/FpsMeter;->mprevFrameTime:J

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/opencv/android/FpsMeter;->mPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lorg/opencv/android/FpsMeter;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lorg/opencv/android/FpsMeter;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    return-void
.end method

.method public measure()V
    .locals 8

    .prologue
    .line 38
    iget-boolean v4, p0, Lorg/opencv/android/FpsMeter;->mIsInitialized:Z

    if-nez v4, :cond_1

    .line 39
    invoke-virtual {p0}, Lorg/opencv/android/FpsMeter;->init()V

    .line 40
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/opencv/android/FpsMeter;->mIsInitialized:Z

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget v4, p0, Lorg/opencv/android/FpsMeter;->mFramesCouner:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/opencv/android/FpsMeter;->mFramesCouner:I

    .line 43
    iget v4, p0, Lorg/opencv/android/FpsMeter;->mFramesCouner:I

    rem-int/lit8 v4, v4, 0x14

    if-nez v4, :cond_0

    .line 44
    invoke-static {}, Lorg/opencv/core/Core;->getTickCount()J

    move-result-wide v2

    .line 45
    .local v2, "time":J
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    iget-wide v6, p0, Lorg/opencv/android/FpsMeter;->mFrequency:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/opencv/android/FpsMeter;->mprevFrameTime:J

    sub-long v6, v2, v6

    long-to-double v6, v6

    div-double v0, v4, v6

    .line 46
    .local v0, "fps":D
    iput-wide v2, p0, Lorg/opencv/android/FpsMeter;->mprevFrameTime:J

    .line 47
    iget v4, p0, Lorg/opencv/android/FpsMeter;->mWidth:I

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/opencv/android/FpsMeter;->mHeight:I

    if-eqz v4, :cond_2

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/opencv/android/FpsMeter;->FPS_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FPS@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/opencv/android/FpsMeter;->mWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/opencv/android/FpsMeter;->mHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    .line 51
    :goto_1
    const-string v4, "FpsMeter"

    iget-object v5, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/opencv/android/FpsMeter;->FPS_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FPS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    goto :goto_1
.end method

.method public setResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 57
    iput p1, p0, Lorg/opencv/android/FpsMeter;->mWidth:I

    .line 58
    iput p2, p0, Lorg/opencv/android/FpsMeter;->mHeight:I

    .line 59
    return-void
.end method
