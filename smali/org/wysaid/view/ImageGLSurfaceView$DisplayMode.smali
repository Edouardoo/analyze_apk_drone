.class public final enum Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;
.super Ljava/lang/Enum;
.source "ImageGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wysaid/view/ImageGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

.field public static final enum DISPLAY_ASPECT_FILL:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

.field public static final enum DISPLAY_ASPECT_FIT:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

.field public static final enum DISPLAY_SCALE_TO_FILL:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    const-string v1, "DISPLAY_SCALE_TO_FILL"

    invoke-direct {v0, v1, v2}, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->DISPLAY_SCALE_TO_FILL:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    .line 30
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    const-string v1, "DISPLAY_ASPECT_FILL"

    invoke-direct {v0, v1, v3}, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->DISPLAY_ASPECT_FILL:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    .line 31
    new-instance v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    const-string v1, "DISPLAY_ASPECT_FIT"

    invoke-direct {v0, v1, v4}, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->DISPLAY_ASPECT_FIT:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    sget-object v1, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->DISPLAY_SCALE_TO_FILL:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->DISPLAY_ASPECT_FILL:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->DISPLAY_ASPECT_FIT:Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->$VALUES:[Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->$VALUES:[Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    invoke-virtual {v0}, [Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wysaid/view/ImageGLSurfaceView$DisplayMode;

    return-object v0
.end method
