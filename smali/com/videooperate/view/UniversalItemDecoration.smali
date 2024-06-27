.class public abstract Lcom/videooperate/view/UniversalItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "UniversalItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;,
        Lcom/videooperate/view/UniversalItemDecoration$Decoration;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UniversalItemDecoration"


# instance fields
.field private decorations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/videooperate/view/UniversalItemDecoration$Decoration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/videooperate/view/UniversalItemDecoration;->decorations:Ljava/util/Map;

    return-void
.end method

.method public static string2Int(Ljava/lang/String;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 133
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 135
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 134
    .restart local p1    # "defValue":I
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public abstract getItemOffsets(I)Lcom/videooperate/view/UniversalItemDecoration$Decoration;
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 65
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 66
    .local v1, "position":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/videooperate/view/UniversalItemDecoration;->getItemOffsets(I)Lcom/videooperate/view/UniversalItemDecoration$Decoration;

    move-result-object v0

    .line 71
    .local v0, "decoration":Lcom/videooperate/view/UniversalItemDecoration$Decoration;
    if-eqz v0, :cond_0

    .line 73
    iget v2, v0, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->left:I

    iget v3, v0, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->top:I

    iget v4, v0, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->right:I

    iget v5, v0, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/videooperate/view/UniversalItemDecoration;->decorations:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 24
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 28
    invoke-super/range {p0 .. p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v20

    .line 31
    .local v20, "childSize":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 33
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 35
    .local v19, "child":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/videooperate/view/UniversalItemDecoration;->string2Int(Ljava/lang/String;I)I

    move-result v23

    .line 36
    .local v23, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/videooperate/view/UniversalItemDecoration;->decorations:Ljava/util/Map;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/videooperate/view/UniversalItemDecoration$Decoration;

    .line 38
    .local v2, "decoration":Lcom/videooperate/view/UniversalItemDecoration$Decoration;
    if-nez v2, :cond_0

    .line 31
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 42
    .local v22, "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v3

    move-object/from16 v0, v22

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v5, v3, v4

    .line 43
    .local v5, "bottom":I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object/from16 v0, v22

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v12, v3, v4

    .line 44
    .local v12, "left":I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v3

    move-object/from16 v0, v22

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v15, v3, v4

    .line 45
    .local v15, "right":I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v3

    move-object/from16 v0, v22

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v11, v3, v4

    .line 48
    .local v11, "top":I
    iget v3, v2, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->left:I

    sub-int v4, v12, v3

    iget v3, v2, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->right:I

    add-int v6, v15, v3

    iget v3, v2, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->bottom:I

    add-int v7, v5, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->drawItemOffsets(Landroid/graphics/Canvas;IIII)V

    .line 50
    iget v3, v2, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->left:I

    sub-int v8, v12, v3

    iget v3, v2, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->top:I

    sub-int v9, v11, v3

    iget v3, v2, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->right:I

    add-int v10, v15, v3

    move-object v6, v2

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->drawItemOffsets(Landroid/graphics/Canvas;IIII)V

    .line 52
    iget v3, v2, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->left:I

    sub-int v10, v12, v3

    move-object v8, v2

    move-object/from16 v9, p1

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->drawItemOffsets(Landroid/graphics/Canvas;IIII)V

    .line 54
    iget v3, v2, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->right:I

    add-int v17, v15, v3

    move-object v13, v2

    move-object/from16 v14, p1

    move/from16 v16, v11

    move/from16 v18, v5

    invoke-virtual/range {v13 .. v18}, Lcom/videooperate/view/UniversalItemDecoration$Decoration;->drawItemOffsets(Landroid/graphics/Canvas;IIII)V

    goto :goto_1

    .line 58
    .end local v2    # "decoration":Lcom/videooperate/view/UniversalItemDecoration$Decoration;
    .end local v5    # "bottom":I
    .end local v11    # "top":I
    .end local v12    # "left":I
    .end local v15    # "right":I
    .end local v19    # "child":Landroid/view/View;
    .end local v22    # "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v23    # "position":I
    :cond_1
    return-void
.end method
