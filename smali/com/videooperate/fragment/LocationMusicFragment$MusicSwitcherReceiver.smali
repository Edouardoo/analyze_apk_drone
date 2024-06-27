.class public Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationMusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/videooperate/fragment/LocationMusicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicSwitcherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/videooperate/fragment/LocationMusicFragment;


# direct methods
.method public constructor <init>(Lcom/videooperate/fragment/LocationMusicFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/videooperate/fragment/LocationMusicFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 110
    if-nez p2, :cond_0

    .line 150
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    const-string v2, "SystemMusic"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/videooperate/fragment/LocationMusicFragment;->access$002(Lcom/videooperate/fragment/LocationMusicFragment;Z)Z

    .line 116
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    invoke-virtual {v1}, Lcom/videooperate/fragment/LocationMusicFragment;->initData()V

    .line 117
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    invoke-static {v1}, Lcom/videooperate/fragment/LocationMusicFragment;->access$000(Lcom/videooperate/fragment/LocationMusicFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v1, v1, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, v2, Lcom/videooperate/fragment/LocationMusicFragment;->listSystem:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/videooperate/adapter/LocationMusicAdapter;->setList(Ljava/util/List;)V

    .line 119
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, v2, Lcom/videooperate/fragment/LocationMusicFragment;->listSystem:Ljava/util/List;

    iput-object v2, v1, Lcom/videooperate/fragment/LocationMusicFragment;->listSelect:Ljava/util/List;

    goto :goto_0

    .line 113
    :sswitch_0
    const-string v5, "com.RxDrone.REFRESHDATA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v5, "com.RxDrone.CHANGE_LIST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v5, "com.RxDrone.MUSCIPLAY_BROADCAST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v1, v1, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, v2, Lcom/videooperate/fragment/LocationMusicFragment;->listLocal:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/videooperate/adapter/LocationMusicAdapter;->setList(Ljava/util/List;)V

    .line 123
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, v2, Lcom/videooperate/fragment/LocationMusicFragment;->listLocal:Ljava/util/List;

    iput-object v2, v1, Lcom/videooperate/fragment/LocationMusicFragment;->listSelect:Ljava/util/List;

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    const-string v2, "SystemMusic"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/videooperate/fragment/LocationMusicFragment;->access$002(Lcom/videooperate/fragment/LocationMusicFragment;Z)Z

    .line 129
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    invoke-static {v1}, Lcom/videooperate/fragment/LocationMusicFragment;->access$000(Lcom/videooperate/fragment/LocationMusicFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v1, v1, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, v2, Lcom/videooperate/fragment/LocationMusicFragment;->listSystem:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/videooperate/adapter/LocationMusicAdapter;->setList(Ljava/util/List;)V

    .line 131
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, v2, Lcom/videooperate/fragment/LocationMusicFragment;->listSystem:Ljava/util/List;

    iput-object v2, v1, Lcom/videooperate/fragment/LocationMusicFragment;->listSelect:Ljava/util/List;

    goto/16 :goto_0

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v1, v1, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, v2, Lcom/videooperate/fragment/LocationMusicFragment;->listLocal:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/videooperate/adapter/LocationMusicAdapter;->setList(Ljava/util/List;)V

    .line 135
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v2, v2, Lcom/videooperate/fragment/LocationMusicFragment;->listLocal:Ljava/util/List;

    iput-object v2, v1, Lcom/videooperate/fragment/LocationMusicFragment;->listSelect:Ljava/util/List;

    goto/16 :goto_0

    .line 139
    :pswitch_2
    const-string v1, "CMD"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/videooperate/bean/PlayCmd$Type;

    .line 140
    .local v0, "cmd":Lcom/videooperate/bean/PlayCmd$Type;
    sget-object v1, Lcom/videooperate/fragment/LocationMusicFragment$2;->$SwitchMap$com$videooperate$bean$PlayCmd$Type:[I

    invoke-virtual {v0}, Lcom/videooperate/bean/PlayCmd$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 142
    :pswitch_3
    iget-object v1, p0, Lcom/videooperate/fragment/LocationMusicFragment$MusicSwitcherReceiver;->this$0:Lcom/videooperate/fragment/LocationMusicFragment;

    iget-object v1, v1, Lcom/videooperate/fragment/LocationMusicFragment;->mAdapter:Lcom/videooperate/adapter/LocationMusicAdapter;

    invoke-virtual {v1, v2}, Lcom/videooperate/adapter/LocationMusicAdapter;->setSelectedState(Z)V

    goto/16 :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        -0x7b150bbc -> :sswitch_1
        -0x6ce082a4 -> :sswitch_0
        0x5666be5e -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 140
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
