.class Lcom/hfufo/widget/MicroTrimView$2;
.super Ljava/lang/Object;
.source "MicroTrimView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/MicroTrimView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/MicroTrimView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/MicroTrimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/MicroTrimView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/hfufo/widget/MicroTrimView$2;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView$2;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v0}, Lcom/hfufo/widget/MicroTrimView;->access$000(Lcom/hfufo/widget/MicroTrimView;)I

    move-result v0

    iget-object v1, p0, Lcom/hfufo/widget/MicroTrimView$2;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v1}, Lcom/hfufo/widget/MicroTrimView;->access$300(Lcom/hfufo/widget/MicroTrimView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView$2;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v0}, Lcom/hfufo/widget/MicroTrimView;->access$008(Lcom/hfufo/widget/MicroTrimView;)I

    .line 122
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView$2;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v0}, Lcom/hfufo/widget/MicroTrimView;->access$008(Lcom/hfufo/widget/MicroTrimView;)I

    .line 123
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView$2;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v0}, Lcom/hfufo/widget/MicroTrimView;->access$000(Lcom/hfufo/widget/MicroTrimView;)I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView$2;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v0}, Lcom/hfufo/widget/MicroTrimView;->access$300(Lcom/hfufo/widget/MicroTrimView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/widget/MicroTrimView$2;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v1}, Lcom/hfufo/widget/MicroTrimView;->access$000(Lcom/hfufo/widget/MicroTrimView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 130
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/hfufo/widget/MicroTrimView$2;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-static {v0}, Lcom/hfufo/widget/MicroTrimView;->access$100(Lcom/hfufo/widget/MicroTrimView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hfufo/widget/MicroTrimView;->access$200(Landroid/content/Context;)V

    goto :goto_0
.end method
