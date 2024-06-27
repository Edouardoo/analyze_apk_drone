.class public Lcom/videooperate/view/MusicButton$MusicAnim;
.super Landroid/view/animation/RotateAnimation;
.source "MusicButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/view/MusicButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/view/MusicButton;


# direct methods
.method public constructor <init>(Lcom/videooperate/view/MusicButton;FFFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/view/MusicButton;
    .param p2, "fromDegrees"    # F
    .param p3, "toDegrees"    # F
    .param p4, "pivotX"    # F
    .param p5, "pivotY"    # F

    .prologue
    .line 68
    iput-object p1, p0, Lcom/videooperate/view/MusicButton$MusicAnim;->this$0:Lcom/videooperate/view/MusicButton;

    .line 69
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 70
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/view/animation/RotateAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 75
    iget-object v0, p0, Lcom/videooperate/view/MusicButton$MusicAnim;->this$0:Lcom/videooperate/view/MusicButton;

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/videooperate/view/MusicButton;->access$002(Lcom/videooperate/view/MusicButton;F)F

    .line 76
    return-void
.end method
