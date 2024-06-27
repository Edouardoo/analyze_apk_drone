.class public Lcom/hfufo/dialog/RxAlbumDialog;
.super Landroid/app/Dialog;
.source "RxAlbumDialog.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;,
        Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;,
        Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;,
        Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;,
        Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;
    }
.end annotation


# instance fields
.field private Btnpic:Landroid/widget/Button;

.field private Btnvideo:Landroid/widget/Button;

.field private GridPic:Landroid/widget/GridView;

.field private GridVideo:Landroid/widget/GridView;

.field private albumPicAdapter:Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;

.field private bitmap:Landroid/graphics/Bitmap;

.field private container:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isRecord:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgCallback:Lcom/fh/util/MsgCallback;

.field private m_context:Landroid/app/Activity;

.field private main_album:Landroid/view/View;

.field private openType:I

.field private path:Ljava/lang/String;

.field private recordGridViewAdapter:Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;

.field private record_adpter:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

.field private record_gridview:Landroid/view/View;

.field private record_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private record_pageNum:Landroid/widget/TextView;

.field private record_view:Landroid/view/View;

.field private record_viewPage:Landroid/support/v4/view/ViewPager;

.field private recore_share:Landroid/widget/ImageView;

.field private share_pic:Ljava/lang/String;

.field private share_rec:Ljava/lang/String;

.field private snapshot_adapter:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

.field private snapshot_gridview:Landroid/view/View;

.field private snapshot_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private snapshot_pageNum:Landroid/widget/TextView;

.field private snapshot_share:Landroid/widget/ImageView;

.field private snapshot_view:Landroid/view/View;

.field private snapshot_viewPage:Landroid/support/v4/view/ViewPager;

.field private task_num:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 94
    const v0, 0x7f0a00d9

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 70
    iput v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->task_num:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->list:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_list:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_list:Ljava/util/List;

    .line 84
    iput v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->openType:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->share_pic:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->share_rec:Ljava/lang/String;

    .line 96
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/RxAlbumDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    .line 98
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->inflater:Landroid/view/LayoutInflater;

    .line 99
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->main_album:Landroid/view/View;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->share_rec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->share_rec:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_pageNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_adpter:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_viewPage:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->recordGridViewAdapter:Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->Btnpic:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->Btnvideo:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridPic:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hfufo/dialog/RxAlbumDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridVideo:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/hfufo/dialog/RxAlbumDialog;->shareFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/hfufo/dialog/RxAlbumDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->isRecord:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/hfufo/dialog/RxAlbumDialog;->getBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/hfufo/dialog/RxAlbumDialog;->getLoadVideoThumb(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/hfufo/dialog/RxAlbumDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->openType:I

    return v0
.end method

.method static synthetic access$2800(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/fh/util/MsgCallback;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->mMsgCallback:Lcom/fh/util/MsgCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->albumPicAdapter:Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_pageNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/hfufo/dialog/RxAlbumDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->share_pic:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/hfufo/dialog/RxAlbumDialog;)Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_adapter:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/hfufo/dialog/RxAlbumDialog;Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;)Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;
    .param p1, "x1"    # Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_adapter:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_viewPage:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->container:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hfufo/dialog/RxAlbumDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/dialog/RxAlbumDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_view:Landroid/view/View;

    return-object v0
.end method

.method private getBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "mUri"    # Ljava/lang/String;

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/hfufo/dialog/RxAlbumDialog;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1036
    const/4 v3, 0x0

    .line 1037
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1038
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1040
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1041
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1043
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1044
    .local v4, "h":I
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1045
    .local v6, "w":I
    div-int v2, v6, p2

    .line 1046
    .local v2, "beWidth":I
    div-int v1, v4, p3

    .line 1047
    .local v1, "beHeight":I
    const/4 v0, 0x1

    .line 1048
    .local v0, "be":I
    if-ge v2, v1, :cond_1

    .line 1049
    move v0, v2

    .line 1053
    :goto_0
    if-gtz v0, :cond_0

    .line 1054
    const/4 v0, 0x1

    .line 1056
    :cond_0
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1058
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1060
    const/4 v7, 0x2

    invoke-static {v3, p2, p3, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1062
    return-object v3

    .line 1051
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getLoadVideoThumb(Ljava/lang/String;I)V
    .locals 3
    .param p1, "savePath"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 658
    new-instance v0, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;Lcom/hfufo/dialog/RxAlbumDialog$1;)V

    .line 660
    .local v0, "loadVideoCover":Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/RxAlbumDialog$LoadCover;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 662
    return-void
