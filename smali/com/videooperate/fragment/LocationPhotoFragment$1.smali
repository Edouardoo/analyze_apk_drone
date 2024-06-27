.class Lcom/videooperate/fragment/LocationPhotoFragment$1;
.super Lcom/videooperate/view/UniversalItemDecoration;
.source "LocationPhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/videooperate/fragment/LocationPhotoFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/fragment/LocationPhotoFragment;


# direct methods
.method constructor <init>(Lcom/videooperate/fragment/LocationPhotoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/fragment/LocationPhotoFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/videooperate/fragment/LocationPhotoFragment$1;->this$0:Lcom/videooperate/fragment/LocationPhotoFragment;

    invoke-direct {p0}, Lcom/videooperate/view/UniversalItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/videooperate/view/UniversalItemDecoration$Decoration;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    new-instance v0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;

    invoke-direct {v0}, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;-><init>()V

    .line 75
    .local v0, "decoration":Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/videooperate/utils/UIUtils;->dp2px(I)I

    move-result v1

    iput v1, v0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->top:I

    .line 76
    const v1, 0x7f0d0078

    invoke-static {v1}, Lcom/videooperate/utils/UIUtils;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/videooperate/view/UniversalItemDecoration$ColorDecoration;->decorationColor:I

    .line 77
    return-object v0
.end method
