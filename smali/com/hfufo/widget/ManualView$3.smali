.class Lcom/hfufo/widget/ManualView$3;
.super Ljava/lang/Object;
.source "ManualView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/widget/ManualView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/widget/ManualView;


# direct methods
.method constructor <init>(Lcom/hfufo/widget/ManualView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/widget/ManualView;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/hfufo/widget/ManualView$3;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/hfufo/widget/ManualView$3;->this$0:Lcom/hfufo/widget/ManualView;

    invoke-static {v0, p2}, Lcom/hfufo/widget/ManualView;->access$1000(Lcom/hfufo/widget/ManualView;Landroid/view/MotionEvent;)V

    .line 223
    const/4 v0, 0x1

    return v0
.end method
