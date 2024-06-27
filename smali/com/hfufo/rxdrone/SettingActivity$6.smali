.class Lcom/hfufo/rxdrone/SettingActivity$6;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/SettingActivity;->initUdateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/SettingActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$6;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 344
    const/16 v0, 0x5dc

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$6;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$6;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    const-class v3, Lcom/hfufo/rxdrone/PdfActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 348
    :cond_0
    return-void
.end method
