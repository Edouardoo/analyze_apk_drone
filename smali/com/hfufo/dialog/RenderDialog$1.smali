.class Lcom/hfufo/dialog/RenderDialog$1;
.super Ljava/lang/Object;
.source "RenderDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/RenderDialog;->initSplitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/RenderDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/RenderDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/RenderDialog;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/hfufo/dialog/RenderDialog$1;->this$0:Lcom/hfufo/dialog/RenderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 123
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v1, p0, Lcom/hfufo/dialog/RenderDialog$1;->this$0:Lcom/hfufo/dialog/RenderDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RenderDialog;->access$000(Lcom/hfufo/dialog/RenderDialog;)Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onSplitSuccess(I)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/hfufo/dialog/RenderDialog$1;->this$0:Lcom/hfufo/dialog/RenderDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RenderDialog;->access$000(Lcom/hfufo/dialog/RenderDialog;)Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onSplitSuccess(I)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v1, p0, Lcom/hfufo/dialog/RenderDialog$1;->this$0:Lcom/hfufo/dialog/RenderDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RenderDialog;->access$000(Lcom/hfufo/dialog/RenderDialog;)Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onSplitSuccess(I)V

    goto :goto_0

    .line 140
    :pswitch_3
    iget-object v1, p0, Lcom/hfufo/dialog/RenderDialog$1;->this$0:Lcom/hfufo/dialog/RenderDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RenderDialog;->access$000(Lcom/hfufo/dialog/RenderDialog;)Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onSplitSuccess(I)V

    goto :goto_0

    .line 143
    :pswitch_4
    iget-object v1, p0, Lcom/hfufo/dialog/RenderDialog$1;->this$0:Lcom/hfufo/dialog/RenderDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RenderDialog;->access$000(Lcom/hfufo/dialog/RenderDialog;)Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onSplitSuccess(I)V

    goto :goto_0

    .line 146
    :pswitch_5
    iget-object v1, p0, Lcom/hfufo/dialog/RenderDialog$1;->this$0:Lcom/hfufo/dialog/RenderDialog;

    invoke-static {v1}, Lcom/hfufo/dialog/RenderDialog;->access$000(Lcom/hfufo/dialog/RenderDialog;)Lcom/hfufo/dialog/RenderDialog$FilterCallback;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/hfufo/dialog/RenderDialog$FilterCallback;->onSplitSuccess(I)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f021b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
