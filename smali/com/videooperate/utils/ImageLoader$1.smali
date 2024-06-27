.class Lcom/videooperate/utils/ImageLoader$1;
.super Landroid/util/LruCache;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/utils/ImageLoader;-><init>()V
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
.field final synthetic this$0:Lcom/videooperate/utils/ImageLoader;


# direct methods
.method constructor <init>(Lcom/videooperate/utils/ImageLoader;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/utils/ImageLoader;
    .param p2, "x0"    # I

    .prologue
    .line 32
    iput-object p1, p0, Lcom/videooperate/utils/ImageLoader$1;->this$0:Lcom/videooperate/utils/ImageLoader;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 32
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/videooperate/utils/ImageLoader$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/videooperate/utils/ImageLoader$1;->this$0:Lcom/videooperate/utils/ImageLoader;

    invoke-static {v0, p2}, Lcom/videooperate/utils/ImageLoader;->access$000(Lcom/videooperate/utils/ImageLoader;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
