.class Lcom/hfufo/rxdrone/SettingActivity$8;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/SettingActivity;->initTestView()V
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
    .line 464
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$8;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 468
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$8;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$608(Lcom/hfufo/rxdrone/SettingActivity;)I

    .line 469
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$8;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$600(Lcom/hfufo/rxdrone/SettingActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 470
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$8;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1, v3}, Lcom/hfufo/rxdrone/SettingActivity;->access$602(Lcom/hfufo/rxdrone/SettingActivity;I)I

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$8;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$600(Lcom/hfufo/rxdrone/SettingActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->getRtsResolution(I)[I

    move-result-object v0

    .line 473
    .local v0, "resolution":[I
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$8;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$700(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$8;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$600(Lcom/hfufo/rxdrone/SettingActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->saveStreamResolutionLevel(I)V

    .line 475
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$8;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v1}, Lcom/hfufo/rxdrone/SettingActivity;->access$300(Lcom/hfufo/rxdrone/SettingActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 476
    return-void
.end method
