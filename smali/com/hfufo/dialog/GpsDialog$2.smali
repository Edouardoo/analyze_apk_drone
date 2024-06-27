.class Lcom/hfufo/dialog/GpsDialog$2;
.super Ljava/lang/Object;
.source "GpsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/dialog/GpsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/dialog/GpsDialog;


# direct methods
.method constructor <init>(Lcom/hfufo/dialog/GpsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/dialog/GpsDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/hfufo/dialog/GpsDialog$2;->this$0:Lcom/hfufo/dialog/GpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hfufo/dialog/GpsDialog$2;->this$0:Lcom/hfufo/dialog/GpsDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hfufo/dialog/GpsDialog;->access$002(Lcom/hfufo/dialog/GpsDialog;Z)Z

    .line 68
    iget-object v0, p0, Lcom/hfufo/dialog/GpsDialog$2;->this$0:Lcom/hfufo/dialog/GpsDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/GpsDialog;->dismiss()V

    .line 69
    return-void
.end method
