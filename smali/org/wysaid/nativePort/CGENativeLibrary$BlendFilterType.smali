.class public final enum Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;
.super Ljava/lang/Enum;
.source "CGENativeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wysaid/nativePort/CGENativeLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

.field public static final enum BLEND_KEEP_RATIO:Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

.field public static final enum BLEND_NORMAL:Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

.field public static final enum BLEND_TILE:Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    const-string v1, "BLEND_NORMAL"

    invoke-direct {v0, v1, v2}, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->BLEND_NORMAL:Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    .line 141
    new-instance v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    const-string v1, "BLEND_KEEP_RATIO"

    invoke-direct {v0, v1, v3}, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->BLEND_KEEP_RATIO:Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    .line 142
    new-instance v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    const-string v1, "BLEND_TILE"

    invoke-direct {v0, v1, v4}, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->BLEND_TILE:Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    sget-object v1, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->BLEND_NORMAL:Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->BLEND_KEEP_RATIO:Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->BLEND_TILE:Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->$VALUES:[Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    const-class v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    return-object v0
.end method

.method public static values()[Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->$VALUES:[Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    invoke-virtual {v0}, [Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wysaid/nativePort/CGENativeLibrary$BlendFilterType;

    return-object v0
.end method
