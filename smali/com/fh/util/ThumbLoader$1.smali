.class Lcom/fh/util/ThumbLoader$1;
.super Landroid/util/LruCache;
.source "ThumbLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/util/ThumbLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/util/ThumbLoader;


# direct methods
.method constructor <init>(Lcom/fh/util/ThumbLoader;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fh/util/ThumbLoader;
    .param p2, "x0"    # I

    .prologue
    .line 62
    iput-object p1, p0, Lcom/fh/util/ThumbLoader$1;->this$0:Lcom/fh/util/ThumbLoader;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 62
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/fh/util/ThumbLoader$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fh/util/ThumbLoader$1;->this$0:Lcom/fh/util/ThumbLoader;

    invoke-static {v0, p2}, Lcom/fh/util/ThumbLoader;->access$000(Lcom/fh/util/ThumbLoader;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
