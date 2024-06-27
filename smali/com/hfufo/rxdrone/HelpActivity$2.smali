.class Lcom/hfufo/rxdrone/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/HelpActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/HelpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HelpActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hfufo/rxdrone/HelpActivity$2;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 62
    if-nez p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity$2;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HelpActivity;->access$000(Lcom/hfufo/rxdrone/HelpActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity$2;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HelpActivity;->access$100(Lcom/hfufo/rxdrone/HelpActivity;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity$2;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HelpActivity;->access$200(Lcom/hfufo/rxdrone/HelpActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_1
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity$2;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HelpActivity;->access$000(Lcom/hfufo/rxdrone/HelpActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity$2;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-static {v0}, Lcom/hfufo/rxdrone/HelpActivity;->access$200(Lcom/hfufo/rxdrone/HelpActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
