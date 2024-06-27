.class Lcom/hfufo/rxdrone/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/MainActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/MainActivity;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$2;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 595
    iget-object v0, p0, Lcom/hfufo/rxdrone/MainActivity$2;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-static {v0, p2}, Lcom/hfufo/rxdrone/MainActivity;->access$1002(Lcom/hfufo/rxdrone/MainActivity;Z)Z

    .line 596
    return-void
.end method
