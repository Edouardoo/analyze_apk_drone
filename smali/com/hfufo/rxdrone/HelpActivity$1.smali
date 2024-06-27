.class Lcom/hfufo/rxdrone/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 43
    iput-object p1, p0, Lcom/hfufo/rxdrone/HelpActivity$1;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hfufo/rxdrone/HelpActivity$1;->this$0:Lcom/hfufo/rxdrone/HelpActivity;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/HelpActivity;->finish()V

    .line 47
    return-void
.end method
