.class Lcom/hfufo/rxdrone/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/MainActivity;->setRadioListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$3;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 755
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 761
    .local v0, "id":I
    const v2, 0x7f0f0114

    if-ne v0, v2, :cond_0

    .line 762
    const/4 v1, 0x1

    .line 763
    .local v1, "isChecked":Z
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$3;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$1200(Lcom/hfufo/rxdrone/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "flight"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 764
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u98de\u884c\u6a21\u5f0f"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 770
    :goto_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$3;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$1200(Lcom/hfufo/rxdrone/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 772
    return-void

    .line 766
    .end local v1    # "isChecked":Z
    :cond_0
    const/4 v1, 0x0

    .line 767
    .restart local v1    # "isChecked":Z
    iget-object v2, p0, Lcom/hfufo/rxdrone/MainActivity$3;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v2}, Lcom/hfufo/rxdrone/MainActivity;->access$1200(Lcom/hfufo/rxdrone/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "flight"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 768
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u4e3b\u4eba\u6a21\u5f0f"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method
