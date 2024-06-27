.class final Lcom/opencv/openCVJni$1;
.super Ljava/lang/Object;
.source "openCVJni.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opencv/openCVJni;->initFile(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/opencv/openCVJni$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/opencv/openCVJni$1;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/videooperate/fragment/LocationMusicFragment;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/videooperate/utils/PermissionUtil;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/opencv/openCVJni$1;->val$context:Landroid/content/Context;

    const v1, 0x7f070001

    const-string v2, "face.prototxt"

    invoke-static {v0, v1, v2}, Lcom/opencv/openCVJni;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/opencv/openCVJni$1;->val$context:Landroid/content/Context;

    const/high16 v1, 0x7f070000

    const-string v2, "face.caffemodel"

    invoke-static {v0, v1, v2}, Lcom/opencv/openCVJni;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/opencv/openCVJni$1;->val$context:Landroid/content/Context;

    const v1, 0x7f070002

    const-string v2, "haarcascade_frontalface.xml"

    invoke-static {v0, v1, v2}, Lcom/opencv/openCVJni;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/opencv/openCVJni$1;->val$context:Landroid/content/Context;

    const v1, 0x7f070003

    const-string v2, "palm.xml"

    invoke-static {v0, v1, v2}, Lcom/opencv/openCVJni;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/opencv/openCVJni$1;->val$context:Landroid/content/Context;

    const v1, 0x7f070004

    const-string v2, "vandhandobjs.caffemodel"

    invoke-static {v0, v1, v2}, Lcom/opencv/openCVJni;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/opencv/openCVJni$1;->val$context:Landroid/content/Context;

    const v1, 0x7f070005

    const-string v2, "vandhandobjs.prototxt"

    invoke-static {v0, v1, v2}, Lcom/opencv/openCVJni;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
