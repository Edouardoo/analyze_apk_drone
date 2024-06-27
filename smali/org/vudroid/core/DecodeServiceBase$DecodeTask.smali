.class Lorg/vudroid/core/DecodeServiceBase$DecodeTask;
.super Ljava/lang/Object;
.source "DecodeServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/vudroid/core/DecodeServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation


# instance fields
.field private final decodeCallback:Lorg/vudroid/core/DecodeService$DecodeCallback;

.field private final decodeKey:Ljava/lang/Object;

.field private final pageNumber:I

.field private final pageSliceBounds:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/vudroid/core/DecodeServiceBase;

.field private final zoom:F


# direct methods
.method private constructor <init>(Lorg/vudroid/core/DecodeServiceBase;ILorg/vudroid/core/DecodeService$DecodeCallback;FLjava/lang/Object;Landroid/graphics/RectF;)V
    .locals 0
    .param p2, "pageNumber"    # I
    .param p3, "decodeCallback"    # Lorg/vudroid/core/DecodeService$DecodeCallback;
    .param p4, "zoom"    # F
    .param p5, "decodeKey"    # Ljava/lang/Object;
    .param p6, "pageSliceBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 249
    iput-object p1, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->this$0:Lorg/vudroid/core/DecodeServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p2, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageNumber:I

    .line 251
    iput-object p3, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeCallback:Lorg/vudroid/core/DecodeService$DecodeCallback;

    .line 252
    iput p4, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->zoom:F

    .line 253
    iput-object p5, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeKey:Ljava/lang/Object;

    .line 254
    iput-object p6, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageSliceBounds:Landroid/graphics/RectF;

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lorg/vudroid/core/DecodeServiceBase;ILorg/vudroid/core/DecodeService$DecodeCallback;FLjava/lang/Object;Landroid/graphics/RectF;Lorg/vudroid/core/DecodeServiceBase$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/vudroid/core/DecodeServiceBase;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/vudroid/core/DecodeService$DecodeCallback;
    .param p4, "x3"    # F
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Landroid/graphics/RectF;
    .param p7, "x6"    # Lorg/vudroid/core/DecodeServiceBase$1;

    .prologue
    .line 240
    invoke-direct/range {p0 .. p6}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;-><init>(Lorg/vudroid/core/DecodeServiceBase;ILorg/vudroid/core/DecodeService$DecodeCallback;FLjava/lang/Object;Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$200(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)I
    .locals 1
    .param p0, "x0"    # Lorg/vudroid/core/DecodeServiceBase$DecodeTask;

    .prologue
    .line 240
    iget v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageNumber:I

    return v0
.end method

.method static synthetic access$300(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)F
    .locals 1
    .param p0, "x0"    # Lorg/vudroid/core/DecodeServiceBase$DecodeTask;

    .prologue
    .line 240
    iget v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->zoom:F

    return v0
.end method

.method static synthetic access$400(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lorg/vudroid/core/DecodeServiceBase$DecodeTask;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageSliceBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$500(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Lorg/vudroid/core/DecodeService$DecodeCallback;
    .locals 1
    .param p0, "x0"    # Lorg/vudroid/core/DecodeServiceBase$DecodeTask;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeCallback:Lorg/vudroid/core/DecodeService$DecodeCallback;

    return-object v0
.end method

.method static synthetic access$600(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/vudroid/core/DecodeServiceBase$DecodeTask;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeKey:Ljava/lang/Object;

    return-object v0
.end method
