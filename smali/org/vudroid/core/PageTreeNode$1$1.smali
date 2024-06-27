.class Lorg/vudroid/core/PageTreeNode$1$1;
.super Ljava/lang/Object;
.source "PageTreeNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/vudroid/core/PageTreeNode$1;->decodeComplete(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/vudroid/core/PageTreeNode$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/vudroid/core/PageTreeNode$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/vudroid/core/PageTreeNode$1;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iput-object p2, p0, Lorg/vudroid/core/PageTreeNode$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iget-object v0, v0, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/vudroid/core/PageTreeNode;->access$000(Lorg/vudroid/core/PageTreeNode;Landroid/graphics/Bitmap;)V

    .line 148
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iget-object v0, v0, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    invoke-static {v0, v2}, Lorg/vudroid/core/PageTreeNode;->access$102(Lorg/vudroid/core/PageTreeNode;Z)Z

    .line 149
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iget-object v0, v0, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    invoke-static {v0, v2}, Lorg/vudroid/core/PageTreeNode;->access$200(Lorg/vudroid/core/PageTreeNode;Z)V

    .line 150
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iget-object v0, v0, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    invoke-static {v0}, Lorg/vudroid/core/PageTreeNode;->access$300(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/Page;

    move-result-object v0

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iget-object v1, v1, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    invoke-static {v1}, Lorg/vudroid/core/PageTreeNode;->access$400(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/DocumentView;

    move-result-object v1

    iget-object v1, v1, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iget-object v2, v2, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    invoke-static {v2}, Lorg/vudroid/core/PageTreeNode;->access$300(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/Page;

    move-result-object v2

    iget v2, v2, Lorg/vudroid/core/Page;->index:I

    invoke-interface {v1, v2}, Lorg/vudroid/core/DecodeService;->getPageWidth(I)I

    move-result v1

    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iget-object v2, v2, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    invoke-static {v2}, Lorg/vudroid/core/PageTreeNode;->access$400(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/DocumentView;

    move-result-object v2

    iget-object v2, v2, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iget-object v3, v3, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    invoke-static {v3}, Lorg/vudroid/core/PageTreeNode;->access$300(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/Page;

    move-result-object v3

    iget v3, v3, Lorg/vudroid/core/Page;->index:I

    invoke-interface {v2, v3}, Lorg/vudroid/core/DecodeService;->getPageHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/vudroid/core/Page;->setAspectRatio(II)V

    .line 151
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode$1$1;->this$1:Lorg/vudroid/core/PageTreeNode$1;

    iget-object v0, v0, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    invoke-static {v0}, Lorg/vudroid/core/PageTreeNode;->access$500(Lorg/vudroid/core/PageTreeNode;)V

    .line 152
    return-void
.end method
