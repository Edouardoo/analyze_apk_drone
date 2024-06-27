.class public Lcom/jieli/lib/stream/beans/MenuInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/graphics/Bitmap;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x2

    iput v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->a:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->d:I

    .line 18
    const-string v0, "-404"

    iput-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->e:Ljava/lang/String;

    .line 21
    const-string v0, "-404"

    iput-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->h:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->m:Landroid/graphics/Bitmap;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->n:Z

    return-void
.end method


# virtual methods
.method public getCmdNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->a:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->d:I

    return v0
.end method

.method public getMiddleImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParentNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getStateBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStateImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->n:Z

    return v0
.end method

.method public setCmdNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->e:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->a:I

    .line 35
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLargeImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->j:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setMenuType(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->d:I

    .line 43
    return-void
.end method

.method public setMiddleImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->k:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->b:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setParentNum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->h:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->n:Z

    .line 131
    return-void
.end method

.method public setSmallImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->l:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setStateBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->m:Landroid/graphics/Bitmap;

    .line 123
    return-void
.end method

.method public setStateImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->i:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->f:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jieli/lib/stream/beans/MenuInfo;->g:Ljava/lang/String;

    .line 75
    return-void
.end method
