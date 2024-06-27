.class Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/fragment/LocationVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/fragment/LocationVideoFragment;


# direct methods
.method private constructor <init>(Lcom/videooperate/fragment/LocationVideoFragment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;->this$0:Lcom/videooperate/fragment/LocationVideoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/videooperate/fragment/LocationVideoFragment;Lcom/videooperate/fragment/LocationVideoFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/videooperate/fragment/LocationVideoFragment;
    .param p2, "x1"    # Lcom/videooperate/fragment/LocationVideoFragment$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;-><init>(Lcom/videooperate/fragment/LocationVideoFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    if-nez p2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;->this$0:Lcom/videooperate/fragment/LocationVideoFragment;

    iget-object v0, v0, Lcom/videooperate/fragment/LocationVideoFragment;->mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/videooperate/adapter/AlbumListAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 169
    :sswitch_0
    const-string v4, "com.RxDrone.SCAN_SUCCESS_BROADCAST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "com.RxDrone.SWITCH_STATUS_BROADCAST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "com.RxDrone.SWITCH_CANCEL_BROADCAST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "com.RxDrone.SWITCH_CHANGE_BROADCAST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;->this$0:Lcom/videooperate/fragment/LocationVideoFragment;

    iget-object v0, v0, Lcom/videooperate/fragment/LocationVideoFragment;->mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

    invoke-virtual {v0, v2}, Lcom/videooperate/adapter/AlbumListAdapter;->setSelectSwitchStatus(Z)V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;->this$0:Lcom/videooperate/fragment/LocationVideoFragment;

    iget-object v0, v0, Lcom/videooperate/fragment/LocationVideoFragment;->mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/videooperate/adapter/AlbumListAdapter;->setSelectSwitchStatus(Z)V

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v0, p0, Lcom/videooperate/fragment/LocationVideoFragment$SelectStatusReceiver;->this$0:Lcom/videooperate/fragment/LocationVideoFragment;

    iget-object v0, v0, Lcom/videooperate/fragment/LocationVideoFragment;->mAdapter:Lcom/videooperate/adapter/AlbumListAdapter;

    invoke-virtual {v0}, Lcom/videooperate/adapter/AlbumListAdapter;->changeNotify()V

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e69898c -> :sswitch_3
        0x8484836 -> :sswitch_1
        0x58161cbe -> :sswitch_2
        0x5e83752c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
