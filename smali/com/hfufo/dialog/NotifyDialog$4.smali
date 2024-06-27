.class Lcom/hfufo/dialog/NotifyDialog$4;
.super Ljava/lang/Object;
.source "NotifyDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/dialog/NotifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/NotifyDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/NotifyDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/NotifyDialog;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/hfufo/dialog/NotifyDialog$4;->this$0:Lcom/hfufo/dialog/NotifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 437
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog$4;->this$0:Lcom/hfufo/dialog/NotifyDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/NotifyDialog;->access$300(Lcom/hfufo/dialog/NotifyDialog;)Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/hfufo/dialog/NotifyDialog$4;->this$0:Lcom/hfufo/dialog/NotifyDialog;

    invoke-static {v0}, Lcom/hfufo/dialog/NotifyDialog;->access$300(Lcom/hfufo/dialog/NotifyDialog;)Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/hfufo/dialog/NotifyDialog$OnCheckedChangeListener;->onCheckedChanged(Z)V

    .line 440
    :cond_0
    return-void
.end method
