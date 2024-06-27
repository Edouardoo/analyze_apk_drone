.class public Lcom/fh/lib/Album;
.super Ljava/lang/Object;
.source "Album.java"


# instance fields
.field private image:Z

.field public image_view:Landroid/widget/ImageView;

.field public no_player:Z

.field private path:Ljava/lang/String;

.field public selected:Z

.field private size:J

.field private t:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fh/lib/Album;->selected:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/fh/lib/Album;

    invoke-direct {v0}, Lcom/fh/lib/Album;-><init>()V

    .line 66
    .local v0, "item":Lcom/fh/lib/Album;
    iget-boolean v1, p0, Lcom/fh/lib/Album;->image:Z

    invoke-virtual {v0, v1}, Lcom/fh/lib/Album;->setImage(Z)V

    .line 67
    iget-wide v2, p0, Lcom/fh/lib/Album;->size:J

    invoke-virtual {v0, v2, v3}, Lcom/fh/lib/Album;->setSize(J)V

    .line 68
    iget-object v1, p0, Lcom/fh/lib/Album;->t:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/fh/lib/Album;->setDate(Ljava/util/Date;)V

    .line 69
    iget-object v1, p0, Lcom/fh/lib/Album;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fh/lib/Album;->setPath(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/fh/lib/Album;->image_view:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/fh/lib/Album;->image_view:Landroid/widget/ImageView;

    .line 71
    return-object v0
.end method

.method public getDataSize()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    iget-wide v0, p0, Lcom/fh/lib/Album;->size:J

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 54
    const-string v0, "%.1fKB"

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/fh/lib/Album;->size:J

    long-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.1fMB"

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/fh/lib/Album;->size:J

    long-to-float v2, v2

    const/high16 v3, 0x49800000    # 1048576.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fh/lib/Album;->t:Ljava/util/Date;

    return-object v0
.end method

.method public getImage()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/fh/lib/Album;->image:Z

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fh/lib/Album;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/fh/lib/Album;->size:J

    return-wide v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "t"    # Ljava/util/Date;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fh/lib/Album;->t:Ljava/util/Date;

    .line 33
    return-void
.end method

.method public setImage(Z)V
    .locals 0
    .param p1, "image"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/fh/lib/Album;->image:Z

    .line 25
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fh/lib/Album;->path:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/fh/lib/Album;->size:J

    .line 41
    return-void
.end method
