.class Lcom/hfufo/widget/MicroTrimView$6;
.super Ljava/lang/Object;
.source "MicroTrimView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 203
    iput-object p1, p0, Lcom/hfufo/widget/MicroTrimView$6;->this$0:Lcom/hfufo/widget/MicroTrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method
