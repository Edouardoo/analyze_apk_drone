.class public Lcom/videooperate/service/MusicPlayerService;
.super Landroid/app/Service;
.source "MusicPlayerService.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;


# instance fields
.field public mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/videooperate/service/MusicPlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/videooperate/service/MusicPlayerService;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/videooperate/service/MusicPlayerService;->playerRelease()V

    return-void
.end method

.method private initPlayerEvent()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 77
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/videooperate/service/MusicPlayerService$1;

    invoke-direct {v1, p0}, Lcom/videooperate/service/MusicPlayerService$1;-><init>(Lcom/videooperate/service/MusicPlayerService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 84
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/videooperate/service/MusicPlayerService$2;

    invoke-direct {v1, p0}, Lcom/videooperate/service/MusicPlayerService$2;-><init>(Lcom/videooperate/service/MusicPlayerService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 90
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/videooperate/service/MusicPlayerService$3;

    invoke-direct {v1, p0}, Lcom/videooperate/service/MusicPlayerService$3;-><init>(Lcom/videooperate/service/MusicPlayerService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 99
    return-void
.end method

.method private playerRelease()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 45
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public initPlayer()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 57
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    invoke-virtual {p0}, Lcom/videooperate/service/MusicPlayerService;->initPlayer()V

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/videooperate/service/MusicPlayerService;->stopForeground(Z)V

    .line 39
    invoke-direct {p0}, Lcom/videooperate/service/MusicPlayerService;->playerRelease()V

    .line 40
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    const-string v1, "CMD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/videooperate/bean/PlayCmd$Type;

    .line 156
    .local v0, "cmd":Lcom/videooperate/bean/PlayCmd$Type;
    sget-object v1, Lcom/videooperate/service/MusicPlayerService$4;->$SwitchMap$com$videooperate$bean$PlayCmd$Type:[I

    invoke-virtual {v0}, Lcom/videooperate/bean/PlayCmd$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 181
    .end local v0    # "cmd":Lcom/videooperate/bean/PlayCmd$Type;
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 158
    .restart local v0    # "cmd":Lcom/videooperate/bean/PlayCmd$Type;
    :pswitch_1
    invoke-virtual {p0}, Lcom/videooperate/service/MusicPlayerService;->initPlayer()V

    goto :goto_0

    .line 161
    :pswitch_2
    const-string v1, "DATA"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/videooperate/service/MusicPlayerService;->start(I)V

    goto :goto_0

    .line 164
    :pswitch_3
    const-string v1, "DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/videooperate/service/MusicPlayerService;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :pswitch_4
    invoke-virtual {p0}, Lcom/videooperate/service/MusicPlayerService;->pause()V

    goto :goto_0

    .line 170
    :pswitch_5
    invoke-direct {p0}, Lcom/videooperate/service/MusicPlayerService;->playerRelease()V

    goto :goto_0

    .line 173
    :pswitch_6
    invoke-virtual {p0}, Lcom/videooperate/service/MusicPlayerService;->stop()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method protected pause()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method protected replay(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/videooperate/service/MusicPlayerService;->start(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(I)V
    .locals 2
    .param p1, "path"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    if-gtz p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/videooperate/service/MusicPlayerService;->playerRelease()V

    .line 65
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    invoke-direct {p0}, Lcom/videooperate/service/MusicPlayerService;->initPlayerEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    invoke-direct {p0}, Lcom/videooperate/service/MusicPlayerService;->playerRelease()V

    goto :goto_0
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/videooperate/service/MusicPlayerService;->playerRelease()V

    .line 107
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 108
    iget-object v1, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 110
    invoke-direct {p0}, Lcom/videooperate/service/MusicPlayerService;->initPlayerEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    invoke-direct {p0}, Lcom/videooperate/service/MusicPlayerService;->playerRelease()V

    goto :goto_0
.end method

.method protected stop()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/videooperate/service/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0
.end method
