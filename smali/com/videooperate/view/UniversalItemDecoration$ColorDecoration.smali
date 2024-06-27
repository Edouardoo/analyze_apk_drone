.class public Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;
.super Lcom/videooperate/view/UniversalItemDecoration$Decoration;
.source "UniversalItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/view/UniversalItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorDecoration"
.end annotation


# instance fields
.field public decorationColor:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/videooperate/view/UniversalItemDecoration$Decoration;-><init>()V

    .line 114
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->decorationColor:I

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->mPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    return-void
.end method


# virtual methods
.method public drawItemOffsets(Landroid/graphics/Canvas;IIII)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "leftZ"    # I
    .param p3, "topZ"    # I
    .param p4, "rightZ"    # I
    .param p5, "bottomZ"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->decorationColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    iget-object v5, p0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    return-void
.end method
