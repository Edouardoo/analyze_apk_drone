.class Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "HDManualCtrlActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;

.field final synthetic val$target:Lcom/hfufo/rxdrone/HDManualCtrlActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;

    .prologue
    .line 496
    .local p0, "this":Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;, "Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;"
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;->this$0:Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder;

    iput-object p2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;->val$target:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 500
    .local p0, "this":Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;, "Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;"
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$$ViewBinder$38;->val$target:Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    invoke-virtual {v0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onClick(Landroid/view/View;)V

    .line 501
    return-void
.end method
