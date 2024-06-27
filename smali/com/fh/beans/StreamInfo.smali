.class public Lcom/fh/beans/StreamInfo;
.super Ljava/lang/Object;
.source "StreamInfo.java"


# static fields
.field public static final BITMAPDATA:I = 0x9

.field public static final BUFFERDATA:I = 0x7

.field public static final BYTEDATA:I = 0x8


# instance fields
.field private angle:F

.field private bitmap:Landroid/graphics/Bitmap;

.field private buffer:Ljava/nio/IntBuffer;

.field private data:[B

.field private frameNumber:I

.field private height:I

.field private scale:F

.field private translateH:F

.field private translateW:F

.field private type:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    .line 27
    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "data"    # [B

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    .line 29
    iput p1, p0, Lcom/fh/beans/StreamInfo;->type:I

    .line 30
    iput p2, p0, Lcom/fh/beans/StreamInfo;->width:I

    .line 31
    iput p3, p0, Lcom/fh/beans/StreamInfo;->height:I

    .line 32
    iput-object p4, p0, Lcom/fh/beans/StreamInfo;->data:[B

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FFFF)V
    .locals 1
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "angle"    # F
    .param p3, "scale"    # F
    .param p4, "translW"    # F
    .param p5, "translH"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    .line 48
    iput-object p1, p0, Lcom/fh/beans/StreamInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 49
    iput p2, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 50
    iput p3, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 51
    iput p4, p0, Lcom/fh/beans/StreamInfo;->translateW:F

    .line 52
    iput p5, p0, Lcom/fh/beans/StreamInfo;->translateH:F

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "num"    # I
    .param p3, "type"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    .line 42
    iput p2, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    .line 43
    iput-object p1, p0, Lcom/fh/beans/StreamInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 44
    iput p3, p0, Lcom/fh/beans/StreamInfo;->type:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/nio/IntBuffer;IIFFFFI)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/IntBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "translW"    # F
    .param p5, "translH"    # F
    .param p6, "angle"    # F
    .param p7, "scale"    # F
    .param p8, "type"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    .line 57
    iput p2, p0, Lcom/fh/beans/StreamInfo;->width:I

    .line 58
    iput p3, p0, Lcom/fh/beans/StreamInfo;->height:I

    .line 59
    iput-object p1, p0, Lcom/fh/beans/StreamInfo;->buffer:Ljava/nio/IntBuffer;

    .line 60
    iput p6, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 61
    iput p7, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 62
    iput p4, p0, Lcom/fh/beans/StreamInfo;->translateW:F

    .line 63
    iput p5, p0, Lcom/fh/beans/StreamInfo;->translateH:F

    .line 65
    iput p8, p0, Lcom/fh/beans/StreamInfo;->type:I

    .line 66
    return-void
.end method

.method public constructor <init>([BFFII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "angle"    # F
    .param p3, "scale"    # F
    .param p4, "num"    # I
    .param p5, "type"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    .line 35
    iput p4, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    .line 36
    iput-object p1, p0, Lcom/fh/beans/StreamInfo;->data:[B

    .line 37
    iput p5, p0, Lcom/fh/beans/StreamInfo;->type:I

    .line 38
    iput p2, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 39
    iput p3, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 40
    return-void
.end method


# virtual methods
.method public clearBuffer()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fh/beans/StreamInfo;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fh/beans/StreamInfo;->buffer:Ljava/nio/IntBuffer;

    .line 153
    return-void
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/fh/beans/StreamInfo;->angle:F

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fh/beans/StreamInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fh/beans/StreamInfo;->buffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fh/beans/StreamInfo;->data:[B

    return-object v0
.end method

.method public getFrameNumber()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/fh/beans/StreamInfo;->height:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/fh/beans/StreamInfo;->scale:F

    return v0
.end method

.method public getTranslateH()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/fh/beans/StreamInfo;->translateH:F

    return v0
.end method

.method public getTranslateW()F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/fh/beans/StreamInfo;->translateW:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/fh/beans/StreamInfo;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/fh/beans/StreamInfo;->width:I

    return v0
.end method

.method public recycleBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/fh/beans/StreamInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/fh/beans/StreamInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    iput-object v1, p0, Lcom/fh/beans/StreamInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 122
    :cond_0
    iput-object v1, p0, Lcom/fh/beans/StreamInfo;->data:[B

    .line 123
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 124
    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 131
    iput p1, p0, Lcom/fh/beans/StreamInfo;->angle:F

    .line 132
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/fh/beans/StreamInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 114
    return-void
.end method

.method public setBuffer(Ljava/nio/IntBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/IntBuffer;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/fh/beans/StreamInfo;->buffer:Ljava/nio/IntBuffer;

    .line 148
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fh/beans/StreamInfo;->data:[B

    .line 98
    return-void
.end method

.method public setFrameNumber(I)V
    .locals 0
    .param p1, "frameNumber"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/fh/beans/StreamInfo;->frameNumber:I

    .line 106
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/fh/beans/StreamInfo;->height:I

    .line 90
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/fh/beans/StreamInfo;->scale:F

    .line 140
    return-void
.end method

.method public setTranslateH(F)V
    .locals 0
    .param p1, "translateH"    # F

    .prologue
    .line 168
    iput p1, p0, Lcom/fh/beans/StreamInfo;->translateH:F

    .line 169
    return-void
.end method

.method public setTranslateW(F)V
    .locals 0
    .param p1, "translateW"    # F

    .prologue
    .line 160
    iput p1, p0, Lcom/fh/beans/StreamInfo;->translateW:F

    .line 161
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/fh/beans/StreamInfo;->type:I

    .line 74
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/fh/beans/StreamInfo;->width:I

    .line 82
    return-void
.end method
