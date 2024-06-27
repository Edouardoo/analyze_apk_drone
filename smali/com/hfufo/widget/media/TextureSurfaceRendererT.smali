.class public abstract Lcom/hfufo/widget/media/TextureSurfaceRendererT;
.super Ljava/lang/Object;
.source "TextureSurfaceRendererT.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceTest.GL"

.field private static isRunning:Z


# instance fields
.field private bbcc:Z

.field confAttr:[I

.field protected ctx:Landroid/content/Context;

.field ctxAttr:[I

.field protected curentNumber:I

.field private egl:Landroid/opengl/EGL14;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private filterNumber:I

.field private frames:I

.field protected height:I

.field protected imageHeight:I

.field imageRunnable:Ljava/lang/Runnable;

.field protected imageWidth:I

.field protected isFirst:Z

.field private lastFpsOutput:J

.field protected mRecording:Z

.field private running:Z

.field protected shouldRecord:Z

.field protected shouldTake:Z

.field surfaceAttr:[I

.field protected final texture:Landroid/graphics/SurfaceTexture;

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v2, 0x780

    iput v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->imageWidth:I

    .line 36
    const/16 v2, 0x438

    iput v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->imageHeight:I

    .line 42
    iput v4, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->filterNumber:I

    .line 44
    iput v4, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->curentNumber:I

    .line 45
    iput-boolean v4, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->mRecording:Z

    .line 46
    iput-boolean v5, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->isFirst:Z

    .line 47
    iput-boolean v4, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->shouldRecord:Z

    .line 48
    iput-boolean v4, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->shouldTake:Z

    .line 49
    iput-boolean v5, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->bbcc:Z

    .line 177
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->lastFpsOutput:J

    .line 318
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->ctxAttr:[I

    .line 322
    new-array v2, v5, [I

    const/16 v3, 0x3038

    aput v3, v2, v4

    iput-object v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->surfaceAttr:[I

    .line 340
    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->confAttr:[I

    .line 352
    new-instance v2, Lcom/hfufo/widget/media/TextureSurfaceRendererT$1;

    invoke-direct {v2, p0}, Lcom/hfufo/widget/media/TextureSurfaceRendererT$1;-><init>(Lcom/hfufo/widget/media/TextureSurfaceRendererT;)V

    iput-object v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->imageRunnable:Ljava/lang/Runnable;

    .line 59
    iput-object p1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->ctx:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->texture:Landroid/graphics/SurfaceTexture;

    .line 61
    iput p3, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->width:I

    .line 62
    iput p4, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->height:I

    .line 63
    iput-boolean v5, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->running:Z

    .line 72
    sget-boolean v2, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->isRunning:Z

    if-eqz v2, :cond_0

    .line 75
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    .local v1, "thrd":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 95
    :goto_1
    return-void

    .line 76
    .end local v1    # "thrd":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    .restart local v1    # "thrd":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 318
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    .line 340
    :array_1
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method private chooseEglConfig()Landroid/opengl/EGLConfig;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 286
    new-array v9, v5, [I

    .line 287
    .local v9, "configsCount":[I
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 288
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    invoke-direct {p0}, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->getConfig()[I

    move-result-object v8

    .line 289
    .local v8, "configSpec":[I
    new-array v6, v5, [I

    .line 291
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->confAttr:[I

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to choose config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    aget v0, v9, v2

    if-lez v0, :cond_1

    .line 297
    aget-object v0, v3, v2

    .line 300
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deinitGL()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 252
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 253
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 257
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglContext:Landroid/opengl/EGLContext;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_2

    .line 260
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 261
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 267
    :cond_2
    const-string v0, "SurfaceTest.GL"

    const-string v1, "OpenGL deinit OK."

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->isRunning:Z

    .line 270
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 305
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private initGL()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 210
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 211
    .local v10, "version":[I
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v10, v2, v10, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 212
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 213
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v5, [I

    .line 214
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->confAttr:[I

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 215
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v3, v2

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v5, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->ctxAttr:[I

    invoke-static {v0, v1, v4, v5, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglContext:Landroid/opengl/EGLContext;

    .line 216
    new-instance v9, Landroid/view/Surface;

    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->texture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v9, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 217
    .local v9, "surface":Landroid/view/Surface;
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v3, v2

    iget-object v4, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->surfaceAttr:[I

    invoke-static {v0, v1, v9, v4, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    .line 221
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 232
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_3

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GL error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :catch_0
    move-exception v8

    .line 239
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 235
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GL Make current Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private pingFps()V
    .locals 4

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->lastFpsOutput:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->lastFpsOutput:J

    .line 184
    :cond_0
    iget v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->frames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->frames:I

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->lastFpsOutput:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 188
    const-string v0, "SurfaceTest.GL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPS=: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->frames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->lastFpsOutput:J

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->frames:I

    .line 192
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract deinitGLComponents()V
.end method

.method protected abstract draw()Z
.end method

.method protected abstract endRecord()V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 329
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->running:Z

    .line 331
    return-void
.end method

.method protected abstract getBitmap()V
.end method

.method public getRunning()Z
    .locals 1

    .prologue
    .line 337
    sget-boolean v0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->isRunning:Z

    return v0
.end method

.method protected abstract initGLComponents()V
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    sput-boolean v0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->isRunning:Z

    .line 201
    iput-boolean v0, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->running:Z

    .line 202
    return-void
.end method

.method protected abstract readPixels()V
.end method

.method public run()V
    .locals 10

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->initGL()V

    .line 101
    invoke-virtual {p0}, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->initGLComponents()V

    .line 104
    const/4 v1, 0x1

    sput-boolean v1, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->isRunning:Z

    .line 105
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->running:Z

    if-eqz v1, :cond_3

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 111
    .local v2, "loopStart":J
    iget v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->filterNumber:I

    iget v8, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->curentNumber:I

    if-eq v1, v8, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->setFilter()V

    .line 113
    iget v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->curentNumber:I

    iput v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->filterNumber:I

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->draw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v8, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v8}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 138
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 140
    .local v4, "time":J
    const-wide/16 v8, 0x14

    sub-long v6, v8, v4

    .line 141
    .local v6, "waitDelta":J
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 145
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "loopStart":J
    .end local v4    # "time":J
    .end local v6    # "waitDelta":J
    :cond_3
    invoke-virtual {p0}, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->deinitGLComponents()V

    .line 155
    invoke-direct {p0}, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->deinitGL()V

    .line 157
    return-void
.end method

.method protected abstract setFilter()V
.end method

.method public setFilterNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 334
    iput p1, p0, Lcom/hfufo/widget/media/TextureSurfaceRendererT;->curentNumber:I

    .line 335
    return-void
.end method

.method protected abstract startRecord()V
.end method