.end method

.method private getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "kind"    # I

    .prologue
    .line 1079
    const/4 v0, 0x0

    .line 1081
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1, p4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1084
    const/4 v1, 0x2

    invoke-static {v0, p2, p3, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1086
    return-object v0
.end method

.method private init_record_view()V
    .locals 5

    .prologue
    .line 408
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 409
    .local v2, "mInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04005b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_view:Landroid/view/View;

    .line 410
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_view:Landroid/view/View;

    const v4, 0x7f0f0218

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_viewPage:Landroid/support/v4/view/ViewPager;

    .line 411
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_view:Landroid/view/View;

    const v4, 0x7f0f0081

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->recore_share:Landroid/widget/ImageView;

    .line 412
    new-instance v3, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    invoke-direct {v3, p0}, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_adpter:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    .line 413
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_viewPage:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_adpter:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 414
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_adpter:Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;

    invoke-virtual {v3}, Lcom/hfufo/dialog/RxAlbumDialog$RecordViewPageAdapter;->notifyDataSetChanged()V

    .line 415
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_view:Landroid/view/View;

    const v4, 0x7f0f0217

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_pageNum:Landroid/widget/TextView;

    .line 416
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_viewPage:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/hfufo/dialog/RxAlbumDialog$10;

    invoke-direct {v4, p0}, Lcom/hfufo/dialog/RxAlbumDialog$10;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 436
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_view:Landroid/view/View;

    const v4, 0x7f0f0028

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 437
    .local v0, "back":Landroid/widget/ImageView;
    new-instance v3, Lcom/hfufo/dialog/RxAlbumDialog$11;

    invoke-direct {v3, p0}, Lcom/hfufo/dialog/RxAlbumDialog$11;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->record_view:Landroid/view/View;

    const v4, 0x7f0f0219

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 451
    .local v1, "delete":Landroid/widget/ImageView;
    new-instance v3, Lcom/hfufo/dialog/RxAlbumDialog$12;

    invoke-direct {v3, p0}, Lcom/hfufo/dialog/RxAlbumDialog$12;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->recore_share:Landroid/widget/ImageView;

    new-instance v4, Lcom/hfufo/dialog/RxAlbumDialog$13;

    invoke-direct {v4, p0}, Lcom/hfufo/dialog/RxAlbumDialog$13;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    return-void
.end method

.method private init_snapshot_view()V
    .locals 5

    .prologue
    .line 277
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 278
    .local v2, "mInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040060

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_view:Landroid/view/View;

    .line 279
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_view:Landroid/view/View;

    const v4, 0x7f0f022b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_viewPage:Landroid/support/v4/view/ViewPager;

    .line 280
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_view:Landroid/view/View;

    const v4, 0x7f0f022a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_share:Landroid/widget/ImageView;

    .line 281
    new-instance v3, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    invoke-direct {v3, p0}, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_adapter:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    .line 282
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_viewPage:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_adapter:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 283
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_adapter:Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;

    invoke-virtual {v3}, Lcom/hfufo/dialog/RxAlbumDialog$SnapshotViewPageAdapter;->notifyDataSetChanged()V

    .line 284
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_view:Landroid/view/View;

    const v4, 0x7f0f0217

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_pageNum:Landroid/widget/TextView;

    .line 285
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_viewPage:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/hfufo/dialog/RxAlbumDialog$6;

    invoke-direct {v4, p0}, Lcom/hfufo/dialog/RxAlbumDialog$6;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 305
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_view:Landroid/view/View;

    const v4, 0x7f0f0028

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 306
    .local v0, "back":Landroid/widget/ImageView;
    new-instance v3, Lcom/hfufo/dialog/RxAlbumDialog$7;

    invoke-direct {v3, p0}, Lcom/hfufo/dialog/RxAlbumDialog$7;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_view:Landroid/view/View;

    const v4, 0x7f0f0219

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 321
    .local v1, "delete":Landroid/widget/ImageView;
    new-instance v3, Lcom/hfufo/dialog/RxAlbumDialog$8;

    invoke-direct {v3, p0}, Lcom/hfufo/dialog/RxAlbumDialog$8;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->snapshot_share:Landroid/widget/ImageView;

    new-instance v4, Lcom/hfufo/dialog/RxAlbumDialog$9;

    invoke-direct {v4, p0}, Lcom/hfufo/dialog/RxAlbumDialog$9;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    return-void
.end method

.method private main_album_show()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, 0x28

    .line 163
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->main_album:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/RxAlbumDialog;->setContentView(Landroid/view/View;)V

    .line 164
    const v1, 0x7f0f01ca

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/RxAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->container:Landroid/widget/LinearLayout;

    .line 166
    invoke-direct {p0}, Lcom/hfufo/dialog/RxAlbumDialog;->init_record_view()V

    .line 167
    invoke-direct {p0}, Lcom/hfufo/dialog/RxAlbumDialog;->init_snapshot_view()V

    .line 169
    const v1, 0x7f0f01c8

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/RxAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->Btnpic:Landroid/widget/Button;

    .line 170
    new-instance v1, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->albumPicAdapter:Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;

    .line 171
    new-instance v1, Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridPic:Landroid/widget/GridView;

    .line 172
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridPic:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 173
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridPic:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 174
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridPic:Landroid/widget/GridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 175
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "vv":Landroid/view/View;
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 177
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->container:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 178
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->container:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridPic:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridPic:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog;->albumPicAdapter:Lcom/hfufo/dialog/RxAlbumDialog$AlbumPicAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridPic:Landroid/widget/GridView;

    new-instance v2, Lcom/hfufo/dialog/RxAlbumDialog$2;

    invoke-direct {v2, p0}, Lcom/hfufo/dialog/RxAlbumDialog$2;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    new-instance v1, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->recordGridViewAdapter:Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;

    .line 208
    new-instance v1, Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridVideo:Landroid/widget/GridView;

    .line 209
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridVideo:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 210
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridVideo:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 211
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridVideo:Landroid/widget/GridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridVideo:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog;->recordGridViewAdapter:Lcom/hfufo/dialog/RxAlbumDialog$RecordGridViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->GridVideo:Landroid/widget/GridView;

    new-instance v2, Lcom/hfufo/dialog/RxAlbumDialog$3;

    invoke-direct {v2, p0}, Lcom/hfufo/dialog/RxAlbumDialog$3;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->Btnpic:Landroid/widget/Button;

    new-instance v2, Lcom/hfufo/dialog/RxAlbumDialog$4;

    invoke-direct {v2, p0}, Lcom/hfufo/dialog/RxAlbumDialog$4;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v1, 0x7f0f01c9

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/RxAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->Btnvideo:Landroid/widget/Button;

    .line 260
    iget-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->Btnvideo:Landroid/widget/Button;

    new-instance v2, Lcom/hfufo/dialog/RxAlbumDialog$5;

    invoke-direct {v2, p0}, Lcom/hfufo/dialog/RxAlbumDialog$5;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method private select_item(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 746
    return-void
.end method

.method private shareFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1203
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v0, "imageIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1206
    .local v1, "uri":Landroid/net/Uri;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 1207
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1208
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    .line 1209
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1208
    invoke-static {v2, v3, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1215
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1218
    iget-object v2, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    const-string v3, "\u5206\u4eab"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1219
    return-void

    .line 1211
    :cond_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1212
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getFile(Ljava/io/File;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 960
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 961
    .local v3, "fileArray":[Ljava/io/File;
    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_7

    aget-object v2, v3, v8

    .line 962
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 963
    const-string v10, ".h264"

    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->getFileEx(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, ".avi"

    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->getFileEx(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, ".mov"

    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->getFileEx(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, ".jpg"

    .line 964
    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->getFileEx(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 965
    :cond_0
    new-instance v0, Lcom/fh/lib/Album;

    invoke-direct {v0}, Lcom/fh/lib/Album;-><init>()V

    .line 966
    .local v0, "album":Lcom/fh/lib/Album;
    const/4 v7, 0x0

    .line 967
    .local v7, "sDataSize":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 968
    .local v4, "len":J
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\u76f8\u518c\u83b7\u53d6\u6587\u4ef61"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v0, v4, v5}, Lcom/fh/lib/Album;->setSize(J)V

    .line 970
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v10}, Lcom/fh/lib/Album;->setDate(Ljava/util/Date;)V

    .line 972
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/fh/lib/Album;->setPath(Ljava/lang/String;)V

    .line 973
    const-string v10, ".jpg"

    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->getFileEx(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 974
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/fh/lib/Album;->setImage(Z)V

    .line 975
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 976
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x6c

    const/16 v12, 0x57

    invoke-direct {p0, v10, v11, v12}, Lcom/hfufo/dialog/RxAlbumDialog;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 977
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 978
    new-instance v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/fh/lib/Album;->image_view:Landroid/widget/ImageView;

    .line 979
    iget-object v10, v0, Lcom/fh/lib/Album;->image_view:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 961
    .end local v0    # "album":Lcom/fh/lib/Album;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "len":J
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "sDataSize":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 982
    .restart local v0    # "album":Lcom/fh/lib/Album;
    .restart local v4    # "len":J
    .restart local v7    # "sDataSize":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/fh/lib/Album;->setImage(Z)V

    .line 983
    const/4 v1, 0x0

    .line 984
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    const-string v10, ".avi"

    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->getFileEx(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 985
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/hfufo/dialog/RxAlbumDialog;->getBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 986
    if-nez v1, :cond_3

    .line 987
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "avi\u83b7\u53d6\u5230\u7684bitmap"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 993
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 994
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\u4e0d\u4e3a\u7a7a"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 995
    new-instance v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/fh/lib/Album;->image_view:Landroid/widget/ImageView;

    .line 996
    iget-object v10, v0, Lcom/fh/lib/Album;->image_view:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 989
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x6c

    const/16 v12, 0x57

    const/4 v13, 0x1

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/hfufo/dialog/RxAlbumDialog;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 998
    :cond_5
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\u83b7\u53d6\u9ed8\u8ba4\u7684"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    new-instance v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/fh/lib/Album;->image_view:Landroid/widget/ImageView;

    .line 1000
    iget-object v10, v0, Lcom/fh/lib/Album;->image_view:Landroid/widget/ImageView;

    const v11, 0x7f0300d8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1006
    .end local v0    # "album":Lcom/fh/lib/Album;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "len":J
    .end local v7    # "sDataSize":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/hfufo/dialog/RxAlbumDialog;->getFile(Ljava/io/File;)V

    goto :goto_1

    .line 1010
    .end local v2    # "f":Ljava/io/File;
    :cond_7
    return-void
.end method

.method public getFileEx(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1013
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "fileName":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1015
    .local v1, "index":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1016
    .local v2, "length":I
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, "str":Ljava/lang/String;
    return-object v3
.end method

.method public get_bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 722
    .local v3, "in":Ljava/io/FileInputStream;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 736
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v5

    .line 725
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    move-object v1, v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    move-object v5, v0

    .line 736
    goto :goto_0

    .line 726
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 727
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v0

    .line 728
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 732
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 733
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    move-object v1, v0

    .line 734
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v1, 0x7f0f01ca

    invoke-virtual {p0, v1}, Lcom/hfufo/dialog/RxAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->container:Landroid/widget/LinearLayout;

    .line 110
    new-instance v0, Lcom/hfufo/dialog/RxAlbumDialog$1;

    invoke-direct {v0, p0}, Lcom/hfufo/dialog/RxAlbumDialog$1;-><init>(Lcom/hfufo/dialog/RxAlbumDialog;)V

    .line 157
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    invoke-direct {p0}, Lcom/hfufo/dialog/RxAlbumDialog;->main_album_show()V

    .line 159
    return-void
.end method

.method public recSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 938
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 940
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 941
    .local v1, "sd":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/SKY_OF/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->path:Ljava/lang/String;

    .line 943
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->path:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 944
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 945
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 947
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->mFileItems:Ljava/util/List;

    .line 948
    invoke-virtual {p0, v0}, Lcom/hfufo/dialog/RxAlbumDialog;->getFile(Ljava/io/File;)V

    .line 955
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "sd":Ljava/io/File;
    :goto_0
    return v2

    .line 951
    :cond_1
    iget-object v3, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u672a\u627e\u5230\u5b58\u50a8\u5361"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 953
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setMsgCallback(Lcom/fh/util/MsgCallback;)V
    .locals 0
    .param p1, "mMsgCallback"    # Lcom/fh/util/MsgCallback;

    .prologue
    .line 933
    iput-object p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->mMsgCallback:Lcom/fh/util/MsgCallback;

    .line 934
    return-void
.end method

.method public setOpenType(I)V
    .locals 0
    .param p1, "openType"    # I

    .prologue
    .line 929
    iput p1, p0, Lcom/hfufo/dialog/RxAlbumDialog;->openType:I

    .line 930
    return-void
.end method

.method public shareMultipleImage(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1187
    .local p1, "filelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v3, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "australia_1.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "australia_2.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "australia_3.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1196
    .local v2, "shareIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1198
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    iget-object v4, p0, Lcom/hfufo/dialog/RxAlbumDialog;->m_context:Landroid/app/Activity;

    const-string v5, "\u5206\u4eab\u5230"

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1200
    return-void
.end method
