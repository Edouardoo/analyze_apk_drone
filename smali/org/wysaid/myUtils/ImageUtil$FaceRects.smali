.class public Lorg/wysaid/myUtils/ImageUtil$FaceRects;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wysaid/myUtils/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceRects"
.end annotation


# instance fields
.field public faces:[Landroid/media/FaceDetector$Face;

.field public numOfFaces:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
