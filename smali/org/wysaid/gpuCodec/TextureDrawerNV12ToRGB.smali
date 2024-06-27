.class public Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;
.super Lorg/wysaid/gpuCodec/TextureDrawerNV21ToRGB;
.source "TextureDrawerNV12ToRGB.java"


# static fields
.field private static final fshNV12ToRGB:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D textureY;\nuniform sampler2D textureUV;\nuniform mat3 colorConversion;\nvoid main()\n{\n    vec3 yuv;\n    yuv.x = texture2D(textureY, texCoord).r;\n    yuv.yz = texture2D(textureUV, texCoord).ar - vec2(0.5, 0.5);\n    vec3 rgb = colorConversion * yuv;\n    gl_FragColor = vec4(rgb, 1.0);\n}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/wysaid/gpuCodec/TextureDrawerNV21ToRGB;-><init>()V

    return-void
.end method

.method public static create()Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;

    invoke-direct {v0}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;-><init>()V

    .line 33
    .local v0, "drawer":Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;
    const-string v1, "attribute vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n}"

    const-string v2, "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D textureY;\nuniform sampler2D textureUV;\nuniform mat3 colorConversion;\nvoid main()\n{\n    vec3 yuv;\n    yuv.x = texture2D(textureY, texCoord).r;\n    yuv.yz = texture2D(textureUV, texCoord).ar - vec2(0.5, 0.5);\n    vec3 rgb = colorConversion * yuv;\n    gl_FragColor = vec4(rgb, 1.0);\n}"

    invoke-virtual {v0, v1, v2}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string v1, "libCGE_java"

    const-string v2, "TextureDrawerNV12ToRGB create failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Lorg/wysaid/gpuCodec/TextureDrawerNV12ToRGB;->release()V

    .line 37
    const/4 v0, 0x0

    .line 39
    :cond_0
    return-object v0
.end method
