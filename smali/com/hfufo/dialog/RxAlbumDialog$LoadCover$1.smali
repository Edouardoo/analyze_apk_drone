.class Lcom/hfufo/dialog/RxAlbumDialog$LoadCover$1;
.super Ljava/lang/Object;
.source "RxAlbumDialog.java"

# interfaces
.implements Lcom/fh/util/ThumbLoader$OnLoadVideoThumbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;

    iput-wide p2, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover$1;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "duration"    # I

    .prologue
    .line 679
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover$1;->this$1:Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;

    invoke-static {v0, p1}, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->access$2602(Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 681
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6d88\u8017\u65f6\u95f4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover$1;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 682
    return-void
.end method
