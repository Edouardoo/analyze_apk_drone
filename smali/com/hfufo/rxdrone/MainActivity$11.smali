.class Lcom/hfufo/rxdrone/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/hfufo/dialog/GpsDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/MainActivity;->showGPSDialog()V
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
    .line 2005
    iput-object p1, p0, Lcom/hfufo/rxdrone/MainActivity$11;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_dialog_listener(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 2009
    if-eqz p1, :cond_0

    .line 2011
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2013
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/hfufo/rxdrone/MainActivity$11;->this$0:Lcom/hfufo/rxdrone/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/hfufo/rxdrone/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2017
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
