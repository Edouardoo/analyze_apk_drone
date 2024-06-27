.class public final Lorg/opencv/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/opencv/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraBridgeViewBase:[I

.field public static final CameraBridgeViewBase_camera_id:I = 0x1

.field public static final CameraBridgeViewBase_show_fps:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/opencv/R$styleable;->CameraBridgeViewBase:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100a6
        0x7f0100a7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
