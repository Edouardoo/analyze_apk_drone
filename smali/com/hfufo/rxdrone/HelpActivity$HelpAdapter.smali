.class public Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HelpAdapter"
.end annotation


# instance fields
.field private image:[I

.field final synthetic this$0:Lcom/hfufo/rxdrone/HelpActivity;


# direct methods
.method public constructor <init>(Lcom/hfufo/rxdrone/HelpActivity;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/HelpActivity;
    .param p2, "image"    # [I

    .prologue
    .line 115
    iput-object p1, p0, Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;->image:[I

    .line 117
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;->image:[I

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 131
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HelpActivity$HelpAdapter;->image:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
