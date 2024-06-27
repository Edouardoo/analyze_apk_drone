.class Lcom/hfufo/rxdrone/GenericActivity$1;
.super Ljava/lang/Object;
.source "GenericActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hfufo/rxdrone/GenericActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/GenericActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/GenericActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/GenericActivity;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/hfufo/rxdrone/GenericActivity$1;->this$0:Lcom/hfufo/rxdrone/GenericActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 78
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/GenericActivity$1;->this$0:Lcom/hfufo/rxdrone/GenericActivity;

    iget-object v1, v1, Lcom/hfufo/rxdrone/GenericActivity;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/hfufo/rxdrone/GenericActivity$1;->this$0:Lcom/hfufo/rxdrone/GenericActivity;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/GenericActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0f0086

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/BaseFragment;

    .line 75
    .local v0, "fragment":Lcom/hfufo/bean/BaseFragment;
    iget-object v1, p0, Lcom/hfufo/rxdrone/GenericActivity$1;->this$0:Lcom/hfufo/rxdrone/GenericActivity;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/GenericActivity;->finish()V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onStateChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/GenericActivity$1;->onStateChanged(Ljava/lang/Integer;)V

    return-void
.end method
