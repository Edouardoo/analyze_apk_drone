.class Lcom/hfufo/rxdrone/SettingActivity$9;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/SettingActivity;->initTextView()V
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
    .line 490
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$9;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 493
    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$9;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->debug_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 494
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hfufo/rxdrone/SettingActivity$9;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->debug_list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v1}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, "debugFile":Ljava/io/File;
    const-string v1, "text/*"

    iget-object v2, p0, Lcom/hfufo/rxdrone/SettingActivity$9;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-static {v0, v1, v2}, Lcom/Util/FileUtil;->ShareFile(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 499
    .end local v0    # "debugFile":Ljava/io/File;
    :goto_0
    return-void

    .line 497
    :cond_0
    const-string v1, "\u6ca1\u6709\u5d29\u6e83\u9519\u8bef \n No Error"

    invoke-static {v1}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
