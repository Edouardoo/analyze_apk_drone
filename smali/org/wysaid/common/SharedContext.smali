.class public Lorg/wysaid/common/SharedContext;
.super Ljava/lang/Object;
.source "SharedContext.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final LOG_TAG:Ljava/lang/String; = "libCGE_java"

.field private static mBitsA:I

.field private static mBitsB:I

.field private static mBitsG:I

.field private static mBitsR:I


# instance fields
.field private mConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private mSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 30
    sput v0, Lorg/wysaid/common/SharedContext;->mBitsR:I

    sput v0, Lorg/wysaid/common/SharedContext;->mBitsG:I

    sput v0, Lorg/wysaid/common/SharedContext;->mBitsB:I

    sput v0, Lorg/wysaid/common/SharedContext;->mBitsA:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/wysaid/common/SharedContext;
    .locals 4

    .prologue
    const/16 v3, 0x40

    .line 41
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lorg/wysaid/common/SharedContext;->create(Ljavax/microedition/khronos/egl/EGLContext;IIILjava/lang/Object;)Lorg/wysaid/common/SharedContext;

    move-result-object v0

    return-object v0
.end method

.method public static create(II)Lorg/wysaid/common/SharedContext;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 45
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lorg/wysaid/common/SharedContext;->create(Ljavax/microedition/khronos/egl/EGLContext;IIILjava/lang/Object;)Lorg/wysaid/common/SharedContext;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljavax/microedition/khronos/egl/EGLContext;II)Lorg/wysaid/common/SharedContext;
    .locals 2
    .param p0, "context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/wysaid/common/SharedContext;->create(Ljavax/microedition/khronos/egl/EGLContext;IIILjava/lang/Object;)Lorg/wysaid/common/SharedContext;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljavax/microedition/khronos/egl/EGLContext;IIILjava/lang/Object;)Lorg/wysaid/common/SharedContext;
    .locals 6
    .param p0, "context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "contextType"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 59
    new-instance v0, Lorg/wysaid/common/SharedContext;

    invoke-direct {v0}, Lorg/wysaid/common/SharedContext;-><init>()V

    .local v0, "sharedContext":Lorg/wysaid/common/SharedContext;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 60
    invoke-direct/range {v0 .. v5}, Lorg/wysaid/common/SharedContext;->initEGL(Ljavax/microedition/khronos/egl/EGLContext;IIILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {v0}, Lorg/wysaid/common/SharedContext;->release()V

    .line 62
    const/4 v0, 0x0

    .line 64
    :cond_0
    return-object v0
.end method

.method private initEGL(Ljavax/microedition/khronos/egl/EGLContext;IIILjava/lang/Object;)Z
    .locals 13
    .param p1, "context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "contextType"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    .line 115
    const/4 v1, 0x3

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    .line 120
    .local v8, "contextAttribList":[I
    const/16 v1, 0xd

    new-array v3, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x3033

    aput v2, v3, v1

    const/4 v1, 0x1

    aput p4, v3, v1

    const/4 v1, 0x2

    const/16 v2, 0x3040

    aput v2, v3, v1

    const/4 v1, 0x3

    const/4 v2, 0x4

    aput v2, v3, v1

    const/4 v1, 0x4

    const/16 v2, 0x3024

    aput v2, v3, v1

    const/4 v1, 0x5

    const/16 v2, 0x8

    aput v2, v3, v1

    const/4 v1, 0x6

    const/16 v2, 0x3023

    aput v2, v3, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    aput v2, v3, v1

    const/16 v1, 0x8

    const/16 v2, 0x3022

    aput v2, v3, v1

    const/16 v1, 0x9

    const/16 v2, 0x8

    aput v2, v3, v1

    const/16 v1, 0xa

    const/16 v2, 0x3021

    aput v2, v3, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v3, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v3, v1

    .line 128
    .local v3, "configSpec":[I
    const/4 v1, 0x1

    new-array v4, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 129
    .local v4, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 130
    .local v6, "numConfig":[I
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 132
    .local v10, "version":[I
    const/4 v1, 0x5

    new-array v9, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x3057

    aput v2, v9, v1

    const/4 v1, 0x1

    aput p2, v9, v1

    const/4 v1, 0x2

    const/16 v2, 0x3056

    aput v2, v9, v1

    const/4 v1, 0x3

    aput p3, v9, v1

    const/4 v1, 0x4

    const/16 v2, 0x3038

    aput v2, v9, v1

    .line 138
    .local v9, "surfaceAttribList":[I
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 140
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 141
    const-string v1, "libCGE_java"

    const-string v2, "eglGetDisplay() returned error 0x%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    .line 197
    :goto_0
    return v1

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    const-string v1, "libCGE_java"

    const-string v2, "eglInitialize() returned error 0x%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x0

    goto :goto_0

    .line 150
    :cond_1
    const-string v1, "libCGE_java"

    const-string v2, "eglInitialize - major: %d, minor: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    const-string v1, "libCGE_java"

    const-string v2, "eglChooseConfig() returned error 0x%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, 0x0

    goto :goto_0

    .line 157
    :cond_2
    const-string v2, "libCGE_java"

    const-string v5, "Config num: %d, has sharedContext: %s"

    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    const/4 v12, 0x1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p1, v1, :cond_3

    const-string v1, "NO"

    :goto_1
    aput-object v1, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    aget-object v1, v4, v1

    iput-object v1, p0, Lorg/wysaid/common/SharedContext;->mConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 161
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/wysaid/common/SharedContext;->mConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v5, p1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lorg/wysaid/common/SharedContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 163
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_4

    .line 164
    const-string v1, "libCGE_java"

    const-string v2, "eglCreateContext Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 157
    :cond_3
    const-string v1, "YES"

    goto :goto_1

    .line 168
    :cond_4
    sparse-switch p4, :sswitch_data_0

    .line 181
    :goto_2
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_5

    .line 182
    const-string v1, "libCGE_java"

    const-string v2, "eglCreatePbufferSurface Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 170
    :sswitch_0
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/wysaid/common/SharedContext;->mConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v0, p5

    invoke-interface {v1, v2, v5, v0, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_2

    .line 173
    :sswitch_1
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/wysaid/common/SharedContext;->mConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v0, p5

    invoke-interface {v1, v2, v5, v0, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_2

    .line 177
    :sswitch_2
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/wysaid/common/SharedContext;->mConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v5, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_2

    .line 186
    :cond_5
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v11, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v12, p0, Lorg/wysaid/common/SharedContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v5, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 187
    const-string v1, "libCGE_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglMakeCurrent failed:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 191
    :cond_6
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 192
    .local v7, "clientVersion":[I
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/wysaid/common/SharedContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/16 v11, 0x3098

    invoke-interface {v1, v2, v5, v11, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    .line 193
    const-string v1, "libCGE_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EGLContext created, client version "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v1, p0, Lorg/wysaid/common/SharedContext;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 197
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 115
    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x3142 -> :sswitch_2
    .end sparse-switch
.end method

.method public static setContextColorBits(IIII)V
    .locals 0
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .prologue
    .line 34
    sput p0, Lorg/wysaid/common/SharedContext;->mBitsR:I

    .line 35
    sput p1, Lorg/wysaid/common/SharedContext;->mBitsG:I

    .line 36
    sput p2, Lorg/wysaid/common/SharedContext;->mBitsB:I

    .line 37
    sput p3, Lorg/wysaid/common/SharedContext;->mBitsA:I

    .line 38
    return-void
.end method


# virtual methods
.method public getContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method public getEGL()Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public getSurface()Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 5

    .prologue
    .line 104
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lorg/wysaid/common/SharedContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "libCGE_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    .line 90
    const-string v0, "libCGE_java"

    const-string v1, "#### CGESharedGLContext Destroying context... ####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 93
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 94
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 95
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 98
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 99
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 100
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lorg/wysaid/common/SharedContext;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 101
    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lorg/wysaid/common/SharedContext;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/wysaid/common/SharedContext;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/wysaid/common/SharedContext;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    return v0
.end method
