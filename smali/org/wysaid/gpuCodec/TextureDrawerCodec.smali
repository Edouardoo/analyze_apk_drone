.class public Lorg/wysaid/gpuCodec/TextureDrawerCodec;
.super Lorg/wysaid/common/TextureDrawer;
.source "TextureDrawerCodec.java"


# static fields
.field public static final COLOR_CONVERSION_NAME:Ljava/lang/String; = "colorConversion"

.field static final MATRIX_RGB2YUV:[F

.field static final MATRIX_YUV2RGB:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 14
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/wysaid/gpuCodec/TextureDrawerCodec;->MATRIX_YUV2RGB:[F

    .line 21
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/wysaid/gpuCodec/TextureDrawerCodec;->MATRIX_RGB2YUV:[F

    return-void

    .line 14
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x41c02f30    # -0.18732f
        0x3fed844d    # 1.8556f
        0x3fc99360
        -0x41105144    # -0.46813f
        0x0
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x3e59b42a
        -0x42155ad7
        0x3effff79    # 0.49999598f
        0x3f37175e
        -0x413aa92d
        -0x411779a0
        0x3d93dcbf
        0x3f00000f    # 0.5000009f
        -0x42c4373a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/wysaid/common/TextureDrawer;-><init>()V

    return-void
.end method
