.class public Lcom/azoft/carousellayoutmanager/ItemTransformation;
.super Ljava/lang/Object;
.source "ItemTransformation.java"


# instance fields
.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "translationX"    # F
    .param p4, "translationY"    # F

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mScaleX:F

    .line 12
    iput p2, p0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mScaleY:F

    .line 13
    iput p3, p0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mTranslationX:F

    .line 14
    iput p4, p0, Lcom/azoft/carousellayoutmanager/ItemTransformation;->mTranslationY:F

    .line 15
    return-void
.end method
