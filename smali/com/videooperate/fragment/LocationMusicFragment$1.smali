.class Lcom/videooperate/fragment/LocationMusicFragment$1;
.super Lcom/videooperate/view/UniversalItemDecoration;
.source "LocationMusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/fragment/LocationMusicFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/fragment/LocationMusicFragment;


# direct methods
.method constructor <init>(Lcom/videooperate/fragment/LocationMusicFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/fragment/LocationMusicFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/videooperate/fragment/LocationMusicFragment$1;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    invoke-direct {p0}, Lcom/videooperate/view/UniversalItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/videooperate/view/UniversalItemDecoration$Decoration;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    new-instance v0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;

    invoke-direct {v0}, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;-><init>()V

    .line 87
    .local v0, "decoration":Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/videooperate/utils/UIUtils;->dp2px(I)I

    move-result v1

    iput v1, v0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->right:I

    .line 88
    const v1, 0x7f0d0021

    invoke-static {v1}, Lcom/videooperate/utils/UIUtils;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->decorationColor:I

    .line 89
    return-object v0
.end method
