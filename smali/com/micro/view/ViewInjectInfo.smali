.class public Lcom/micro/view/ViewInjectInfo;
.super Ljava/lang/Object;
.source "ViewInjectInfo.java"


# instance fields
.field public parentId:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    if-ne p0, p1, :cond_1

    .line 17
    :cond_0
    :goto_0
    return v1

    .line 10
    :cond_1
    instance-of v3, p1, Lcom/micro/view/ViewInjectInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 12
    check-cast v0, Lcom/micro/view/ViewInjectInfo;

    .line 14
    .local v0, "that":Lcom/micro/view/ViewInjectInfo;
    iget v3, p0, Lcom/micro/view/ViewInjectInfo;->parentId:I

    iget v4, v0, Lcom/micro/view/ViewInjectInfo;->parentId:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 15
    :cond_3
    iget-object v3, p0, Lcom/micro/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/micro/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/micro/view/ViewInjectInfo;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/micro/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 22
    iget-object v1, p0, Lcom/micro/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 23
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/micro/view/ViewInjectInfo;->parentId:I

    add-int v0, v1, v2

    .line 24
    return v0
.end method
