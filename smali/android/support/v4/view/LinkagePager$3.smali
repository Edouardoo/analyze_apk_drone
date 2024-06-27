.class Landroid/support/v4/view/LinkagePager$3;
.super Ljava/lang/Object;
.source "LinkagePager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LinkagePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/LinkagePager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/LinkagePager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/LinkagePager;

    .prologue
    .line 238
    iput-object p1, p0, Landroid/support/v4/view/LinkagePager$3;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager$3;->this$0:Landroid/support/v4/view/LinkagePager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/LinkagePager;->access$000(Landroid/support/v4/view/LinkagePager;I)V

    .line 241
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager$3;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v0}, Landroid/support/v4/view/LinkagePager;->populate()V

    .line 242
    return-void
.end method
