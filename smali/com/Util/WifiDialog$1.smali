.class Lcom/Util/WifiDialog$1;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Util/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Util/WifiDialog;


# direct methods
.method constructor <init>(Lcom/Util/WifiDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/Util/WifiDialog;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/Util/WifiDialog$1;->this$0:Lcom/Util/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/Util/WifiDialog$1;->this$0:Lcom/Util/WifiDialog;

    invoke-virtual {v0}, Lcom/Util/WifiDialog;->getWifiSSID()V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/Util/WifiDialog$1;->this$0:Lcom/Util/WifiDialog;

    invoke-virtual {v0}, Lcom/Util/WifiDialog;->dismiss()V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x7f0f025f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
