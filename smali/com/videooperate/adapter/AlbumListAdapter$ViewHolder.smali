.class public Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AlbumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/adapter/AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field ivImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01f1
        }
    .end annotation
.end field

.field ivPhotoCheaked:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01f7
        }
    .end annotation
.end field

.field ivPlay:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01f2
        }
    .end annotation
.end field

.field iv_add_music:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d1
        }
    .end annotation
.end field

.field ll_buttom:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01f3
        }
    .end annotation
.end field

.field rlRoot:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01f0
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/videooperate/adapter/AlbumListAdapter;

.field tv_date:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01f5
        }
    .end annotation
.end field

.field tv_length:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01f4
        }
    .end annotation
.end field

.field vShadown:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f01f6
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/videooperate/adapter/AlbumListAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/adapter/AlbumListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/videooperate/adapter/AlbumListAdapter$ViewHolder;->this$0:Lcom/videooperate/adapter/AlbumListAdapter;

    .line 241
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 242
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 243
    return-void
.end method
