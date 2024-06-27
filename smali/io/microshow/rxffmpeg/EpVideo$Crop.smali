.class public Lio/microshow/rxffmpeg/EpVideo$Crop;
.super Ljava/lang/Object;
.source "EpVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/microshow/rxffmpeg/EpVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Crop"
.end annotation


# instance fields
.field height:F

.field final synthetic this$0:Lio/microshow/rxffmpeg/EpVideo;

.field width:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lio/microshow/rxffmpeg/EpVideo;FFFF)V
    .locals 0
    .param p1, "this$0"    # Lio/microshow/rxffmpeg/EpVideo;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 273
    iput-object p1, p0, Lio/microshow/rxffmpeg/EpVideo$Crop;->this$0:Lio/microshow/rxffmpeg/EpVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput p2, p0, Lio/microshow/rxffmpeg/EpVideo$Crop;->width:F

    .line 275
    iput p3, p0, Lio/microshow/rxffmpeg/EpVideo$Crop;->height:F

    .line 276
    iput p4, p0, Lio/microshow/rxffmpeg/EpVideo$Crop;->x:F

    .line 277
    iput p5, p0, Lio/microshow/rxffmpeg/EpVideo$Crop;->y:F

    .line 278
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lio/microshow/rxffmpeg/EpVideo$Crop;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lio/microshow/rxffmpeg/EpVideo$Crop;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lio/microshow/rxffmpeg/EpVideo$Crop;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lio/microshow/rxffmpeg/EpVideo$Crop;->y:F

    return v0
.end method
